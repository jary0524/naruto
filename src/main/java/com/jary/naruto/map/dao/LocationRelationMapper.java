package com.jary.naruto.map.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jary.framework.core.dao.BaseMapper;
import com.jary.naruto.map.model.LocationRelation;
import com.jary.naruto.map.model.LocationRelationExample;

public interface LocationRelationMapper extends BaseMapper<LocationRelation, String> {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table r_location
     *
     * @mbggenerated
     */
    int countByExample(LocationRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table r_location
     *
     * @mbggenerated
     */
    int deleteByExample(LocationRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table r_location
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String rId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table r_location
     *
     * @mbggenerated
     */
    int insert(LocationRelation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table r_location
     *
     * @mbggenerated
     */
    int insertSelective(LocationRelation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table r_location
     *
     * @mbggenerated
     */
    List<LocationRelation> selectByExample(LocationRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table r_location
     *
     * @mbggenerated
     */
    LocationRelation selectByPrimaryKey(String rId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table r_location
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") LocationRelation record, @Param("example") LocationRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table r_location
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") LocationRelation record, @Param("example") LocationRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table r_location
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(LocationRelation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table r_location
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(LocationRelation record);
}