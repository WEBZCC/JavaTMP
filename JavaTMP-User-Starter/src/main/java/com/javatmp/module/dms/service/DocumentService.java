package com.javatmp.module.dms.service;

import com.javatmp.module.dms.entity.Document;
import com.javatmp.fw.domain.table.DataTableRequest;
import com.javatmp.fw.domain.table.DataTableResults;
import com.javatmp.util.JpaDaoHelper;
import java.text.ParseException;

public class DocumentService {

    private final JpaDaoHelper jpaDaoHelper;

    public DocumentService(JpaDaoHelper jpaDaoHelper) {
        this.jpaDaoHelper = jpaDaoHelper;
    }

    public Document readDocumentById(Document document) {
        return this.jpaDaoHelper.read(Document.class, document.getDocumentId());
    }

    public Document createNewDocument(Document document) {
        return this.jpaDaoHelper.create(document);
    }

    public DataTableResults<Document> getAllDocuments(DataTableRequest<Document> page) throws ParseException {

        page.setClassType(Document.class);
        page.setSelects(new String[]{"documentId", "documentName", "documentSize",
            "contentType", "creationDate", "randomHash", "documentType", "parentDocumentId", "status", "createdByUserId"});
        DataTableResults<Document> results = jpaDaoHelper.retrievePageRequestDetails(page);
        return results;
    }
}