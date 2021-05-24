package yook.board.board;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import java.util.List;

public interface BoardService {
      
   List<Map<String, Object>> selectReviewList(Map<String, Object> map) throws Exception; //리스트
	/* Map<String, Object> reviewDetail(Map<String, Object> map)throws Exception; */
   
   List<Map<String, Object>> selectQnaList(Map<String, Object> map) throws Exception; //리스트
   Map<String, Object> qnaDetail(Map<String, Object> map)throws Exception;	 //디테일
   
   List<Map<String, Object>> noticeList(Map<String, Object> map) throws Exception; //리스트
   Map<String, Object> noticeDetail(Map<String, Object> map)throws Exception;	 //디테일
   
   List<Map<String, Object>> eventList(Map<String, Object> map)throws Exception; //리스트
   Map<String, Object> eventDetail(Map<String, Object> map)throws Exception;	 //디테일
   
   //QNA
   void insertQna(Map<String, Object> map, HttpServletRequest request) throws Exception; //글 작성
   Map<String, Object> updateQnaForm(Map<String, Object> map)throws Exception; //수정 폼
   void updateQna(Map<String, Object> map)throws Exception; //수정완료
   void deleteQna(Map<String, Object> map) throws Exception; //삭제
   //REVIEW
   void insertReview(Map<String, Object> map, HttpServletRequest request) throws Exception; //글 작성
   Map<String, Object> updatReviewForm(Map<String, Object> map)throws Exception; //수정 폼
   void updateReview(Map<String, Object> map)throws Exception; //수정완료
   void deleteReview(Map<String, Object> map) throws Exception; //삭제
}