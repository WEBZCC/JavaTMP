package com.javatmp.module.country;

import com.javatmp.util.JpaDaoHelper;
import com.javatmp.module.country.Country;
import com.javatmp.module.language.Languagetranslation;
import com.javatmp.module.user.entity.User;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

public class CountryService {

    private final JpaDaoHelper jpaDaoHelper;
    private Map<String, List<Countrytranslation>> countries;

    public CountryService(JpaDaoHelper jpaDaoHelper) {
        this.jpaDaoHelper = jpaDaoHelper;
    }

//    public List<Country> getCountries(User localeUser) {
//        if (this.countries == null || this.countries.isEmpty()) {
//            synchronized (this) {
//                // Check if still empty and not populated before:
//                if (this.countries == null || this.countries.isEmpty()) {
//                    this.countries = this.jpaDaoHelper.findAll(Country.class);
//                }
//            }
//        }
//        return countries;
//    }
    public List<Countrytranslation> getCountries(User localeUser) {
        if (this.countries == null || this.countries.isEmpty()) {
            synchronized (this) {
                // Check if still empty and not populated before:
                if (this.countries == null || this.countries.isEmpty()) {
                    this.countries = new HashMap<>();
                    List<Countrytranslation> all = this.getCountries();
                    all.forEach((row) -> {
                        if (this.countries.containsKey(row.getCountrytranslationPK().getLangId()) == false) {
                            this.countries.put(row.getCountrytranslationPK().getLangId(), new LinkedList<>());
                        }
                        this.countries.get(row.getCountrytranslationPK().getLangId()).add(row);
                    });
                }
            }
        }
        return this.countries.get(localeUser.getLang());
    }

    public List<Countrytranslation> getCountries() {

        EntityManager em = null;
        List<Countrytranslation> retList = null;
        try {
            em = this.jpaDaoHelper.getEntityManagerFactory().createEntityManager();
            TypedQuery<Countrytranslation> query = em.createQuery(
                    "select "
                    + "new com.javatmp.module.country.Countrytranslation("
                    + "l.countryId, lt1.countrytranslationPK.langId, coalesce(lt1.countryName, lt2.countryName)"
                    + ") from Country l "
                    + "left outer join Countrytranslation lt1 on lt1.countrytranslationPK.countryId = l.countryId "
                    + "left outer join Countrytranslation lt2 on (lt2.countrytranslationPK.countryId = l.countryId) "
                    + "join Language deflan on deflan.languageId=lt2.countrytranslationPK.langId and deflan.isDefaultLang = 1 "
                    + "", Countrytranslation.class
            );
            retList = query.getResultList();
            return retList;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
}