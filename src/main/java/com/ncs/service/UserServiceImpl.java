package com.ncs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncs.mapper.UserMapper;
import com.ncs.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;
	

	@Override
	public UserVO read(String userid) {
		return userMapper.read(userid);
	}
	
	@Override
	public int join(UserVO vo) {
		return userMapper.join(vo);
	}

	@Override
	public int useridDuplicate(UserVO vo) {
		return userMapper.useridDuplicate(vo);
	}

	@Override
	public int nicknameDuplicate(UserVO vo) {
		return userMapper.nicknameDuplicate(vo);
	}

	@Override
	public int emailDuplicate(UserVO vo) {
		return userMapper.emailDuplicate(vo);
	}

	@Override
	public int update(UserVO userVO) {
		return userMapper.update(userVO);
	}

	@Override
	public UserVO selectOne(UserVO userVO) {
		return userMapper.selectOne(userVO);
	}

	
	
}
