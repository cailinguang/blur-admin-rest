package com.company.project.model.property;

import com.company.project.core.ServiceException;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonTypeName;

@JsonTypeName("float")
public class FloatProperty
  extends Property
{
  public static final String TYPE = "float";
  private double value;
  
  @JsonCreator
  public FloatProperty(@JsonProperty("id") String id, @JsonProperty("name") String name, @JsonProperty("readonly") boolean readonly)
  {
    super(id, name, readonly);
  }
  
  public double getValue()
  {
    return this.value;
  }
  
  public void setValue(double value)
  {
    this.value = value;
  }
  

  public static FloatProperty getProperty(Properties props, String name)
    throws ServiceException
  {
    Property prop = props.getProperty(name);
    if ((prop instanceof FloatProperty)) {
      return (FloatProperty)prop;
    }
    throw new ServiceException(prop + " is not a FloatProperty.");
  }
  
  public String getType()
  {
    return "float";
  }
  

  public static FloatProperty getPropertyOrNull(Properties props, String name)
    throws ServiceException
  {
    Property prop = props.getPropertyOrNull(name);
    if (prop == null) {
      return null;
    }
    if ((prop instanceof FloatProperty)) {
      return (FloatProperty)prop;
    }
    throw new ServiceException(prop + " is not a FloatProperty.");
  }
}
