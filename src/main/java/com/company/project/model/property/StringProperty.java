package com.company.project.model.property;

import com.company.project.core.ServiceException;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonTypeName;

@JsonTypeName("string")
public class StringProperty
  extends Property
{
  public static final String TYPE = "string";
  private String value;
  
  @JsonCreator
  public StringProperty(@JsonProperty("id") String id, @JsonProperty("name") String name, @JsonProperty("readonly") boolean readonly)
  {
    super(id, name, readonly);
  }
  
  public void setValue(String value)
  {
    this.value = value;
  }
  
  public String getValue()
  {
    return this.value;
  }
  

  
  public static StringProperty getProperty(Properties props, String name)
    throws ServiceException
  {
    Property prop = props.getProperty(name);
    if ((prop instanceof StringProperty)) {
      return (StringProperty)prop;
    }
    throw new ServiceException(prop + " is not a StringProperty.");
  }
  
  public static StringProperty getPropertyOrNull(Properties props, String name)
    throws ServiceException
  {
    Property prop = props.getPropertyOrNull(name);
    if (prop == null) {
      return null;
    }
    if ((prop instanceof StringProperty)) {
      return (StringProperty)prop;
    }
    throw new ServiceException(prop + " is not a StringProperty.");
  }
  
  public String getType()
  {
    return "string";
  }
  
}
