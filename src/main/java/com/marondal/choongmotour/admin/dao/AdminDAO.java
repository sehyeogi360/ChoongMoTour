package com.marondal.choongmotour.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marondal.choongmotour.admin.model.Admin;
import com.marondal.choongmotour.lodging.model.Lodging;

@Repository
public interface AdminDAO {

	public int insertAdmin(
			@Param("loginId") String loginId
			, @Param("password") String password
			, @Param("name") String name
			, @Param("email") String email
			, @Param("nickname") String nickname
			
			);
	
	public int selectCountloginId(@Param("loginId") String loginId);
	
	//인증번호 일치 확인
	public int selectcertificationNumber(@Param("certificationNumber") String certificationNumber);
	
	
	public Admin selectAdmin(@Param("loginId") String loginId
							, @Param("password") String password);
	
	//숙소 추가
	public int insertLodging(@Param("roomName") String roomName
							, @Param("level") int level
							, @Param("areaName") String areaName
							, @Param("imagePath") String imagePath
							);

	//숙소 리스트
	public List<Lodging> selectLodgingList(@Param("adminId")int adminId);
	
	//객실 추가
	
	public int insertRoom(@Param("price")int price
						  , @Param("size") String size
						  , @Param("content") String content
						  , @Param("imagePath") String imagePath
						  );
	
	
	
	
	//숙소 수정
	
	
}
