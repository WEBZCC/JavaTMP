package chapter5;

import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.util.ASN1Dump;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

import java.security.*;
import java.security.spec.X509EncodedKeySpec;

/**
 * Simple example showing use of X509EncodedKeySpec
 */
public class X509EncodedKeySpecExample {
    static {
        // https://stackoverflow.com/questions/40975510/spring-boot-and-jca-providers
        if(Security.getProvider(BouncyCastleProvider.PROVIDER_NAME) == null) {
            Security.addProvider(new BouncyCastleProvider());
        }
    }
    public static void main(String[] args) throws Exception {
        // create the keys
        KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA", "BC");

        generator.initialize(128, Utils.createFixedRandom());

        KeyPair pair = generator.generateKeyPair();

        // dump public key
        ASN1InputStream aIn = new ASN1InputStream(pair.getPublic().getEncoded());
        SubjectPublicKeyInfo info = SubjectPublicKeyInfo.getInstance(aIn.readObject());

        System.out.println(ASN1Dump.dumpAsString(info));
        System.out.println(ASN1Dump.dumpAsString(info.getPublicKey()));

        // create from specification
        X509EncodedKeySpec x509Spec = new X509EncodedKeySpec(pair.getPublic().getEncoded());
        KeyFactory keyFact = KeyFactory.getInstance("RSA", "BC");
        PublicKey pubKey = keyFact.generatePublic(x509Spec);

        if (pubKey.equals(pair.getPublic())) {
            System.out.println("key recovery successful");
        } else {
            System.out.println("key recovery failed");
        }
    }
}
