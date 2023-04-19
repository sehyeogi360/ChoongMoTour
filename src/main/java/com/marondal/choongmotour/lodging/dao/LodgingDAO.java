package com.marondal.choongmotour.lodging.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.marondal.choongmotour.lodging.model.Lodging;

@Repository
public interface LodgingDAO {

		//숙소 추가
		public int insertLodging(@Param("roomName") String roomName
								, @Param("level") int level
								, @Param("areaName") String areaName
								, @Param("imagePath") MultipartFile file
								);

		//숙소 리스트
		public List<Lodging> selectLodgingList(@Param("adminId")int adminId);
		
		//객실 추가
		public int insertRoom(@Param("price")int price
							  , @Param("size") String size
							  , @Param("content") String content
							  , @Param("imagePath") String imagePath
							  );
		
		// 숙소 수정
		public int updateLodging(@Param("roomName") String roomName
								, @Param("level") int level
								, @Param("areaName") String areaName
								, @Param("imagePath") String imagePath
								, @Param("price")int price
								, @Param("size") String size
								, @Param("content") String content
					 			);
		
		// 숙소 삭제
		
		
		
}
