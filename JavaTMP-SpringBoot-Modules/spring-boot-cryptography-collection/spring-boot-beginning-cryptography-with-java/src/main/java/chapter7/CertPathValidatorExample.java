package chapter7;

import org.bouncycastle.jce.provider.BouncyCastleProvider;

import java.math.BigInteger;
import java.security.KeyPair;
import java.security.Security;
import java.security.cert.*;
import java.util.*;

//import javax.security.auth.x500.X500Principal;

/**
 * Basic example of certificate path validation
 */
public class CertPathValidatorExample {
    static {
        // https://stackoverflow.com/questions/40975510/spring-boot-and-jca-providers
        if (Security.getProvider(BouncyCastleProvider.PROVIDER_NAME) == null) {
            Security.addProvider(new BouncyCastleProvider());
        }
    }
    public static void main(String[] args) throws Exception {
        // create certificates and CRLs
        KeyPair rootPair = Utils.generateRSAKeyPair();
        KeyPair interPair = Utils.generateRSAKeyPair();
        KeyPair endPair = Utils.generateRSAKeyPair();

        X509Certificate rootCert = Utils.generateRootCert(rootPair);
        X509Certificate interCert = Utils.generateIntermediateCert(interPair.getPublic(), rootPair.getPrivate(), rootCert);
        X509Certificate endCert = Utils.generateEndEntityCert(endPair.getPublic(), interPair.getPrivate(), interCert);

        BigInteger revokedSerialNumber = BigInteger.valueOf(2);
        X509CRL rootCRL = X509CRLExample.createCRL(rootCert, rootPair.getPrivate(), revokedSerialNumber);
        X509CRL interCRL = X509CRLExample.createCRL(interCert, interPair.getPrivate(), revokedSerialNumber);

        // create CertStore to support validation
        List<Object> list = new ArrayList<>();

        list.add(rootCert);
        list.add(interCert);
        list.add(endCert);
        list.add(rootCRL);
        list.add(interCRL);

        CollectionCertStoreParameters params =
                new CollectionCertStoreParameters(list);
        CertStore store = CertStore.getInstance("Collection",
                params, "BC");

        // create certificate path
        CertificateFactory fact = CertificateFactory.getInstance("X.509",
                "BC");

        List<Certificate> certChain = new ArrayList<>();
        certChain.add(endCert);
        certChain.add(interCert);

        CertPath certPath = fact.generateCertPath(certChain);
        Set<TrustAnchor> trust = Collections.singleton(
                new TrustAnchor(rootCert, null));

        // perform validation
        CertPathValidator validator = CertPathValidator
                .getInstance("PKIX", "BC");
        PKIXParameters param = new PKIXParameters(trust);

        param.addCertStore(store);
        param.setDate(new Date());

        X509CertSelector selector = new X509CertSelector();
//        selector.setSubject(new X500Principal("CN=No Match"));
        param.setTargetCertConstraints(selector);

        try {
            CertPathValidatorResult result = validator.validate(certPath, param);
            System.out.println("certificate path validated");
        } catch (CertPathValidatorException e) {
            System.out.println("validation failed on certificate number " + e.getIndex() + ", details: " + e.getMessage());
        }
    }
}

