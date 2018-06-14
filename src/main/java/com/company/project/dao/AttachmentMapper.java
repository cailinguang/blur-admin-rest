package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.Attachment;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AttachmentMapper extends Mapper<Attachment> {

    @ResultMap("com.company.project.dao.AttachmentMapper.BaseResultMap")
    @Select("select * from attachment where biz_id=#{bizId}")
    public List<Attachment> selectByBizId(String bizId);
}