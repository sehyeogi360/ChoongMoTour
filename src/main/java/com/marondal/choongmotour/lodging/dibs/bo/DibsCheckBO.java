package com.marondal.choongmotour.lodging.dibs.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.choongmotour.lodging.dibs.dao.DibsDAO;

@Service
public class DibsCheckBO {

	
	@Autowired
	private DibsDAO dibsDAO;
	//찜 해당숙소가 찜 되어있는지 안되어있는지 여부보기 빈하트냐 풀하트냐 
	
		public boolean isDibs(int userId, int lodgingId) {
			
			int count = dibsDAO.selectDibsByUserId(userId, lodgingId);
			
			if(count == 0) {//0개면 찜이 안됨
				
				return false;
			} else {
				
				return true;
			}
		}
	
}
