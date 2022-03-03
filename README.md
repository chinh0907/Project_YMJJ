# Project_YMJJ

- 프로젝트 명 -

제주 맛집 안내 사이트

- 기능 - 

회원관리, 제주도 명물(관광지, 레저, 특산물등 제주소게), 제주도 식당(북마크, 한줄평(별점)), 게시판(이벤트, 공지사항, 식당 리뷰), 
지도(식당표시), today(일주일 제주날씨, 지난 4일 확진자수, 식당 랭킹)

회원관리 = 관리자, 회원, 비회원
제주도 명물 = 관광지, 레저, 특산물 => 이미지와 간략한 설명, 지도에 위치 표시 => 관리자 : 추가 삭제 수정 / 회원/비회원 : 읽기
식당 = 식당 종류별로 검색가능, 지도표시 => 관리자 : 추가 삭제 수정 / 회원 : 읽기 한줄평 작성 / 비회원 : 읽기
게시판 = 관리자 : 추가 삭제 수정 / 회원/비회원 : 읽기
지도 = 제주도 지도표시 => 식당 종류별로 마커 표시(마커 클릭 시 가게 이미지 설명 표시 식당 상세정보로 이동가능) 식당 이름으로 검색기능
today = 일주일 날씨표시 오늘을 포함한 지난 3일간의 제주 확진자 사망사 표시(그레프) 식당 랭킹(한줄평 별점 평균)

- 맡은 파트 - 

레스토랑 게시글 추가, 수정, 삭제 기능, 사진 업로드, 해당 주소 지도 표현, 북마크 기능, 한줄평 기능

- 특이사항 -

지도 : kakao api 사용

관리자 => 이름 : damin, ID : admin 으로 생성
kakao KEY => 키 재발급으로 키 수정해야함
API KEY => 키 재발급으로 키 수정해야함
