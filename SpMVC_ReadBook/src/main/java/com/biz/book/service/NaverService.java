package com.biz.book.service;

import java.util.List;
/*
 * 한가지 *VO클래스에 종속돼지 않은
 * 여러가지 VO를 클래스를 사용한 인터페이스로 생성하기 위하여
 * Generic(<T>)를 사용했다
 */
public interface NaverService<T> {
	
	// 사용자가 선택한 카테고리와, 검색어 문자열을 주입받아서 
	// naver API의 요청 URL문자열을 생성
	public String queryURL(String category, String search_text);
	
	// queryURL()에서 생성된 요청 URL문자열을 주입받아서
	// JSON형 문자열을 수신받는 method
	public String getNaverSearch(String queryURL);
	public List<T> getNaverList(String jsonString);

}
