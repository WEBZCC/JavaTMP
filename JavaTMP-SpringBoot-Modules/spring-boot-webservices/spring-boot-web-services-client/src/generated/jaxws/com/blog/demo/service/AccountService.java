
package com.blog.demo.service;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.bind.annotation.XmlSeeAlso;
import com.blog.demo.webservices.accountservice.AccountDetailsRequest;
import com.blog.demo.webservices.accountservice.AccountDetailsResponse;
import com.blog.demo.webservices.accountservice.ObjectFactory;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.4-b01-
 * Generated source version: 2.1
 * 
 */
@WebService(name = "AccountService", targetNamespace = "http://www.briansdevblog.com/Accounts/")
@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
@XmlSeeAlso({
    ObjectFactory.class
})
public interface AccountService {


    /**
     * 
     * @param parameters
     * @return
     *     returns com.blog.demo.webservices.accountservice.AccountDetailsResponse
     */
    @WebMethod(operationName = "GetAccountDetails", action = "http://www.briansjavablog.com/Accounts/GetAccountDetails")
    @WebResult(name = "AccountDetailsResponse", targetNamespace = "http://com/blog/demo/webservices/accountservice", partName = "parameters")
    public AccountDetailsResponse getAccountDetails(
        @WebParam(name = "AccountDetailsRequest", targetNamespace = "http://com/blog/demo/webservices/accountservice", partName = "parameters")
        AccountDetailsRequest parameters);

}