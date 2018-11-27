package com.javatmp.module.accounting;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.javatmp.mvc.MvcHelper;
import com.javatmp.mvc.domain.ResponseMessage;
import com.javatmp.util.Constants;
import com.javatmp.util.ServicesFactory;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/accounting/chartOfAccounts")
public class ChartOfAccountsController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("ChartOfAccountsController");
        ServicesFactory sf = (ServicesFactory) request.getServletContext().getAttribute(Constants.SERVICES_FACTORY_ATTRIBUTE_NAME);
        AccountService accountService = sf.getAccountService();
        List<Account> chartOfAccounts = accountService.getChartOfAccounts();

        ResponseMessage responseMessage = new ResponseMessage();
        responseMessage.setOverAllStatus(true);
        responseMessage.setData(chartOfAccounts);
        MvcHelper.sendMessageAsJson(response, responseMessage);

    }

}