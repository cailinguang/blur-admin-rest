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
@JsonTypeName("level_approved")
public class LevelApprovedProperty
  extends EnumProperty
{
  public static final String TYPE = "level_approved";
  
  public static enum LevelApproved
  {
    YES,  NO;
    
    private LevelApproved() {}
  }
  
  public static final List<EnumValue> values = new ArrayList();
  private LevelApproved levelApproved;
  
  static
  {
    values.add(new EnumValue("Yes", LevelApproved.YES.toString()));
    values.add(new EnumValue("No", LevelApproved.NO.toString()));
  }
  
  @JsonCreator
  public LevelApprovedProperty(@JsonProperty("id") String id, @JsonProperty("name") String name, @JsonProperty("readonly") boolean readonly)
  {
    super(id, name, readonly);
    this.levelApproved = LevelApproved.NO;
  }
  
  public String getValue()
  {
    return this.levelApproved.toString();
  }
  
  public void setValue(String value)
  {
    this.levelApproved = LevelApproved.valueOf(value);
  }
  
  public String getType()
  {
    return "level_approved";
  }
  
  public List<EnumValue> getEnumValues()
  {
    return Collections.unmodifiableList(values);
  }
  
  public static LevelApprovedProperty getProperty(Properties props, String name)
    throws ServiceException
  {
    Property prop = props.getProperty(name);
    if ((prop instanceof LevelApprovedProperty)) {
      return (LevelApprovedProperty)prop;
    }
    throw new ServiceException(prop + " is not a LevelApprovedProperty.");
  }
  
  @JsonIgnore
  public LevelApproved getLevelApproved()
  {
    return this.levelApproved;
  }
  
  @JsonIgnore
  public void setLevelApproved(LevelApproved levelApproved)
  {
    this.levelApproved = levelApproved;
  }
  
}
