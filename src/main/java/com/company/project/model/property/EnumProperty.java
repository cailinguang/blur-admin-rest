package com.company.project.model.property;

import com.company.project.core.ServiceException;
import com.company.project.model.property.enums.ApplicableProperty;
import com.company.project.model.property.enums.ComplianceLevelProperty;
import com.company.project.model.property.enums.LevelApprovedProperty;
import com.company.project.model.property.enums.SeverityLevelProperty;

import java.util.List;

public abstract class EnumProperty
  extends Property
{
  public EnumProperty(String id, String name, boolean readonly)
  {
    super(id, name, readonly);
  }
  
  public abstract String getValue();
  
  public abstract void setValue(String paramString);
  
  public String getDisplayValue()
  {
    for (EnumValue ev : getEnumValues()) {
      if (ev.getValue().equals(getValue())) {
        return ev.getDisplayValue();
      }
    }
    return null;
  }
  
  public abstract List<EnumValue> getEnumValues();
  
  public static EnumProperty newProperty(String type, String id, String name, boolean readonly)
  {
    if (type.equals("severity_level")) {
      return new SeverityLevelProperty(id, name, readonly);
    }
    if (type.equals("compliance_level")) {
      return new ComplianceLevelProperty(id, name, readonly);
    }
    if (type.equals("level_approved")) {
      return new LevelApprovedProperty(id, name, readonly);
    }
    if (type.equals("applicable")) {
      return new ApplicableProperty(id, name, readonly);
    }
    throw new ServiceException("Unknown Enum type " + type);
  }
}
