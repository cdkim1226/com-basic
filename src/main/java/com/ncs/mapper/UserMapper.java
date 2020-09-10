package com.ncs.mapper;

import org.springframework.stereotype.Repository;

import com.ncs.vo.UserVO;

@Repository
public interface UserMapper {

	int join(UserVO vo);
	int useridDuplicate(UserVO vo);
	int nicknameDuplicate(UserVO vo);
	int emailDuplicate(UserVO vo);
	UserVO read(String userid);
}
