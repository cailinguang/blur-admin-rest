package com.company.project.model.property.enums;

import com.company.project.core.ServiceException;
import com.company.project.model.property.EnumProperty;
import com.company.project.model.property.EnumValue;
import com.company.project.model.property.Properties;
import com.company.project.model.property.Property;
import com.fasterxml.jackson.annotation.*;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@JsonIgnoreProperties(value={"enumValues", "type", "searchUri"}, allowGetters=true, allowSetters=false)
@JsonTypeName("severity_level")
public class SeverityLevelProperty
  extends EnumProperty
{
  public static final String TYPE = "severity_level";
  
  public static enum SeverityLevel
  {
    HIGH,  MEDIUM,  LOW,  SL,  NONE;
    
    private SeverityLevel() {}
  }
  
  public static final List<EnumValue> values = new ArrayList();
  private SeverityLevel severityLevel;
  
  static
  {
    values.add(new EnumValue("High", SeverityLevel.HIGH.toString()));
    values.add(new EnumValue("Medium", SeverityLevel.MEDIUM.toString()));
    values.add(new EnumValue("Low", SeverityLevel.LOW.toString()));
    values.add(new EnumValue("SL", SeverityLevel.SL.toString()));
    values.add(new EnumValue("None", SeverityLevel.NONE.toString()));
  }
  
  @JsonCreator
  public SeverityLevelProperty(@JsonProperty("id") String id, @JsonProperty("name") String name, @JsonProperty("readonly") boolean readonly)
  {
    super(id, name, readonly);
    this.severityLevel = SeverityLevel.SL;
  }
  
  public String getValue()
  {
    return getSeverityLevel().toString();
  }
  
  public void setValue(String value)
  {
    setSeverityLevel(SeverityLevel.valueOf(value));
  }
  
  public String getType()
  {
    return "severity_level";
  }
  
  public List<EnumValue> getEnumValues()
  {
    return Collections.unmodifiableList(values);
  }
  
  public static SeverityLevelProperty getProperty(Properties props, String name)
    throws ServiceException
  {
    Property prop = props.getProperty(name);
    if ((prop instanceof SeverityLevelProperty)) {
      return (SeverityLevelProperty)prop;
    }
    throw new ServiceException(prop + " is not a EnumProperty.");
  }
  
  @JsonIgnore
  public SeverityLevel getSeverityLevel()
  {
    return this.severityLevel;
  }
  
  @JsonIgnore
  public void setSeverityLevel(SeverityLevel severityLevel)
  {
    this.severityLevel = severityLevel;
  }
}
