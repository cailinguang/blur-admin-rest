package com.company.project.model.property;

import com.company.project.core.ServiceException;

import javax.persistence.Transient;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class Properties {
    @Transient
    private Map<String, Property> properties = new HashMap();

    public void addProperty(Property property) {
        this.properties.put(property.getName(), property);
    }

    public Map<String, Property> getProperties() {
        return Collections.unmodifiableMap(this.properties);
    }


    public Property getProperty(String propertyName)
            throws ServiceException {
        if (this.properties.containsKey(propertyName)) {
            return (Property) this.properties.get(propertyName);
        }
        throw new ServiceException("Does not have property: " + propertyName);
    }

    public Property getPropertyOrNull(String propertyName)
            throws ServiceException {
        if (this.properties.containsKey(propertyName)) {
            return (Property) this.properties.get(propertyName);
        }
        return null;
    }


    public void removeProperty(String name) {
        this.properties.remove(name);
    }
}
