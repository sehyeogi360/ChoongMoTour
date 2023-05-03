package com.marondal.choongmotour.user.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.marondal.choongmotour.user.dao.UserDAO;
import com.marondal.choongmotour.user.model.User;
import com.marondal.choongmotour.common.EncryptService;
import com.marondal.choongmotour.common.FileManagerService;
import java.util.Random;
@Service
public class UserBO {
	
	@Autowired
	private UserDAO userDAO;
	
	//회원가입 api 
	public int addUser(
			String loginId
			, String password
			, String name
			, String email	
			, String nickname
			) {
		//비밀번호 암호화 
		String encryptPassword= EncryptService.md5(password);
		
		return userDAO.insertUser(loginId, encryptPassword, name, email, nickname);
		
	}
	
	//중복 여부 api
	public boolean isDuplicate(String loginId) {
		
		int count = userDAO.selectCountloginId(loginId);
		
		if(count == 0) {
			return false;
		} else {
			return true;
		}
		
	}

	//로그인 api
	public User getUser(String loginId, String password) {//모델객체 불러오는것.
		
		
		//비밀번호 암호화
		String ecryptPassword = EncryptService.md5(password);
		
		return userDAO.selectUser(loginId, ecryptPassword);
	
	}
	
	//아이디 찾기
	public User getUserByNameEmail(String loginId, String name, String email) {
		
		return userDAO.selectUserByNameEmail(loginId, name, email);
	
	}

	
	//비밀번호 어차피 암호화되있어서 조회는 무의미하다 보면된다고 한다.

	
	
	// 임시 비밀번호 발급 및 암호화
	public int updateTemporrayPassword(String loginId, String email, String password) {
	
		//String password = new StringBuffer();
		
		//임시비밀번호 생성 알고리즘
		
		
		//int index = 0;
		char[] charSet = new char[] {
				 '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
		};
//		int[] arr = new int[6];
	
		Random random = new Random();
	
		for(int i = 0; i < 100; i++) {
			
			int rNum = random.nextInt(charSet.length);
			
			char shuffle  = charSet[0];
			charSet[0] = charSet[rNum];
			charSet[rNum] = (char) shuffle;
		}
		
		
		
		for (int i = 0; i < charSet.length - 1; i++) {
			password = charSet[i] + password;
		}
		
		String ecryptPassword = EncryptService.md5(password);//이게 암호화가 안되서 비번이 바뀌어도 로그인이 안되었던것.
		
		return userDAO.updatePassword(loginId, email, ecryptPassword);
		
	}
	
	
	// 회원정보 한행 조회
	public User getUserInfo(int id) {//loginId->id로변경하기
		
		//String imagePath = FileManagerService.saveFile(0, file);
		
		
		return userDAO.selectUserInfo(id);
		
		
	}
	//딱 정리를 내리자면 조회는 id만 있어도 됨 수정은 다있어야 함 이거같음
	
	//회원정보 수정
	public int updateUser(
			int id//loginId빼보기
			, String password
			, String name
			, String email
			, String phoneNumber
			, String nickname
			, MultipartFile file) {
		
		String imagePath = FileManagerService.saveFile(id, file);
		
		
		String ecryptPassword = EncryptService.md5(password);
		
		return userDAO.updateUser(id, ecryptPassword, name, email, phoneNumber, nickname, imagePath);
		
		
	}
	
	
}
