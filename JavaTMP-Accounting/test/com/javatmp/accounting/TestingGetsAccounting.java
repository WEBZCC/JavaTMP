/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javatmp.accounting;

import com.javatmp.module.accounting.Account;
import com.javatmp.module.accounting.AccountService;
import com.javatmp.module.accounting.Costcenter;
import com.javatmp.module.accounting.Module;
import com.javatmp.mvc.MvcHelper;
import com.javatmp.util.JpaDaoHelper;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

/**
 *
 * @author JavaTMP
 */
public class TestingGetsAccounting {

    public static void main(String[] args) throws SQLException, ParseException {
        JpaDaoHelper jpaDaoHelper;
        jpaDaoHelper = new JpaDaoHelper("AppPU");
        AccountService accountService = new AccountService(jpaDaoHelper);

        List<Account> accounts = accountService.getAllAccountsList();

        for (Account acct : accounts) {
            System.out.println(MvcHelper.toString(acct));
        }

        List<Module> modules = accountService.getModules();

        for (Module t : modules) {
            System.out.println(MvcHelper.toString(t));
        }

        List<Account> leafs = accountService.getLeafAccounts();
        for (Account t : leafs) {
            System.out.println(MvcHelper.toString(t));
        }

        List<Account> coa = accountService.getChartOfAccounts();

        for (Account acct : coa) {
            System.out.println(MvcHelper.toString(acct));
        }

        List<Costcenter> costcenters = accountService.getAllCostCenterList();

        for (Costcenter costcenter : costcenters) {
            System.out.println(MvcHelper.toString(costcenter));
        }

    }

}