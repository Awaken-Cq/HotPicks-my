package com.kitri.hotpicks.contents.dao;

import java.util.List;
import java.util.Map;

import com.kitri.hotpicks.contents.model.ContentsDetailDto;
import com.kitri.hotpicks.contents.model.ContentsDto;
import com.kitri.hotpicks.contents.model.ContentsImageDto;
import com.kitri.hotpicks.contents.model.ContentsTypeDto;
import com.kitri.hotpicks.contents.model.SidoDto;
import com.kitri.hotpicks.contents.model.SigunguDto;

public interface ContentsDao {

	
	
//select contents list process
	List<ContentsDto>contentslist(Map<String,Object> parameter);
	/*<![CDATA[
 	WHERE ROWNUM < 20
 	]]>*/
	
	//select detail	
	//ContentsDetailDto contentsdetail();
	//1)사용자가 많이 사용한 최근 가장많이사용한 해쉬태그 검색
	String selectMyHashTag(Map<String,Object> parameter);
	//2)작성했던 리뷰, 해쉬태그가 없을때 (최근 hot한 hashtag 검색)
	String rContentslistTrend(Map<String,Object> parameter);
	//1,2의 결과에 따라 검색
	List<ContentsDto>rContentslistByTag(String tag);
	
	
//Select location process
	List<SidoDto> selectSido();
	
	List<SigunguDto> selectSigungu(int sdCode);
	
//contents update process
	//api 목록 list와 db의 list를 비교하여(where contentId in (list)
	
	//insert contents process
	void insertContentsCate();
	List<ContentsTypeDto> selectContentsType();
	void insertApiContents(ContentsDto contentsDto);	
	List<Integer> existContentsList();
	void insertApiContentsDetail(ContentsDetailDto contentsDetailDto);
	void updateApiContentsDetail(ContentsDetailDto contentsDetailDto);
	void insertApiContentsimage(ContentsImageDto contentsImageDto);
	

	
//Insert Location Process

	//insert sido
	void insertSido(List<SidoDto> sidoData);
	//insert sigungu
	void insertSigunguEx(List<Integer> sdList);
	void insertSigungu(SigunguDto sigunguDto);
	void insertSigunguList(List<SigunguDto> sigunguData);

	
}
