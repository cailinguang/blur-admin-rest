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
@JsonTypeName("applicable")
public class ApplicableProperty
  extends EnumProperty
{
  public static final String TYPE = "applicable";
  
  public static enum Applicable
  {
    NOT_EVALUATED,  APPLICABLE,  NOT_APPLICABLE;
    
    private Applicable() {}
  }
  
  public static final List<EnumValue> values = new ArrayList();
  private Applicable applicable;
  
  static
  {
    values.add(new EnumValue("Unevaluated", Applicable.NOT_EVALUATED.toString()));
    values.add(new EnumValue("Applicable", Applicable.APPLICABLE.toString()));
    values.add(new EnumValue("Inapplicable", Applicable.NOT_APPLICABLE.toString()));
  }
  
  @JsonCreator
  public ApplicableProperty(@JsonProperty("id") String id, @JsonProperty("name") String name, @JsonProperty("readonly") boolean readonly)
  {
    super(id, name, readonly);
    this.applicable = Applicable.NOT_EVALUATED;
  }
  
  public String getValue()
  {
    return this.applicable.toString();
  }
  
  public void setValue(String value)
  {
    this.applicable = Applicable.valueOf(value);
  }
  
  public String getType()
  {
    return "applicable";
  }
  
  public List<EnumValue> getEnumValues()
  {
    return Collections.unmodifiableList(values);
  }
  
  public static ApplicableProperty getProperty(Properties props, String name)
    throws ServiceException
  {
    Property prop = props.getProperty(name);
    if ((prop instanceof ApplicableProperty)) {
      return (ApplicableProperty)prop;
    }
    throw new ServiceException(prop + " is not a ApplicableProperty.");
  }
  
  @JsonIgnore
  public Applicable getApplicable()
  {
    return this.applicable;
  }
  
  @JsonIgnore
  public void setApplicable(Applicable applicable)
  {
    this.applicable = applicable;
  }
  
}
