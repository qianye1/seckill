package com.gxa.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.gxa.pojo.UserInfo;

/**
 * 
 * @author hwy
 * @since 2019/7/21
 * @version 0.01
 *
 */

@Mapper
@Repository(value = "userInfoDao")
public interface UserInfoDao {

	// 用户登录
	public List<UserInfo> Login(@Param("username") String name, @Param("password") String password);

	// 用户注册
	public int Regest(UserInfo userInfo);

	// 查询注册用户是否存在
	public List<UserInfo> RegestUsername(@Param("username") String name);

	// 修改最后登录时间
	public int updateLoginTime(@Param("username") String name);

}
