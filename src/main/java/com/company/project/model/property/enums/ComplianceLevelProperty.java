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
@JsonTypeName("compliance_level")
public class ComplianceLevelProperty
  extends EnumProperty
{
  public static final String TYPE = "compliance_level";
  
  public static enum ComplianceLevel
  {
    COMPLIANT,  PARTIAL_COMPLIANT,  NOT_COMPLIANT,  NOT_APPLICABLE,  OTHER;
    
    private ComplianceLevel() {}
  }
  
  public static final List<EnumValue> values = new ArrayList();
  private ComplianceLevel complianceLevel;
  
  static
  {
    values.add(new EnumValue("Compliant", ComplianceLevel.COMPLIANT.toString()));
    values.add(new EnumValue("Partial Compliant", ComplianceLevel.PARTIAL_COMPLIANT.toString()));
    values.add(new EnumValue("Non Compliant", ComplianceLevel.NOT_COMPLIANT.toString()));
    values.add(new EnumValue("Inapplicable", ComplianceLevel.NOT_APPLICABLE.toString()));
    values.add(new EnumValue("Other", ComplianceLevel.OTHER.toString()));
  }
  
  @JsonCreator
  public ComplianceLevelProperty(@JsonProperty("id") String id, @JsonProperty("name") String name, @JsonProperty("readonly") boolean readonly)
  {
    super(id, name, readonly);
    setComplianceLevel(ComplianceLevel.NOT_APPLICABLE);
  }
  
  public String getValue()
  {
    return getComplianceLevel().toString();
  }
  
  public void setValue(String value)
  {
    setComplianceLevel(ComplianceLevel.valueOf(value));
  }
  
  public String getType()
  {
    return "compliance_level";
  }
  
  public List<EnumValue> getEnumValues()
  {
    return Collections.unmodifiableList(values);
  }
  
  public static ComplianceLevelProperty getProperty(Properties props, String name)
    throws ServiceException
  {
    Property prop = props.getProperty(name);
    if ((prop instanceof ComplianceLevelProperty)) {
      return (ComplianceLevelProperty)prop;
    }
    throw new ServiceException(prop + " is not a ComplianceLevelProperty.");
  }
  
  @JsonIgnore
  public ComplianceLevel getComplianceLevel()
  {
    return this.complianceLevel;
  }
  
  @JsonIgnore
  public void setComplianceLevel(ComplianceLevel complianceLevel)
  {
    this.complianceLevel = complianceLevel;
  }
  
}
