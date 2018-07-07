/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javatmp.user;

import com.javatmp.domain.User;
import com.javatmp.db.JpaDaoHelper;
import com.javatmp.mvc.MvcHelper;
import com.javatmp.service.UserService;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceException;

/**
 *
 * @author JavaTMP
 */
public class TestDeleteUser {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        JpaDaoHelper jpaDaoHelper;
        UserService userService;
        jpaDaoHelper = new JpaDaoHelper("AppPU");
        userService = new UserService(jpaDaoHelper);
        try {
            User user = new User(1L);
//            user = userService.readCompleteUserById(user);
            int status = 0;
            System.out.println("User to be Deleted [" + MvcHelper.deepToString(user) + "]");
            status = userService.deleteUser(user);

            System.out.println("status [" + status + "]");
//        } catch (NoResultException e) {
//            System.out.println("e [" + e.getMessage() + "]");
        } catch (PersistenceException e) {
            Throwable t = e;
            while (t != null) {
                System.out.println("type [" + t.getClass().getName() + "]");
                System.out.println("t [" + t.getMessage() + "]");
                t = t.getCause();
            }
        }

    }

}