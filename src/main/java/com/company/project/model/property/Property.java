package com.company.project.model.property;

import com.company.project.model.property.enums.ApplicableProperty;
import com.company.project.model.property.enums.ComplianceLevelProperty;
import com.company.project.model.property.enums.LevelApprovedProperty;
import com.company.project.model.property.enums.SeverityLevelProperty;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;

@JsonTypeInfo(use= JsonTypeInfo.Id.NAME, include= JsonTypeInfo.As.PROPERTY, property="type")
@JsonSubTypes({@com.fasterxml.jackson.annotation.JsonSubTypes.Type(value=StringProperty.class, name="string"),
        @com.fasterxml.jackson.annotation.JsonSubTypes.Type(value=FloatProperty.class, name="float"),
        @com.fasterxml.jackson.annotation.JsonSubTypes.Type(value=ComplianceLevelProperty.class, name="compliance_level"),
        @com.fasterxml.jackson.annotation.JsonSubTypes.Type(value=LevelApprovedProperty.class, name="level_approved"),
        @com.fasterxml.jackson.annotation.JsonSubTypes.Type(value=SeverityLevelProperty.class, name="severity_level"),
        @com.fasterxml.jackson.annotation.JsonSubTypes.Type(value=ApplicableProperty.class, name="applicable")})
@JsonIgnoreProperties(ignoreUnknown=true)
public abstract class Property
{
  protected final String name;
  protected final String id;
  protected final boolean readonly;
  
  public Property(String id, String name, boolean readonly)
  {
    this.id = id;
    this.name = name;
    this.readonly = readonly;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  @JsonSerialize(using=ToStringSerializer.class)
  public String getId()
  {
    return this.id;
  }
  
  public boolean isReadonly()
  {
    return this.readonly;
  }
  
  public String getSearchUri()
  {
    return "api/properties/" + getType();
  }
  
  public abstract String getType();

}
