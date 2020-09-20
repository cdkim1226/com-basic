package com.ncs.service;

import com.ncs.vo.UserVO;

public interface UserService {
	
	int join(UserVO vo);

	int useridDuplicate(UserVO vo);

	int nicknameDuplicate(UserVO vo);

	int emailDuplicate(UserVO vo);

	UserVO read(String userid);
	
	int update(UserVO userVO);
	
	UserVO selectOne(UserVO userVO);
}
