package com.javatmp.module.content;

import com.javatmp.mvc.MvcHelper;
import com.javatmp.mvc.domain.ResponseMessage;
import com.javatmp.util.Constants;
import com.javatmp.util.ServicesFactory;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cms/UpdateContentController")
public class UpdateContentController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ResponseMessage responseMessage = new ResponseMessage();
        ServicesFactory sf = (ServicesFactory) request.getServletContext().getAttribute(Constants.SERVICES_FACTORY_ATTRIBUTE_NAME);
        ContentService cs = sf.getContentService();
        Content contentToBeUpdated = new Content();

        try {
            MvcHelper.populateBeanByRequestParameters(request, contentToBeUpdated);
            if (cs.updateContent(contentToBeUpdated) == 1) {
                // content updated successfully:
                responseMessage.setOverAllStatus(true);
                responseMessage.setMessage("Content Updated successfully");
            } else {
                // content does not updated successfully:
                responseMessage.setOverAllStatus(false);
                responseMessage.setMessage("Content NOT Updated");
            }

            MvcHelper.sendMessageAsJson(response, responseMessage);

        } catch (IllegalAccessException ex) {
            Logger.getLogger(UpdateContentController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(UpdateContentController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}