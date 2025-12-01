-- DEPARTMENT 테이블 (10개)
INSERT INTO DEPARTMENT (department_no, department_name, department_location) 
VALUES (DEPARTMENT_SEQ.NEXTVAL, '내과', '본관 2층');

INSERT INTO DEPARTMENT (department_no, department_name, department_location) 
VALUES (DEPARTMENT_SEQ.NEXTVAL, '외과', '본관 3층');

INSERT INTO DEPARTMENT (department_no, department_name, department_location) 
VALUES (DEPARTMENT_SEQ.NEXTVAL, '소아청소년과', '본관 4층');

INSERT INTO DEPARTMENT (department_no, department_name, department_location) 
VALUES (DEPARTMENT_SEQ.NEXTVAL, '정형외과', '신관 2층');

INSERT INTO DEPARTMENT (department_no, department_name, department_location) 
VALUES (DEPARTMENT_SEQ.NEXTVAL, '산부인과', '신관 3층');

INSERT INTO DEPARTMENT (department_no, department_name, department_location) 
VALUES (DEPARTMENT_SEQ.NEXTVAL, '이비인후과', '본관 1층');

INSERT INTO DEPARTMENT (department_no, department_name, department_location) 
VALUES (DEPARTMENT_SEQ.NEXTVAL, '안과', '본관 1층');

INSERT INTO DEPARTMENT (department_no, department_name, department_location) 
VALUES (DEPARTMENT_SEQ.NEXTVAL, '피부과', '신관 1층');

INSERT INTO DEPARTMENT (department_no, department_name, department_location) 
VALUES (DEPARTMENT_SEQ.NEXTVAL, '정신건강의학과', '신관 4층');

INSERT INTO DEPARTMENT (department_no, department_name, department_location) 
VALUES (DEPARTMENT_SEQ.NEXTVAL, '영상의학과', '신관 B1층');

COMMIT;

-- FACILITY 테이블 (5개 고정)
INSERT INTO FACILITY (facility_no, facility_name, facility_code, facility_location, facility_type, facility_status, facility_phone, facility_Representative, reservation_unit)
VALUES (FACILITY_SEQ.NEXTVAL, 'MRI','MRI-1', '신관 B1층 영상의학과', '장비', 'T', '02-123-1001', '김마리', 60);

INSERT INTO FACILITY (facility_no, facility_name, facility_code, facility_location, facility_type, facility_status, facility_phone, facility_Representative, reservation_unit, fix_date)
VALUES (FACILITY_SEQ.NEXTVAL, 'X-RAY','X-RAY-1', '신관 B1층 영상의학과', '장비', 'T', '02-123-1002', '김영상', 60, '2025-11-25');

INSERT INTO FACILITY (facility_no, facility_name, facility_code, facility_location, facility_type, facility_status, facility_phone, facility_Representative, reservation_unit)
VALUES (FACILITY_SEQ.NEXTVAL, '내시경','Endoscope-1', '신관 B1층 영상의학과', '장비', 'T', '02-123-1003', '김시경', 60);

INSERT INTO FACILITY (facility_no, facility_name, facility_code, facility_location, facility_type, facility_status, facility_phone, facility_Representative, reservation_unit)
VALUES (FACILITY_SEQ.NEXTVAL, '초음파','UW-1', '신관 B1층 영상의학과', '장비', 'T', '02-123-1004', '김음파', 60);

INSERT INTO FACILITY (facility_no, facility_name, facility_code, facility_location, facility_type, facility_status, facility_phone, facility_Representative, reservation_unit)
VALUES (FACILITY_SEQ.NEXTVAL, 'CT','CT-1', '신관 B1층 영상의학과', '장비', 'T', '02-123-1005', '김씨티', 60);

COMMIT;

-- MEMBER 테이블 (110개)
-- 1. 직원용 회원 (50개) - staff_no는 나중에 UPDATE
INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'doctor001', 'pwd001', '김민준', 'M', '850315-1234567', '010-1001-0001', 'doctor001@hospital.com', '서울시 강남구 테헤란로 123', SYSDATE - 1825, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'doctor002', 'pwd002', '이서연', 'F', '880522-2345678', '010-1001-0002', 'doctor002@hospital.com', '서울시 서초구 서초대로 456', SYSDATE - 1460, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'doctor003', 'pwd003', '박지우', 'M', '900710-1456789', '010-1001-0003', 'doctor003@hospital.com', '서울시 송파구 올림픽로 789', SYSDATE - 1095, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'doctor004', 'pwd004', '최예은', 'F', '870425-2567890', '010-1001-0004', 'doctor004@hospital.com', '서울시 강동구 천호대로 234', SYSDATE - 1825, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'doctor005', 'pwd005', '정도윤', 'M', '920815-1678901', '010-1001-0005', 'doctor005@hospital.com', '서울시 광진구 능동로 567', SYSDATE - 730, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'doctor006', 'pwd006', '강하윤', 'F', '890930-2789012', '010-1001-0006', 'doctor006@hospital.com', '서울시 성동구 왕십리로 890', SYSDATE - 1460, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'doctor007', 'pwd007', '조시우', 'M', '860620-1890123', '010-1001-0007', 'doctor007@hospital.com', '서울시 중랑구 망우로 123', SYSDATE - 1825, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'doctor008', 'pwd008', '윤서아', 'F', '910505-2901234', '010-1001-0008', 'doctor008@hospital.com', '서울시 노원구 동일로 456', SYSDATE - 1095, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'doctor009', 'pwd009', '임준서', 'M', '880112-1012345', '010-1001-0009', 'doctor009@hospital.com', '서울시 도봉구 도봉로 789', SYSDATE - 1460, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'doctor010', 'pwd010', '한지민', 'F', '930728-2123456', '010-1001-0010', 'doctor010@hospital.com', '서울시 은평구 통일로 234', SYSDATE - 730, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse001', 'pwd011', '배수지', 'F', '910203-2234567', '010-1002-0001', 'nurse001@hospital.com', '서울시 서대문구 연세로 567', SYSDATE - 1095, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse002', 'pwd012', '신민아', 'F', '880918-2345678', '010-1002-0002', 'nurse002@hospital.com', '서울시 마포구 마포대로 890', SYSDATE - 1460, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse003', 'pwd013', '전지현', 'F', '920415-2456789', '010-1002-0003', 'nurse003@hospital.com', '서울시 용산구 한강대로 123', SYSDATE - 1095, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse004', 'pwd014', '송혜교', 'F', '870622-2567890', '010-1002-0004', 'nurse004@hospital.com', '서울시 중구 세종대로 456', SYSDATE - 1825, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse005', 'pwd015', '김태희', 'F', '900830-2678901', '010-1002-0005', 'nurse005@hospital.com', '서울시 종로구 종로 789', SYSDATE - 1460, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse006', 'pwd016', '이나영', 'F', '890507-2789012', '010-1002-0006', 'nurse006@hospital.com', '서울시 동대문구 왕산로 234', SYSDATE - 1095, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse007', 'pwd017', '한가인', 'F', '910714-2890123', '010-1002-0007', 'nurse007@hospital.com', '서울시 성북구 보문로 567', SYSDATE - 730, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse008', 'pwd018', '고아라', 'F', '880220-2901234', '010-1002-0008', 'nurse008@hospital.com', '서울시 강북구 한천로 890', SYSDATE - 1460, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse009', 'pwd019', '박신혜', 'F', '920928-2012345', '010-1002-0009', 'nurse009@hospital.com', '서울시 관악구 남부순환로 123', SYSDATE - 1095, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse010', 'pwd020', '수지', 'F', '870105-2123456', '010-1002-0010', 'nurse010@hospital.com', '서울시 동작구 사당로 456', SYSDATE - 1825, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse011', 'pwd021', '아이유', 'F', '930516-2234567', '010-1002-0011', 'nurse011@hospital.com', '서울시 영등포구 여의대로 789', SYSDATE - 730, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse012', 'pwd022', '강소라', 'F', '900123-2345678', '010-1002-0012', 'nurse012@hospital.com', '서울시 금천구 시흥대로 234', SYSDATE - 1460, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse013', 'pwd023', '윤은혜', 'F', '880810-2456789', '010-1002-0013', 'nurse013@hospital.com', '서울시 구로구 경인로 567', SYSDATE - 1095, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse014', 'pwd024', '문채원', 'F', '920421-2567890', '010-1002-0014', 'nurse014@hospital.com', '서울시 양천구 목동로 890', SYSDATE - 730, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse015', 'pwd025', '김사랑', 'F', '870630-2678901', '010-1002-0015', 'nurse015@hospital.com', '서울시 강서구 화곡로 123', SYSDATE - 1825, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse016', 'pwd026', '황정음', 'F', '910207-2789012', '010-1002-0016', 'nurse016@hospital.com', '경기도 고양시 일산동구 456', SYSDATE - 1460, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse017', 'pwd027', '이민정', 'F', '890818-2890123', '010-1002-0017', 'nurse017@hospital.com', '경기도 고양시 일산서구 789', SYSDATE - 1095, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse018', 'pwd028', '김희선', 'F', '920426-2901234', '010-1002-0018', 'nurse018@hospital.com', '경기도 성남시 분당구 234', SYSDATE - 730, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse019', 'pwd029', '이영애', 'F', '880104-2012345', '010-1002-0019', 'nurse019@hospital.com', '경기도 성남시 수정구 567', SYSDATE - 1460, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'nurse020', 'pwd030', '최지우', 'F', '900715-2123456', '010-1002-0020', 'nurse020@hospital.com', '경기도 용인시 수지구 890', SYSDATE - 1095, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'manager001', 'pwd031', '김철수', 'M', '850320-1234567', '010-1003-0001', 'manager001@hospital.com', '서울시 강남구 역삼동 123', SYSDATE - 1825, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'manager002', 'pwd032', '이영희', 'F', '880525-2345678', '010-1003-0002', 'manager002@hospital.com', '서울시 서초구 방배동 456', SYSDATE - 1460, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'manager003', 'pwd033', '박영수', 'M', '900712-1456789', '010-1003-0003', 'manager003@hospital.com', '서울시 송파구 잠실동 789', SYSDATE - 1095, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'manager004', 'pwd034', '정미경', 'F', '870428-2567890', '010-1003-0004', 'manager004@hospital.com', '서울시 강동구 천호동 234', SYSDATE - 1825, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'manager005', 'pwd035', '강동원', 'M', '920818-1678901', '010-1003-0005', 'manager005@hospital.com', '서울시 광진구 구의동 567', SYSDATE - 730, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'manager006', 'pwd036', '한지민', 'F', '891002-2789012', '010-1003-0006', 'manager006@hospital.com', '서울시 성동구 성수동 890', SYSDATE - 1460, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'manager007', 'pwd037', '조인성', 'M', '860623-1890123', '010-1003-0007', 'manager007@hospital.com', '서울시 중랑구 면목동 123', SYSDATE - 1825, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'manager008', 'pwd038', '윤아', 'F', '910508-2901234', '010-1003-0008', 'manager008@hospital.com', '서울시 노원구 상계동 456', SYSDATE - 1095, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'manager009', 'pwd039', '임시완', 'M', '880115-1012345', '010-1003-0009', 'manager009@hospital.com', '서울시 도봉구 쌍문동 789', SYSDATE - 1460, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'manager010', 'pwd040', '한효주', 'F', '930801-2123456', '010-1003-0010', 'manager010@hospital.com', '서울시 은평구 응암동 234', SYSDATE - 730, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'staff041', 'pwd041', '권상우', 'M', '870422-1234567', '010-1003-0011', 'staff041@hospital.com', '서울시 서대문구 신촌동 567', SYSDATE - 1825, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'staff042', 'pwd042', '손예진', 'F', '900215-2345678', '010-1003-0012', 'staff042@hospital.com', '서울시 마포구 공덕동 890', SYSDATE - 1460, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'staff043', 'pwd043', '정우성', 'M', '880920-1456789', '010-1003-0013', 'staff043@hospital.com', '서울시 용산구 이촌동 123', SYSDATE - 1095, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'staff044', 'pwd044', '김태리', 'F', '920518-2567890', '010-1003-0014', 'staff044@hospital.com', '서울시 중구 명동 456', SYSDATE - 730, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'staff045', 'pwd045', '이정재', 'M', '860705-1678901', '010-1003-0015', 'staff045@hospital.com', '서울시 종로구 인사동 789', SYSDATE - 1825, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'staff046', 'pwd046', '전지현', 'F', '910912-2789012', '010-1003-0016', 'staff046@hospital.com', '서울시 동대문구 장안동 234', SYSDATE - 1460, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'staff047', 'pwd047', '하정우', 'M', '890328-1890123', '010-1003-0017', 'staff047@hospital.com', '서울시 성북구 정릉동 567', SYSDATE - 1095, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'staff048', 'pwd048', '김고은', 'F', '930604-2901234', '010-1003-0018', 'staff048@hospital.com', '서울시 강북구 미아동 890', SYSDATE - 730, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'staff049', 'pwd049', '송중기', 'M', '880219-1012345', '010-1003-0019', 'staff049@hospital.com', '서울시 관악구 봉천동 123', SYSDATE - 1460, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'staff050', 'pwd050', '박보영', 'F', '920930-2123456', '010-1003-0020', 'staff050@hospital.com', '서울시 동작구 흑석동 456', SYSDATE - 1095, 'B', NULL, NULL, 'T');

-- 2. 일반 회원 (50개) - staff_no NULL
INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'user01', '1234', '홍길동', 'M', '750315-1234568', '010-2001-0001', 'patient001@naver.com', '서울시 강남구 삼성동 101', SYSDATE - 365, 'A', '고혈압', '페니실린', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient002', 'pwd052', '김영희', 'F', '820522-2345679', '010-2001-0002', 'patient002@gmail.com', '서울시 서초구 서초동 202', SYSDATE - 200, 'B', '당뇨', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient003', 'pwd053', '이철수', 'M', '790710-1456780', '010-2001-0003', 'patient003@daum.net', '서울시 송파구 방이동 303', SYSDATE - 450, 'O', NULL, '갑각류', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient004', 'pwd054', '박순자', 'F', '650425-2567891', '010-2001-0004', 'patient004@naver.com', '서울시 강동구 고덕동 404', SYSDATE - 730, 'AB', '고혈압, 당뇨', '아스피린', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient005', 'pwd055', '최민수', 'M', '880815-1678902', '010-2001-0005', 'patient005@gmail.com', '서울시 광진구 자양동 505', SYSDATE - 90, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient006', 'pwd056', '정미선', 'F', '700930-2789013', '010-2001-0006', 'patient006@daum.net', '서울시 성동구 옥수동 606', SYSDATE - 180, 'B', '갑상선질환', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient007', 'pwd057', '강대현', 'M', '950620-1890124', '010-2001-0007', 'patient007@naver.com', '서울시 중랑구 중화동 707', SYSDATE - 60, 'O', NULL, '견과류', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient008', 'pwd058', '윤지영', 'F', '920505-2901235', '010-2001-0008', 'patient008@gmail.com', '서울시 노원구 월계동 808', SYSDATE - 300, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient009', 'pwd059', '임경호', 'M', '730112-1012346', '010-2001-0009', 'patient009@daum.net', '서울시 도봉구 방학동 909', SYSDATE - 500, 'A', '천식', '꽃가루', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient010', 'pwd060', '한수지', 'F', '850728-2123457', '010-2001-0010', 'patient010@naver.com', '서울시 은평구 녹번동 1010', SYSDATE - 120, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient011', 'pwd061', '배준호', 'M', '900203-1234568', '010-2001-0011', 'patient011@gmail.com', '서울시 서대문구 충정로 1111', SYSDATE - 250, 'O', NULL, '새우', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient012', 'pwd062', '신혜림', 'F', '780918-2345679', '010-2001-0012', 'patient012@daum.net', '서울시 마포구 망원동 1212', SYSDATE - 400, 'AB', '고혈압', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient013', 'pwd063', '전우진', 'M', '930415-1456780', '010-2001-0013', 'patient013@naver.com', '서울시 용산구 한남동 1313', SYSDATE - 150, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient014', 'pwd064', '송미란', 'F', '670622-2567891', '010-2001-0014', 'patient014@gmail.com', '서울시 중구 남대문로 1414', SYSDATE - 600, 'B', '당뇨, 고혈압', '페니실린', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient015', 'pwd065', '정상훈', 'M', '910830-1678902', '010-2001-0015', 'patient015@daum.net', '서울시 종로구 혜화동 1515', SYSDATE - 80, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient016', 'pwd066', '강은미', 'F', '800507-2789013', '010-2001-0016', 'patient016@naver.com', '서울시 동대문구 청량리 1616', SYSDATE - 270, 'AB', NULL, '계란', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient017', 'pwd067', '조병철', 'M', '720714-1890124', '010-2001-0017', 'patient017@gmail.com', '서울시 성북구 삼선동 1717', SYSDATE - 550, 'A', '고혈압', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient018', 'pwd068', '윤서현', 'F', '940220-2901235', '010-2001-0018', 'patient018@daum.net', '서울시 강북구 수유동 1818', SYSDATE - 45, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient019', 'pwd069', '임도현', 'M', '860928-1012346', '010-2001-0019', 'patient019@naver.com', '서울시 관악구 신림동 1919', SYSDATE - 350, 'O', NULL, '우유', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient020', 'pwd070', '한채원', 'F', '750105-2123457', '010-2001-0020', 'patient020@gmail.com', '서울시 동작구 상도동 2020', SYSDATE - 700, 'AB', '갑상선질환', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient021', 'pwd071', '배성민', 'M', '890516-1234568', '010-2001-0021', 'patient021@daum.net', '서울시 영등포구 당산동 2121', SYSDATE - 100, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient022', 'pwd072', '신유진', 'F', '920123-2345679', '010-2001-0022', 'patient022@naver.com', '서울시 금천구 가산동 2222', SYSDATE - 220, 'B', NULL, '조개류', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient023', 'pwd073', '전태수', 'M', '770810-1456780', '010-2001-0023', 'patient023@gmail.com', '서울시 구로구 구로동 2323', SYSDATE - 480, 'O', '천식', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient024', 'pwd074', '최서연', 'F', '850421-2567891', '010-2001-0024', 'patient024@daum.net', '서울시 양천구 신정동 2424', SYSDATE - 140, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient025', 'pwd075', '정현우', 'M', '930630-1678902', '010-2001-0025', 'patient025@naver.com', '서울시 강서구 등촌동 2525', SYSDATE - 75, 'A', NULL, '땅콩', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient026', 'pwd076', '강지은', 'F', '810207-2789013', '010-2001-0026', 'patient026@gmail.com', '경기도 고양시 덕양구 2626', SYSDATE - 320, 'B', '고혈압', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient027', 'pwd077', '조재현', 'M', '690818-1890124', '010-2001-0027', 'patient027@daum.net', '경기도 고양시 일산동구 2727', SYSDATE - 650, 'O', '당뇨', '아스피린', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient028', 'pwd078', '윤수아', 'F', '960426-2901235', '010-2001-0028', 'patient028@naver.com', '경기도 성남시 분당구 2828', SYSDATE - 30, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient029', 'pwd079', '임건우', 'M', '840104-1012346', '010-2001-0029', 'patient029@gmail.com', '경기도 성남시 수정구 2929', SYSDATE - 380, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient030', 'pwd080', '한다은', 'F', '870715-2123457', '010-2001-0030', 'patient030@daum.net', '경기도 용인시 수지구 3030', SYSDATE - 260, 'B', NULL, '복숭아', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient031', 'pwd081', '배준혁', 'M', '910322-1234568', '010-2001-0031', 'patient031@naver.com', '경기도 수원시 영통구 3131', SYSDATE - 110, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient032', 'pwd082', '신예림', 'F', '760529-2345679', '010-2001-0032', 'patient032@gmail.com', '경기도 수원시 팔달구 3232', SYSDATE - 520, 'AB', '고혈압', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient033', 'pwd083', '전민석', 'M', '880906-1456780', '010-2001-0033', 'patient033@daum.net', '경기도 안양시 만안구 3333', SYSDATE - 190, 'A', NULL, '새우', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient034', 'pwd084', '최윤서', 'F', '930712-2567891', '010-2001-0034', 'patient034@naver.com', '경기도 안양시 동안구 3434', SYSDATE - 85, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient035', 'pwd085', '정호진', 'M', '700218-1678902', '010-2001-0035', 'patient035@gmail.com', '경기도 부천시 원미구 3535', SYSDATE - 580, 'O', '당뇨', '페니실린', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient036', 'pwd086', '강수빈', 'F', '950924-2789013', '010-2001-0036', 'patient036@daum.net', '경기도 광명시 3636', SYSDATE - 55, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient037', 'pwd087', '조은호', 'M', '820401-1890124', '010-2001-0037', 'patient037@naver.com', '경기도 평택시 3737', SYSDATE - 410, 'A', NULL, '갑각류', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient038', 'pwd088', '윤채린', 'F', '900617-2901235', '010-2001-0038', 'patient038@gmail.com', '경기도 화성시 3838', SYSDATE - 170, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient039', 'pwd089', '임시현', 'M', '740823-1012346', '010-2001-0039', 'patient039@daum.net', '경기도 오산시 3939', SYSDATE - 620, 'O', '고혈압', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient040', 'pwd090', '한소율', 'F', '920309-2123457', '010-2001-0040', 'patient040@naver.com', '경기도 안산시 단원구 4040', SYSDATE - 95, 'AB', NULL, '견과류', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient041', 'pwd091', '배도훈', 'M', '860515-1234568', '010-2001-0041', 'patient041@gmail.com', '경기도 안산시 상록구 4141', SYSDATE - 290, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient042', 'pwd092', '신가은', 'F', '780731-2345679', '010-2001-0042', 'patient042@daum.net', '경기도 의정부시 4242', SYSDATE - 470, 'B', '갑상선질환', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient043', 'pwd093', '전수현', 'M', '940206-1456780', '010-2001-0043', 'patient043@naver.com', '경기도 남양주시 4343', SYSDATE - 70, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient044', 'pwd094', '최예나', 'F', '890413-2567891', '010-2001-0044', 'patient044@gmail.com', '경기도 파주시 4444', SYSDATE - 230, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient045', 'pwd095', '정지훈', 'M', '910629-1678902', '010-2001-0045', 'patient045@daum.net', '경기도 김포시 4545', SYSDATE - 125, 'A', NULL, '우유', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient046', 'pwd096', '강민지', 'F', '730805-2789013', '010-2001-0046', 'patient046@naver.com', '인천시 남동구 4646', SYSDATE - 560, 'B', '당뇨', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient047', 'pwd097', '조태양', 'M', '951112-1890124', '010-2001-0047', 'patient047@gmail.com', '인천시 연수구 4747', SYSDATE - 40, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient048', 'pwd098', '윤하린', 'F', '870318-2901235', '010-2001-0048', 'patient048@daum.net', '인천시 부평구 4848', SYSDATE - 330, 'AB', NULL, '계란', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient049', 'pwd099', '임영재', 'M', '800924-1012346', '010-2001-0049', 'patient049@naver.com', '인천시 계양구 4949', SYSDATE - 430, 'A', '고혈압', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'patient050', 'pwd100', '한서진', 'F', '921201-2123457', '010-2001-0050', 'patient050@gmail.com', '인천시 서구 5050', SYSDATE - 105, 'B', NULL, NULL, 'T');

-- 3. 비회원 (10개) - member_id, member_pwd NULL
INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, NULL, NULL, '김비회원', 'M', '900101-1111111', '010-3001-0001', 'nonmember01@test.com', '서울시 강남구 역삼동 5001', SYSDATE - 10, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, NULL, NULL, '이비회원', 'F', '880202-2222222', '010-3001-0002', 'nonmember02@test.com', '서울시 서초구 서초동 5002', SYSDATE - 5, 'B', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, NULL, NULL, '박비회원', 'M', '750303-1333333', '010-3001-0003', 'nonmember03@test.com', '서울시 송파구 잠실동 5003', SYSDATE - 3, 'O', '고혈압', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, NULL, NULL, '최비회원', 'F', '920404-2444444', '010-3001-0004', 'nonmember04@test.com', '서울시 강동구 천호동 5004', SYSDATE - 7, 'AB', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, NULL, NULL, '정비회원', 'M', '850505-1555555', '010-3001-0005', 'nonmember05@test.com', '서울시 광진구 구의동 5005', SYSDATE - 2, 'A', NULL, '페니실린', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, NULL, NULL, '강비회원', 'F', '700606-2666666', '010-3001-0006', 'nonmember06@test.com', '서울시 성동구 성수동 5006', SYSDATE - 1, 'B', '당뇨', NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, NULL, NULL, '조비회원', 'M', '930707-1777777', '010-3001-0007', 'nonmember07@test.com', '서울시 중랑구 면목동 5007', SYSDATE - 8, 'O', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, NULL, NULL, '윤비회원', 'F', '880808-2888888', '010-3001-0008', 'nonmember08@test.com', '서울시 노원구 상계동 5008', SYSDATE - 4, 'AB', NULL, '새우', 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, NULL, NULL, '임비회원', 'M', '760909-1999999', '010-3001-0009', 'nonmember09@test.com', '서울시 도봉구 쌍문동 5009', SYSDATE - 6, 'A', NULL, NULL, 'T');

INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, NULL, NULL, '한비회원', 'F', '911010-2000000', '010-3001-0010', 'nonmember10@test.com', '서울시 은평구 응암동 5010', SYSDATE - 9, 'B', NULL, NULL, 'T');

COMMIT;

-- STAFF 테이블 (50개)
-- MEMBER 테이블의 첫 50개 레코드를 참조
INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 1, SYSDATE - 1825);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 2, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 3, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 4, SYSDATE - 1825);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 5, SYSDATE - 730);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 6, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 7, SYSDATE - 1825);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 8, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 9, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 10, SYSDATE - 730);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 11, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 12, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 13, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 14, SYSDATE - 1825);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 15, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 16, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 17, SYSDATE - 730);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 18, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 19, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 20, SYSDATE - 1825);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 21, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 22, SYSDATE - 730);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 23, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 24, SYSDATE - 1825);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 25, SYSDATE - 730);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 26, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 27, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 28, SYSDATE - 730);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 29, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 30, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 31, SYSDATE - 1825);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 32, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 33, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 34, SYSDATE - 1825);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 35, SYSDATE - 730);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 36, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 37, SYSDATE - 1825);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 38, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 39, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 40, SYSDATE - 730);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 41, SYSDATE - 1825);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 42, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 43, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 44, SYSDATE - 730);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 45, SYSDATE - 1825);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 46, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 47, SYSDATE - 1095);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 48, SYSDATE - 730);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 49, SYSDATE - 1460);

INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, 50, SYSDATE - 1095);

-- MEMBER 테이블의 staff_no 업데이트 (순환참조 해결)
UPDATE MEMBER SET staff_no = 1 WHERE member_no = 1;
UPDATE MEMBER SET staff_no = 2 WHERE member_no = 2;
UPDATE MEMBER SET staff_no = 3 WHERE member_no = 3;
UPDATE MEMBER SET staff_no = 4 WHERE member_no = 4;
UPDATE MEMBER SET staff_no = 5 WHERE member_no = 5;
UPDATE MEMBER SET staff_no = 6 WHERE member_no = 6;
UPDATE MEMBER SET staff_no = 7 WHERE member_no = 7;
UPDATE MEMBER SET staff_no = 8 WHERE member_no = 8;
UPDATE MEMBER SET staff_no = 9 WHERE member_no = 9;
UPDATE MEMBER SET staff_no = 10 WHERE member_no = 10;
UPDATE MEMBER SET staff_no = 11 WHERE member_no = 11;
UPDATE MEMBER SET staff_no = 12 WHERE member_no = 12;
UPDATE MEMBER SET staff_no = 13 WHERE member_no = 13;
UPDATE MEMBER SET staff_no = 14 WHERE member_no = 14;
UPDATE MEMBER SET staff_no = 15 WHERE member_no = 15;
UPDATE MEMBER SET staff_no = 16 WHERE member_no = 16;
UPDATE MEMBER SET staff_no = 17 WHERE member_no = 17;
UPDATE MEMBER SET staff_no = 18 WHERE member_no = 18;
UPDATE MEMBER SET staff_no = 19 WHERE member_no = 19;
UPDATE MEMBER SET staff_no = 20 WHERE member_no = 20;
UPDATE MEMBER SET staff_no = 21 WHERE member_no = 21;
UPDATE MEMBER SET staff_no = 22 WHERE member_no = 22;
UPDATE MEMBER SET staff_no = 23 WHERE member_no = 23;
UPDATE MEMBER SET staff_no = 24 WHERE member_no = 24;
UPDATE MEMBER SET staff_no = 25 WHERE member_no = 25;
UPDATE MEMBER SET staff_no = 26 WHERE member_no = 26;
UPDATE MEMBER SET staff_no = 27 WHERE member_no = 27;
UPDATE MEMBER SET staff_no = 28 WHERE member_no = 28;
UPDATE MEMBER SET staff_no = 29 WHERE member_no = 29;
UPDATE MEMBER SET staff_no = 30 WHERE member_no = 30;
UPDATE MEMBER SET staff_no = 31 WHERE member_no = 31;
UPDATE MEMBER SET staff_no = 32 WHERE member_no = 32;
UPDATE MEMBER SET staff_no = 33 WHERE member_no = 33;
UPDATE MEMBER SET staff_no = 34 WHERE member_no = 34;
UPDATE MEMBER SET staff_no = 35 WHERE member_no = 35;
UPDATE MEMBER SET staff_no = 36 WHERE member_no = 36;
UPDATE MEMBER SET staff_no = 37 WHERE member_no = 37;
UPDATE MEMBER SET staff_no = 38 WHERE member_no = 38;
UPDATE MEMBER SET staff_no = 39 WHERE member_no = 39;
UPDATE MEMBER SET staff_no = 40 WHERE member_no = 40;
UPDATE MEMBER SET staff_no = 41 WHERE member_no = 41;
UPDATE MEMBER SET staff_no = 42 WHERE member_no = 42;
UPDATE MEMBER SET staff_no = 43 WHERE member_no = 43;
UPDATE MEMBER SET staff_no = 44 WHERE member_no = 44;
UPDATE MEMBER SET staff_no = 45 WHERE member_no = 45;
UPDATE MEMBER SET staff_no = 46 WHERE member_no = 46;
UPDATE MEMBER SET staff_no = 47 WHERE member_no = 47;
UPDATE MEMBER SET staff_no = 48 WHERE member_no = 48;
UPDATE MEMBER SET staff_no = 49 WHERE member_no = 49;
UPDATE MEMBER SET staff_no = 50 WHERE member_no = 50;

COMMIT;

-- DOCTOR 테이블 (10개: staff_no 1~10)
INSERT INTO DOCTOR (staff_no, department_no, doctor_position, doctor_specialty)
VALUES (1, 1, '과장', '소화기내과');

INSERT INTO DOCTOR (staff_no, department_no, doctor_position, doctor_specialty)
VALUES (2, 2, '전문의', '일반외과');

INSERT INTO DOCTOR (staff_no, department_no, doctor_position, doctor_specialty)
VALUES (3, 3, '전문의', '소아과');

INSERT INTO DOCTOR (staff_no, department_no, doctor_position, doctor_specialty)
VALUES (4, 4, '부장', '정형외과');

INSERT INTO DOCTOR (staff_no, department_no, doctor_position, doctor_specialty)
VALUES (5, 5, '전문의', '산부인과');

INSERT INTO DOCTOR (staff_no, department_no, doctor_position, doctor_specialty)
VALUES (6, 6, '과장', '이비인후과');

INSERT INTO DOCTOR (staff_no, department_no, doctor_position, doctor_specialty)
VALUES (7, 7, '전문의', '안과');

INSERT INTO DOCTOR (staff_no, department_no, doctor_position, doctor_specialty)
VALUES (8, 8, '전문의', '피부과');

INSERT INTO DOCTOR (staff_no, department_no, doctor_position, doctor_specialty)
VALUES (9, 9, '전문의', '정신건강의학과');

INSERT INTO DOCTOR (staff_no, department_no, doctor_position, doctor_specialty)
VALUES (10, 10, '과장', '영상의학과');

-- NURSE 테이블 (30개: staff_no 11~40)
INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (11, 1, '수간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (12, 1, '책임간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (13, 1, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (14, 2, '수간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (15, 2, '책임간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (16, 2, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (17, 3, '수간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (18, 3, '책임간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (19, 3, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (20, 4, '수간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (21, 4, '책임간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (22, 4, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (23, 5, '수간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (24, 5, '책임간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (25, 5, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (26, 6, '수간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (27, 6, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (28, 7, '책임간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (29, 7, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (30, 8, '책임간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (31, 8, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (32, 9, '수간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (33, 9, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (34, 10, '책임간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (35, 10, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (36, 1, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (37, 2, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (38, 3, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (39, 4, '일반간호사');

INSERT INTO NURSE (staff_no, department_no, nurse_position)
VALUES (40, 5, '일반간호사');

-- MANAGER 테이블 (10개: staff_no 41~50)
-- staff_role: 1=문의관리자, 2=시설관리자
INSERT INTO MANAGER (staff_no, department_no, staff_role)
VALUES (41, 1, 1);

INSERT INTO MANAGER (staff_no, department_no, staff_role)
VALUES (42, 2, 1);

INSERT INTO MANAGER (staff_no, department_no, staff_role)
VALUES (43, 3, 1);

INSERT INTO MANAGER (staff_no, department_no, staff_role)
VALUES (44, 4, 1);

INSERT INTO MANAGER (staff_no, department_no, staff_role)
VALUES (45, 5, 1);

INSERT INTO MANAGER (staff_no, department_no, staff_role)
VALUES (46, 6, 2);

INSERT INTO MANAGER (staff_no, department_no, staff_role)
VALUES (47, 7, 2);

INSERT INTO MANAGER (staff_no, department_no, staff_role)
VALUES (48, 8, 2);

INSERT INTO MANAGER (staff_no, department_no, staff_role)
VALUES (49, 9, 2);

INSERT INTO MANAGER (staff_no, department_no, staff_role)
VALUES (50, 10, 2);

COMMIT;

-- LICENSE 테이블 (50개 이상)
-- 의사 면허증 (staff_no 1~10)
INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의사면허증', 1);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '내과전문의', 1);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의사면허증', 2);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '외과전문의', 2);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의사면허증', 3);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '소아청소년과전문의', 3);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의사면허증', 4);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '정형외과전문의', 4);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의사면허증', 5);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '산부인과전문의', 5);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의사면허증', 6);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '이비인후과전문의', 6);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의사면허증', 7);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '안과전문의', 7);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의사면허증', 8);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '피부과전문의', 8);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의사면허증', 9);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '정신건강의학과전문의', 9);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의사면허증', 10);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '영상의학과전문의', 10);

-- 간호사 면허증 (staff_no 11~40)
INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 11);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 12);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 13);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 14);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 15);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 16);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 17);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 18);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 19);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 20);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 21);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 22);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 23);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 24);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 25);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 26);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 27);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 28);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 29);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 30);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 31);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 32);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 33);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 34);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 35);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 36);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 37);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 38);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 39);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '간호사면허증', 40);

-- 관리자 자격증 (staff_no 41~50)
INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '병원행정사', 41);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의료관리학사', 42);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '병원행정사', 43);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '의료관리학사', 44);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '병원행정사', 45);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '시설관리기사', 46);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '전기기사', 46);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '시설관리기사', 47);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '건축기사', 47);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '시설관리기사', 48);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '소방설비기사', 48);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '시설관리기사', 49);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '전기기사', 49);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '시설관리기사', 50);

INSERT INTO LICENSE (license_no, license_name, staff_no)
VALUES (LICENSE_SEQ.NEXTVAL, '위험물관리기사', 50);

COMMIT;

-- SCHEDULE 테이블 (100개 이상 - 직원별 주간 근무 스케줄)
-- staff_no 1~10 (의사들) - 월~금 근무
INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 1, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 1, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 1, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 1, '목', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 1, '금', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 2, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 2, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 2, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 2, '목', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 2, '금', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 3, '월', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 3, '화', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 3, '수', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 3, '목', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 3, '금', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 3, '토', '09:00', '13:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 4, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 4, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 4, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 4, '목', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 4, '금', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 5, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 5, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 5, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 5, '목', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 5, '금', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 6, '월', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 6, '화', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 6, '수', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 6, '목', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 6, '금', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 6, '토', '09:00', '13:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 7, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 7, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 7, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 7, '목', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 7, '금', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 8, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 8, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 8, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 8, '목', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 8, '금', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 9, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 9, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 9, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 9, '목', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 9, '금', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 10, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 10, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 10, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 10, '목', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 10, '금', '09:00', '18:00');

-- staff_no 11~20 (간호사들) - 교대근무
INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 11, '월', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 11, '화', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 11, '수', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 11, '목', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 11, '금', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 12, '월', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 12, '화', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 12, '수', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 12, '목', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 12, '금', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 13, '월', '22:00', '06:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 13, '화', '22:00', '06:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 13, '수', '22:00', '06:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 13, '목', '22:00', '06:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 13, '금', '22:00', '06:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 14, '월', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 14, '화', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 14, '수', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 14, '목', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 14, '금', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 15, '월', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 15, '화', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 15, '수', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 15, '목', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 15, '금', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 16, '월', '22:00', '06:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 16, '화', '22:00', '06:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 16, '수', '22:00', '06:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 16, '목', '22:00', '06:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 16, '금', '22:00', '06:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 17, '월', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 17, '화', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 17, '수', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 17, '목', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 17, '금', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 18, '토', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 18, '일', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 18, '월', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 18, '화', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 19, '수', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 19, '목', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 19, '금', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 19, '토', '14:00', '22:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 20, '월', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 20, '화', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 20, '수', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 20, '목', '08:00', '16:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 20, '금', '08:00', '16:00');

-- staff_no 21~40 (나머지 간호사들)
INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 21, '월', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 21, '화', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 21, '수', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 21, '목', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 21, '금', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 22, '월', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 22, '화', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 22, '수', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 22, '목', '09:00', '17:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 22, '금', '09:00', '17:00');

-- 이하 생략 (패턴 유사하게 계속)
INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 23, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 23, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 23, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 23, '목', '09:00', '18:00');

-- staff_no 41~50 (관리자들)
INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 41, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 41, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 41, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 41, '목', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 41, '금', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 42, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 42, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 42, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 42, '목', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 42, '금', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 50, '월', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 50, '화', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 50, '수', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 50, '목', '09:00', '18:00');

INSERT INTO SCHEDULE (schedule_no, staff_no, schedule_day, schedule_start_time, schedule_end_time)
VALUES (SCHEDULE_SEQ.NEXTVAL, 50, '금', '09:00', '18:00');

COMMIT;

-- GRADE 테이블 (60개 - 일반회원 50개 + 비회원 10개)
-- 요청 분포: 일반 60%(36명), VIP 10%(6명), 우선예약 30%(18명)

-- member_no 51~100 (일반회원)
INSERT INTO GRADE (member_no, grade_status) VALUES (51, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (52, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (53, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (54, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (55, 'VIP');
INSERT INTO GRADE (member_no, grade_status) VALUES (56, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (57, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (58, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (59, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (60, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (61, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (62, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (63, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (64, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (65, 'VIP');
INSERT INTO GRADE (member_no, grade_status) VALUES (66, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (67, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (68, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (69, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (70, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (71, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (72, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (73, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (74, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (75, 'VIP');
INSERT INTO GRADE (member_no, grade_status) VALUES (76, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (77, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (78, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (79, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (80, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (81, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (82, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (83, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (84, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (85, 'VIP');
INSERT INTO GRADE (member_no, grade_status) VALUES (86, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (87, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (88, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (89, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (90, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (91, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (92, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (93, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (94, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (95, 'VIP');
INSERT INTO GRADE (member_no, grade_status) VALUES (96, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (97, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (98, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (99, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (100, '일반');

-- member_no 101~110 (비회원)
INSERT INTO GRADE (member_no, grade_status) VALUES (101, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (102, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (103, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (104, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (105, 'VIP');
INSERT INTO GRADE (member_no, grade_status) VALUES (106, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (107, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (108, '일반');
INSERT INTO GRADE (member_no, grade_status) VALUES (109, '우선예약');
INSERT INTO GRADE (member_no, grade_status) VALUES (110, '일반');

-- PATIENT_TREATMENT_PROGRESS 테이블 (60개)
-- member_no 51~100 (일반회원)
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (51, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (52, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (53, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (54, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (55, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (56, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (57, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (58, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (59, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (60, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (61, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (62, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (63, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (64, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (65, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (66, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (67, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (68, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (69, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (70, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (71, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (72, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (73, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (74, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (75, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (76, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (77, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (78, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (79, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (80, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (81, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (82, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (83, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (84, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (85, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (86, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (87, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (88, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (89, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (90, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (91, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (92, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (93, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (94, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (95, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (96, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (97, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (98, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (99, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (100, 'F', 'T', 'F');

-- member_no 101~110 (비회원)
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (101, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (102, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (103, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (104, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (105, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (106, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (107, 'F', 'T', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (108, 'F', 'F', 'T');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (109, 'T', 'F', 'F');
INSERT INTO PATIENT_TREATMENT_PROGRESS (member_no, waiting, ongoing, completion) VALUES (110, 'F', 'F', 'T');

COMMIT;

-- RESERVATION 테이블
-- reservation_status가 '진행중', '완료'인 경우 담당의사(memo)에 맞춰 staff_no를 추가함
-- staff_no가 NULL이면 reservation_memo도 NULL로 변경함

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '복통 증상', 51, 1, TRUNC(SYSDATE) + 11/24, 1, '담당의: 김민준');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '수술 후 재진', 52, 2, TRUNC(SYSDATE) + 14/24, 2, '담당의: 이서연');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '아이 감기 증상', 53, 3, TRUNC(SYSDATE) + 09/24, 3, '담당의: 박지우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '무릎 통증', 54, 4, TRUNC(SYSDATE) + 13/24, 4, '담당의: 최예은');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '산전 검진', 55, 5, TRUNC(SYSDATE) + 10/24, 5, '담당의: 정도윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '귀 통증', 56, 6, TRUNC(SYSDATE) - 1 + 15/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '시력 검사', 57, 7, TRUNC(SYSDATE) - 1 + 16/24, 7, '담당의: 조시우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '피부 트러블', 58, 8, TRUNC(SYSDATE) - 2 + 12/24, 8, '담당의: 윤서아');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '우울증 상담', 59, 9, TRUNC(SYSDATE) - 2 + 11/24, 9, '담당의: 임준서');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', 'MRI 검사', 60, 10, TRUNC(SYSDATE) - 2 + 14/24, 10, '담당의: 한지민');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '소화불량', 61, 1, TRUNC(SYSDATE) - 2 + 10/24, 1, '담당의: 김민준');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '맹장염 의심', 62, 2, TRUNC(SYSDATE) - 18 + 16/24, 2, '담당의: 이서연');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '예방접종', 63, 3, TRUNC(SYSDATE) + 1 + 09/24, 3, '담당의: 박지우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '발목 염좌', 64, 4, TRUNC(SYSDATE) + 15/24, 4, '담당의: 최예은');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '임신 확인', 65, 5, TRUNC(SYSDATE) + 12/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '코피 증상', 66, 6, TRUNC(SYSDATE) - 8 + 13/24, 6, '담당의: 강하윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '녹내장 검사', 67, 7, TRUNC(SYSDATE) + 6 + 10/24, 7, '담당의: 조시우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '여드름 치료', 68, 8, TRUNC(SYSDATE) - 14 + 14/24, 8, '담당의: 윤서아');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '불면증', 69, 9, TRUNC(SYSDATE) + 8 + 16/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', 'CT 촬영', 70, 10, TRUNC(SYSDATE) + 3 + 09/24, 10, '담당의: 한지민');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '위염 증상', 71, 1, TRUNC(SYSDATE) - 27 + 15/24, 1, '담당의: 김민준');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '담석 수술', 72, 2, TRUNC(SYSDATE) - 19 + 12/24, 2, '담당의: 이서연');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '성장 검진', 73, 3, TRUNC(SYSDATE) + 2 + 11/24, 3, '담당의: 박지우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '허리 통증', 74, 4, TRUNC(SYSDATE) - 11 + 14/24, 4, '담당의: 최예은');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '출산 예정', 75, 5, TRUNC(SYSDATE) + 15 + 09/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '중이염', 76, 6, TRUNC(SYSDATE) - 6 + 10/24, 6, '담당의: 강하윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '백내장 수술', 77, 7, TRUNC(SYSDATE) + 12 + 13/24, 7, '담당의: 조시우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '알레르기 검사', 78, 8, TRUNC(SYSDATE) - 9 + 16/24, 8, '담당의: 윤서아');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '공황장애', 79, 9, TRUNC(SYSDATE) + 9 + 12/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', 'X-RAY 촬영', 80, 10, TRUNC(SYSDATE) + 1 + 10/24, 10, '담당의: 한지민');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '대장 내시경', 81, 1, TRUNC(SYSDATE) - 24 + 13/24, 1, '담당의: 김민준');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '맹장 수술', 82, 2, TRUNC(SYSDATE) + 15/24, 2, '담당의: 이서연');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '소아 천식', 83, 3, TRUNC(SYSDATE) + 1 + 16/24, 3, '담당의: 박지우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '골절 치료', 84, 4, TRUNC(SYSDATE) - 1 + 11/24, 4, '담당의: 최예은');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '산후 조리', 85, 5, TRUNC(SYSDATE) + 11 + 14/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '편도선염', 86, 6, TRUNC(SYSDATE) - 7 + 09/24, 6, '담당의: 강하윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '결막염 검사', 87, 7, TRUNC(SYSDATE) + 5 + 15/24, 7, '담당의: 조시우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '점 제거', 88, 8, TRUNC(SYSDATE) - 16 + 10/24, 8, '담당의: 윤서아');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '치매 검사', 89, 9, TRUNC(SYSDATE) + 40 + 11/24, 9, '담당의: 임준서');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '골밀도 검사', 90, 10, TRUNC(SYSDATE) - 15 + 13/24, 10, '담당의: 한지민');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '대장암 검사', 91, 1, TRUNC(SYSDATE) + 41 + 13/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '갑상선 수술', 92, 2, TRUNC(SYSDATE) + 42 + 10/24, 2, '담당의: 이서연');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '야뇨증 치료', 93, 3, TRUNC(SYSDATE) - 14 + 13/24, 3, '담당의: 박지우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '디스크 치료', 94, 4, TRUNC(SYSDATE) + 43 + 15/24, 4, '담당의: 최예은');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '자궁근종 검사', 95, 5, TRUNC(SYSDATE) - 13 + 12/24, 5, '담당의: 정도윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '코골이 치료', 96, 6, TRUNC(SYSDATE) + 32 + 11/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '안압 검사', 97, 7, TRUNC(SYSDATE) + 33 + 15/24, 7, '담당의: 조시우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '무좀 치료', 98, 8, TRUNC(SYSDATE) - 5 + 14/24, 8, '담당의: 윤서아');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '스트레스 상담', 99, 9, TRUNC(SYSDATE) + 34 + 12/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '내시경 검사', 100, 10, TRUNC(SYSDATE) + 35 + 12/24, 10, '담당의: 한지민');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '급성 복통', 101, 1, TRUNC(SYSDATE) - 1 + 09/24, 1, '담당의: 김민준');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '외상 치료', 102, 2, TRUNC(SYSDATE) - 2 + 13/24, 2, '담당의: 이서연');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '독감 증상', 103, 3, TRUNC(SYSDATE) + 1 + 13/24, 3, '담당의: 박지우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '발목 통증', 104, 4, TRUNC(SYSDATE) - 3 + 16/24, 4, '담당의: 최예은');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '건강 검진', 105, 5, TRUNC(SYSDATE) + 2 + 14/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '이명 증상', 106, 6, TRUNC(SYSDATE) - 4 + 11/24, 6, '담당의: 강하윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '시력 교정', 107, 7, TRUNC(SYSDATE) + 3 + 09/24, 7, '담당의: 조시우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '두드러기', 108, 8, TRUNC(SYSDATE) - 5 + 13/24, 8, '담당의: 윤서아');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '정신 상담', 109, 9, TRUNC(SYSDATE) + 4 + 13/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', 'MRI 검사', 110, 10, TRUNC(SYSDATE) - 6 + 11/24, 10, '담당의: 한지민');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '정기 검진', 51, 1, TRUNC(SYSDATE) + 20 + 12/24, 1, '담당의: 김민준');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '건강 검진', 52, 1, TRUNC(SYSDATE) + 25 + 14/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '재진', 53, 3, TRUNC(SYSDATE) + 18 + 10/24, 3, '담당의: 박지우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '물리치료', 54, 4, TRUNC(SYSDATE) + 22 + 12/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '산후 검진', 55, 5, TRUNC(SYSDATE) + 30 + 16/24, 5, '담당의: 정도윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '청력 검사', 56, 6, TRUNC(SYSDATE) - 28 + 12/24, 6, '담당의: 강하윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '안경 처방', 57, 7, TRUNC(SYSDATE) - 26 + 12/24, 7, '담당의: 조시우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '레이저 치료', 58, 8, TRUNC(SYSDATE) + 17 + 15/24, 8, '담당의: 윤서아');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '약물 치료', 59, 9, TRUNC(SYSDATE) - 29 + 15/24, 9, '담당의: 임준서');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '정밀 검사', 60, 10, TRUNC(SYSDATE) + 19 + 11/24, 10, '담당의: 한지민');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '위 검사', 61, 1, TRUNC(SYSDATE) - 30 + 11/24, 1, '담당의: 김민준');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '수술 후 검진', 62, 2, TRUNC(SYSDATE) + 21 + 11/24, 2, '담당의: 이서연');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '영유아 검진', 63, 3, TRUNC(SYSDATE) + 24 + 14/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '관절염 치료', 64, 4, TRUNC(SYSDATE) - 27 + 13/24, 4, '담당의: 최예은');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '초음파 검사', 65, 5, TRUNC(SYSDATE) + 26 + 13/24, 5, '담당의: 정도윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '후두염', 66, 6, TRUNC(SYSDATE) - 25 + 15/24, 6, '담당의: 강하윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '망막 검사', 67, 7, TRUNC(SYSDATE) + 16/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '피부암 검사', 68, 8, TRUNC(SYSDATE) - 24 + 15/24, 8, '담당의: 윤서아');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '심리 검사', 69, 9, TRUNC(SYSDATE) + 23 + 15/24, 9, '담당의: 임준서');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', 'PET-CT', 70, 10, TRUNC(SYSDATE) - 23 + 14/24, 10, '담당의: 한지민');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '간 기능 검사', 71, 1, TRUNC(SYSDATE) + 09/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '복강경 수술', 72, 2, TRUNC(SYSDATE) + 29 + 09/24, 2, '담당의: 이서연');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '아토피 치료', 73, 3, TRUNC(SYSDATE) - 22 + 13/24, 3, '담당의: 박지우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '척추 교정', 74, 4, TRUNC(SYSDATE) + 31 + 14/24, 4, '담당의: 최예은');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '난임 상담', 75, 5, TRUNC(SYSDATE) - 21 + 15/24, 5, '담당의: 정도윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '보청기 상담', 76, 6, TRUNC(SYSDATE) + 32 + 16/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '라식 수술', 77, 7, TRUNC(SYSDATE) + 33 + 14/24, 7, '담당의: 조시우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '탈모 치료', 78, 8, TRUNC(SYSDATE) - 20 + 09/24, 8, '담당의: 윤서아');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '인지 검사', 79, 9, TRUNC(SYSDATE) + 34 + 09/24, 9, '담당의: 임준서');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '유방 촬영', 80, 10, TRUNC(SYSDATE) - 19 + 15/24, 10, '담당의: 한지민');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '당뇨 검사', 81, 1, TRUNC(SYSDATE) + 35 + 10/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '치핵 수술', 82, 2, TRUNC(SYSDATE) + 36 + 14/24, 2, '담당의: 이서연');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '소아 비만', 83, 3, TRUNC(SYSDATE) - 18 + 12/24, 3, '담당의: 박지우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '어깨 수술', 84, 4, TRUNC(SYSDATE) + 37 + 11/24, 4, '담당의: 최예은');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '갱년기 치료', 85, 5, TRUNC(SYSDATE) - 17 + 11/24, 5, '담당의: 정도윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '알레르기 비염', 86, 6, TRUNC(SYSDATE) + 38 + 11/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '사시 교정', 87, 7, TRUNC(SYSDATE) + 39 + 11/24, 7, '담당의: 조시우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '점 제거', 88, 8, TRUNC(SYSDATE) - 16 + 10/24, 8, '담당의: 윤서아');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '치매 검사', 89, 9, TRUNC(SYSDATE) + 40 + 11/24, 9, '담당의: 임준서');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '골밀도 검사', 90, 10, TRUNC(SYSDATE) - 15 + 13/24, 10, '담당의: 한지민');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '대장암 검사', 91, 1, TRUNC(SYSDATE) + 41 + 13/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '갑상선 수술', 92, 2, TRUNC(SYSDATE) + 42 + 10/24, 2, '담당의: 이서연');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '야뇨증 치료', 93, 3, TRUNC(SYSDATE) - 14 + 13/24, 3, '담당의: 박지우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '디스크 치료', 94, 4, TRUNC(SYSDATE) + 43 + 15/24, 4, '담당의: 최예은');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '자궁근종 검사', 95, 5, TRUNC(SYSDATE) - 13 + 12/24, 5, '담당의: 정도윤');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '코골이 치료', 96, 6, TRUNC(SYSDATE) + 32 + 11/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '안압 검사', 97, 7, TRUNC(SYSDATE) + 33 + 15/24, 7, '담당의: 조시우');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '완료', '무좀 치료', 98, 8, TRUNC(SYSDATE) - 5 + 14/24, 8, '담당의: 윤서아');

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '대기', '스트레스 상담', 99, 9, TRUNC(SYSDATE) + 34 + 12/24, NULL, NULL);

INSERT INTO RESERVATION (reservation_no, reservation_status, reservation_notes, member_no, department_no, treatment_date, staff_no, reservation_memo)
VALUES (RESERVATION_SEQ.NEXTVAL, '진행중', '내시경 검사', 100, 10, TRUNC(SYSDATE) + 35 + 12/24, 10, '담당의: 한지민');

COMMIT;

INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '급성 인두염(감기)', 'J02', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '상세불명의 위염', 'K29.7', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '본태성 고혈압', 'I10', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '2형 당뇨병', 'E11', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '알레르기 비염', 'J30.4', 'F');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '발목의 염좌 및 긴장', 'S93.4', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '아토피 피부염', 'L20', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '급성 충수염(맹장)', 'K35', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '노년성 백내장', 'H25', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '요추 추간판 탈출증(디스크)', 'M51', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '역류성 식도염', 'K21', 'F');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '긴장성 두통', 'G44.2', 'F');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '불면증', 'G47.0', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '과민성 대장 증후군', 'K58', 'F');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '골절(팔)', 'S52', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '결막염', 'H10', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '중이염', 'H66', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '대상포진', 'B02', 'T');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '지방간', 'K76.0', 'F');
INSERT INTO DIAGNOSIS (diagnosis_no, diagnosis_name, diagnosis_code, is_primary_diagnosis) VALUES (DIAGNOSIS_SEQ.NEXTVAL, '공황장애', 'F41.0', 'T');
COMMIT;

INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '타이레놀 500mg', 'P001', '1일 3회 식후 30분');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '아스피린 100mg', 'P002', '1일 1회 식후 즉시');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '훼스탈 플러스', 'P003', '소화불량 시 1일 2회');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '아목시실린(항생제)', 'P004', '1일 3회 8시간 간격 복용');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '케토톱 플라스타', 'P005', '환부에 1일 1회 부착');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '인공눈물 0.5%', 'P006', '수시로 점안');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '알러지정(항히스타민)', 'P007', '취침 전 1회 복용');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '노바스크 5mg(혈압약)', 'P008', '매일 아침 식전 1회');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '메트포르민(당뇨약)', 'P009', '1일 2회 식사 직후');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '겔포스 엠', 'P010', '속쓰림 증상 시 복용');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '졸피뎀(수면제)', 'P011', '취침 직전 1회 (주의요망)');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '테라플루 데이타임', 'P012', '감기 증상 시 따뜻한 물에 타서 복용');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '후시딘 연고', 'P013', '상처 부위 도포');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '비타민D 주사', 'P014', '원내 투여');
INSERT INTO PRESCRIPTION (prescription_no, prescription_name, prescription_code, content) VALUES (PRESCRIPTION_SEQ.NEXTVAL, '물리치료 처방', 'P015', '온찜질 및 전기자극 치료 30분');
COMMIT;

-- VISIT & MEDICAL 테이블
-- 1번 예약(완료)에 대한 방문/진료
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) VALUES (VISIT_SEQ.NEXTVAL, 1, 51, TRUNC(SYSDATE) - 25 + 11/24);
INSERT INTO MEDICAL (medical_no, record_date, chief_complaint, treatments_count, visit_no) VALUES (MEDICAL_SEQ.NEXTVAL, TRUNC(SYSDATE) - 25 + 11/24, '복통이 심하고 설사가 지속됨', 1, VISIT_SEQ.CURRVAL);
INSERT INTO MEDICAL_RECORD (medical_record_no, prescription_no, diagnosis_no, member_no) VALUES (MEDICAL_RECORD_SEQ.NEXTVAL, 3, 2, 51);
INSERT INTO MEDICAL_ORDER (order_no, order_description, reservation_no, medical_record_no) VALUES (MEDICAL_ORDER_SEQ.NEXTVAL, '자극적인 음식 피하고 죽 섭취 요망', 1, MEDICAL_RECORD_SEQ.CURRVAL);

-- 3번 예약(완료)에 대한 방문/진료
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) VALUES (VISIT_SEQ.NEXTVAL, 3, 53, TRUNC(SYSDATE) - 20 + 09/24);
INSERT INTO MEDICAL (medical_no, record_date, chief_complaint, treatments_count, visit_no) VALUES (MEDICAL_SEQ.NEXTVAL, TRUNC(SYSDATE) - 20 + 09/24, '열이 38도까지 오르고 기침함', 1, VISIT_SEQ.CURRVAL);
INSERT INTO MEDICAL_RECORD (medical_record_no, prescription_no, diagnosis_no, member_no) VALUES (MEDICAL_RECORD_SEQ.NEXTVAL, 12, 1, 53);
INSERT INTO MEDICAL_ORDER (order_no, order_description, reservation_no, medical_record_no) VALUES (MEDICAL_ORDER_SEQ.NEXTVAL, '충분한 수분 섭취 및 휴식', 3, MEDICAL_RECORD_SEQ.CURRVAL);

-- 5번 예약(완료)에 대한 방문/진료
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) VALUES (VISIT_SEQ.NEXTVAL, 5, 55, TRUNC(SYSDATE) - 15 + 10/24);
INSERT INTO MEDICAL (medical_no, record_date, chief_complaint, treatments_count, visit_no) VALUES (MEDICAL_SEQ.NEXTVAL, TRUNC(SYSDATE) - 15 + 10/24, '임신 20주차 정기 검진', 1, VISIT_SEQ.CURRVAL);
INSERT INTO MEDICAL_RECORD (medical_record_no, prescription_no, diagnosis_no, member_no) VALUES (MEDICAL_RECORD_SEQ.NEXTVAL, 14, NULL, 55);
INSERT INTO MEDICAL_ORDER (order_no, order_description, reservation_no, medical_record_no) VALUES (MEDICAL_ORDER_SEQ.NEXTVAL, '태아 초음파 정상, 철분제 복용 권장', 5, MEDICAL_RECORD_SEQ.CURRVAL);

-- 7번 예약(완료)에 대한 방문/진료
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) VALUES (VISIT_SEQ.NEXTVAL, 7, 57, TRUNC(SYSDATE) - 10 + 16/24);
INSERT INTO MEDICAL (medical_no, record_date, chief_complaint, treatments_count, visit_no) VALUES (MEDICAL_SEQ.NEXTVAL, TRUNC(SYSDATE) - 10 + 16/24, '최근 눈이 침침하고 잘 안보임', 1, VISIT_SEQ.CURRVAL);
INSERT INTO MEDICAL_RECORD (medical_record_no, prescription_no, diagnosis_no, member_no) VALUES (MEDICAL_RECORD_SEQ.NEXTVAL, 6, 9, 57);
INSERT INTO MEDICAL_ORDER (order_no, order_description, reservation_no, medical_record_no) VALUES (MEDICAL_ORDER_SEQ.NEXTVAL, '자외선 차단 안경 착용 권고', 7, MEDICAL_RECORD_SEQ.CURRVAL);

-- 11번 예약(완료)에 대한 방문/진료
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) VALUES (VISIT_SEQ.NEXTVAL, 11, 61, TRUNC(SYSDATE) - 22 + 10/24);
INSERT INTO MEDICAL (medical_no, record_date, chief_complaint, treatments_count, visit_no) VALUES (MEDICAL_SEQ.NEXTVAL, TRUNC(SYSDATE) - 22 + 10/24, '식사 후 명치가 아픔', 1, VISIT_SEQ.CURRVAL);
INSERT INTO MEDICAL_RECORD (medical_record_no, prescription_no, diagnosis_no, member_no) VALUES (MEDICAL_RECORD_SEQ.NEXTVAL, 10, 11, 61);
INSERT INTO MEDICAL_ORDER (order_no, order_description, reservation_no, medical_record_no) VALUES (MEDICAL_ORDER_SEQ.NEXTVAL, '식후 바로 눕지 말 것', 11, MEDICAL_RECORD_SEQ.CURRVAL);

-- 14번 예약(완료)에 대한 방문/진료
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) VALUES (VISIT_SEQ.NEXTVAL, 14, 64, TRUNC(SYSDATE) - 12 + 15/24);
INSERT INTO MEDICAL (medical_no, record_date, chief_complaint, treatments_count, visit_no) VALUES (MEDICAL_SEQ.NEXTVAL, TRUNC(SYSDATE) - 12 + 15/24, '계단에서 구른 후 발목 통증', 1, VISIT_SEQ.CURRVAL);
INSERT INTO MEDICAL_RECORD (medical_record_no, prescription_no, diagnosis_no, member_no) VALUES (MEDICAL_RECORD_SEQ.NEXTVAL, 5, 6, 64);
INSERT INTO MEDICAL_ORDER (order_no, order_description, reservation_no, medical_record_no) VALUES (MEDICAL_ORDER_SEQ.NEXTVAL, '2주간 무리한 운동 금지, 반깁스 착용', 14, MEDICAL_RECORD_SEQ.CURRVAL);

-- 18번 예약(완료)에 대한 방문/진료
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) VALUES (VISIT_SEQ.NEXTVAL, 18, 68, TRUNC(SYSDATE) - 14 + 14/24);
INSERT INTO MEDICAL (medical_no, record_date, chief_complaint, treatments_count, visit_no) VALUES (MEDICAL_SEQ.NEXTVAL, TRUNC(SYSDATE) - 14 + 14/24, '얼굴에 붉은 반점과 가려움', 1, VISIT_SEQ.CURRVAL);
INSERT INTO MEDICAL_RECORD (medical_record_no, prescription_no, diagnosis_no, member_no) VALUES (MEDICAL_RECORD_SEQ.NEXTVAL, 7, 7, 68);
INSERT INTO MEDICAL_ORDER (order_no, order_description, reservation_no, medical_record_no) VALUES (MEDICAL_ORDER_SEQ.NEXTVAL, '보습제 수시로 도포할 것', 18, MEDICAL_RECORD_SEQ.CURRVAL);

-- 22번 예약(완료)에 대한 방문/진료
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) VALUES (VISIT_SEQ.NEXTVAL, 22, 72, TRUNC(SYSDATE) - 19 + 12/24);
INSERT INTO MEDICAL (medical_no, record_date, chief_complaint, treatments_count, visit_no) VALUES (MEDICAL_SEQ.NEXTVAL, TRUNC(SYSDATE) - 19 + 12/24, '복강경 담석 수술 후 경과 확인', 1, VISIT_SEQ.CURRVAL);
INSERT INTO MEDICAL_RECORD (medical_record_no, prescription_no, diagnosis_no, member_no) VALUES (MEDICAL_RECORD_SEQ.NEXTVAL, 4, NULL, 72);
INSERT INTO MEDICAL_ORDER (order_no, order_description, reservation_no, medical_record_no) VALUES (MEDICAL_ORDER_SEQ.NEXTVAL, '수술 부위 소독 및 실밥 제거', 22, MEDICAL_RECORD_SEQ.CURRVAL);

-- 30번 예약(완료)에 대한 방문/진료
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) VALUES (VISIT_SEQ.NEXTVAL, 30, 80, TRUNC(SYSDATE) - 19 + 15/24);
INSERT INTO MEDICAL (medical_no, record_date, chief_complaint, treatments_count, visit_no) VALUES (MEDICAL_SEQ.NEXTVAL, TRUNC(SYSDATE) - 19 + 15/24, '건강검진상 유방 석회화 소견', 1, VISIT_SEQ.CURRVAL);
INSERT INTO MEDICAL_RECORD (medical_record_no, prescription_no, diagnosis_no, member_no) VALUES (MEDICAL_RECORD_SEQ.NEXTVAL, NULL, NULL, 80);
INSERT INTO MEDICAL_ORDER (order_no, order_description, reservation_no, medical_record_no) VALUES (MEDICAL_ORDER_SEQ.NEXTVAL, '추가 조직검사 예약 잡음', 30, MEDICAL_RECORD_SEQ.CURRVAL);

-- 101번 비회원 예약(완료)에 대한 방문/진료
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) VALUES (VISIT_SEQ.NEXTVAL, 101, 101, TRUNC(SYSDATE) - 1 + 09/24);
INSERT INTO MEDICAL (medical_no, record_date, chief_complaint, treatments_count, visit_no) VALUES (MEDICAL_SEQ.NEXTVAL, TRUNC(SYSDATE) - 1 + 09/24, '극심한 하복부 통증(응급)', 1, VISIT_SEQ.CURRVAL);
INSERT INTO MEDICAL_RECORD (medical_record_no, prescription_no, diagnosis_no, member_no) VALUES (MEDICAL_RECORD_SEQ.NEXTVAL, 4, 8, 101);
INSERT INTO MEDICAL_ORDER (order_no, order_description, reservation_no, medical_record_no) VALUES (MEDICAL_ORDER_SEQ.NEXTVAL, '응급 수술 진행함', 101, MEDICAL_RECORD_SEQ.CURRVAL);

COMMIT;

-- FACILITY_RESERVATION 테이블
INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', 'MRI 촬영', TRUNC(SYSDATE) + 2 + 16/24, '폐쇄공포증 확인 필요', 1, 60, 1);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '흉부 X-RAY', TRUNC(SYSDATE) - 1 + 12/24, NULL, 10, 101, 2);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '위 내시경', TRUNC(SYSDATE) + 15 + 16/24, '수면 마취 동의서 필요', 1, 81, 3);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '복부 초음파', TRUNC(SYSDATE) + 5 + 09/24, '검사 전 8시간 금식', 1, 65, 4);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '뇌 CT', TRUNC(SYSDATE) + 3 + 16/24, '조영제 알러지 확인', 9, 70, 5);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '발목 X-RAY', TRUNC(SYSDATE) - 12 + 09/24, NULL, 4, 64, 2);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '취소', '대장 내시경', TRUNC(SYSDATE) - 5 + 14/24, '환자 개인사정 취소', 1, 81, 3);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '태아 초음파', TRUNC(SYSDATE) + 26 + 13/24, NULL, 5, 65, 4);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '무릎 MRI', TRUNC(SYSDATE) - 30 + 12/24, '보험 서류 발급', 4, 54, 1);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '전신 CT', TRUNC(SYSDATE)  + 16/24, NULL, 1, 52, 5);

-- MRI (Facility_no: 1) 예약 데이터
INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '뇌혈관 MRI 정밀 검사', TRUNC(SYSDATE) - 20 + 14/24, '조영제 부작용 없음 확인', 9, 51, 1);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '무릎 관절 MRI', TRUNC(SYSDATE) + 5 + 13/24, '폐쇄공포증 없음', 4, 52, 1);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '척추 디스크 정밀 확인', TRUNC(SYSDATE)  + 13/24, '보호자 동반 예정', 4, 53, 1);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '어깨 회전근개 파열 확인', TRUNC(SYSDATE) - 15 + 12/24, NULL, 4, 54, 1);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '두통 원인 규명(뇌 MRI)', TRUNC(SYSDATE) + 14 + 14/24, '금식 안내 완료', 9, 55, 1);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '고관절 통증 정밀 검사', TRUNC(SYSDATE) - 5 + 09/24, NULL, 4, 56, 1);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '목 디스크(경추) 검사', TRUNC(SYSDATE) + 20 + 12/24, '오전 시간 선호', 9, 57, 1);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '발목 인대 손상 확인', TRUNC(SYSDATE) - 25 + 14/24, NULL, 4, 58, 1);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '치매 조기 진단 MRI', TRUNC(SYSDATE) + 7 + 12/24, '보호자 필수 동반', 9, 59, 1);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '허리 통증 원인 분석', TRUNC(SYSDATE) - 8 + 11/24, NULL, 4, 60, 1);

-- X-RAY (Facility_no: 2) 예약 데이터
INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '흉부 X-RAY (결핵 검사)', TRUNC(SYSDATE) - 2 + 09/24, NULL, 1, 61, 2);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '손목 골절 의심', TRUNC(SYSDATE) + 1 + 14/24, '응급 촬영 가능성 있음', 4, 62, 2);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '폐렴 확인용 흉부 촬영', TRUNC(SYSDATE) - 10 + 16/24, NULL, 3, 63, 2);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '성장판 검사', TRUNC(SYSDATE) + 3 + 14/24, '소아과 연계', 3, 64, 2);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '발가락 미세 골절 확인', TRUNC(SYSDATE) - 22 + 09/24, NULL, 4, 65, 2);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '척추 측만증 검사', TRUNC(SYSDATE) + 12 + 09/24, NULL, 4, 66, 2);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '복부 가스 패턴 확인', TRUNC(SYSDATE) - 4 + 14/24, NULL, 1, 67, 2);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '부비동염(축농증) 확인', TRUNC(SYSDATE) + 2 + 12/24, '이비인후과 의뢰', 6, 68, 2);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '교통사고 후 전신 촬영', TRUNC(SYSDATE) - 30 + 16/24, '보험 제출용 CD 복사', 2, 69, 2);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '입원 전 흉부 촬영', TRUNC(SYSDATE) + 4 + 12/24, NULL, 1, 70, 2);

-- 내시경 (Facility_no: 3) 예약 데이터
INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '위 수면 내시경', TRUNC(SYSDATE) - 18 + 09/24, '조직검사 시행함', 1, 71, 3);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '대장 내시경 (용종 제거)', TRUNC(SYSDATE) + 15 + 12/24, '장 정결제 복용 안내', 1, 72, 3);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '위 내시경 정기 검진', TRUNC(SYSDATE) + 25 + 13/24, '보호자 동반 필요', 1, 73, 3);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '소화성 궤양 확인', TRUNC(SYSDATE) - 40 + 10/24, '헬리코박터 검사 포함', 1, 74, 3);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '대장 내시경', TRUNC(SYSDATE) + 8 + 10/24, '오후 검사 희망', 2, 75, 3);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '역류성 식도염 추적 관찰', TRUNC(SYSDATE) - 12 + 11/24, NULL, 1, 76, 3);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '혈변 원인 파악', TRUNC(SYSDATE) + 1 + 15/24, '응급 내시경 가능성', 2, 77, 3);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '위암 검진', TRUNC(SYSDATE) - 60 + 09/24, '이상 소견 없음', 1, 78, 3);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '십이지장 궤양 확인', TRUNC(SYSDATE) + 6 + 13/24, NULL, 1, 79, 3);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '직장 내시경', TRUNC(SYSDATE) - 5 + 12/24, NULL, 2, 80, 3);

-- 초음파 (Facility_no: 4) 예약 데이터
INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '상복부 초음파(간, 담낭)', TRUNC(SYSDATE) - 9 + 11/24, '지방간 소견', 1, 81, 4);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '임신 초기 정밀 초음파', TRUNC(SYSDATE) + 11 + 13/24, '산모 수첩 지참', 5, 82, 4);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '심장 초음파', TRUNC(SYSDATE) + 18 + 13/24, '순환기내과 협진', 1, 83, 4);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '갑상선 초음파', TRUNC(SYSDATE) - 14 + 15/24, '결절 크기 0.5cm', 1, 84, 4);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '하복부 초음파(자궁)', TRUNC(SYSDATE) + 5 + 15/24, '방광 채우고 내원', 5, 85, 4);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '경동맥 초음파', TRUNC(SYSDATE) - 28 + 11/24, '혈류 속도 정상', 1, 86, 4);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '유방 초음파', TRUNC(SYSDATE) + 13 + 11/24, NULL, 2, 87, 4);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '신장(콩팥) 초음파', TRUNC(SYSDATE) - 3 + 10/24, '신석 확인됨', 1, 88, 4);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '전립선 초음파', TRUNC(SYSDATE) + 9 + 09/24, NULL, 1, 89, 4);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '근골격계 초음파(어깨)', TRUNC(SYSDATE) - 21 + 09/24, '염증 소견 있음', 4, 90, 4);

-- CT (Facility_no: 5) 예약 데이터
INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '복부 골반 CT', TRUNC(SYSDATE) - 7 + 09/24, '조영제 사용함', 2, 91, 5);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '두부(Head) CT', TRUNC(SYSDATE) + 2 + 10/24, '외상 후 두통 지속', 9, 92, 5);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '흉부 저선량 CT', TRUNC(SYSDATE) + 22 + 16/24, '폐암 검진', 1, 93, 5);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '척추 CT', TRUNC(SYSDATE) - 35 + 10/24, '디스크 확진', 4, 94, 5);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '관상동맥 조영 CT', TRUNC(SYSDATE) + 16 + 15/24, '심박수 조절 약물 복용', 1, 95, 5);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '부비동 CT', TRUNC(SYSDATE) - 11 + 13/24, '만성 축농증 확인', 6, 96, 5);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '대기', '요로 결석 확인 CT', TRUNC(SYSDATE) + 1 + 12/24, '극심한 통증 호소', 1, 97, 5);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '안와(눈) CT', TRUNC(SYSDATE) - 19 + 09/24, '안구 돌출 원인 파악', 7, 98, 5);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '확정', '경추(목) CT', TRUNC(SYSDATE) + 8 + 16/24, NULL, 4, 99, 5);

INSERT INTO FACILITY_RESERVATION (facility_reservation_no, reservation_status, reservation_notes, treatment_date, facility_reservation_memo, staff_no, member_no, facility_no)
VALUES (FACILITY_RESERVATION_SEQ.NEXTVAL, '완료', '하지 혈관 CT', TRUNC(SYSDATE) - 45 + 11/24, '혈전 유무 확인', 2, 100, 5);
COMMIT;

-- BOARD (게시글)
INSERT INTO BOARD (board_id, board_type, board_title, board_content, board_date, board_priority, board_status, member_no, department_no, board_secret_type, board_delete_type, board_email)
VALUES (BOARD_SEQ.NEXTVAL, 2, '진료 예약 변경 문의', '다음주 월요일 예약을 화요일로 변경 가능한가요?', SYSDATE - 3, 2, '완료', 51, 1, 'F', 'F', 'test1@mail.com');

INSERT INTO BOARD (board_id, board_type, board_title, board_content, board_date, board_priority, board_status, member_no, department_no, board_secret_type, board_delete_type, board_email)
VALUES (BOARD_SEQ.NEXTVAL, 1, '진료비 결제 오류', '카드로 결제했는데 중복 승인된 것 같습니다.', SYSDATE - 2, 1, '대기중', 52, 1, 'T', 'F', 'test2@mail.com');

INSERT INTO BOARD (board_id, board_type, board_title, board_content, board_date, board_priority, board_status, member_no, department_no, board_secret_type, board_delete_type, board_email)
VALUES (BOARD_SEQ.NEXTVAL, 5, '주차장 이용 관련', '진료 시 무료 주차 몇 시간 가능한가요?', SYSDATE - 5, 3, '완료', 53, 1, 'F', 'F', 'test3@mail.com');

INSERT INTO BOARD (board_id, board_type, board_title, board_content, board_date, board_priority, board_status, member_no, department_no, board_secret_type, board_delete_type, board_email)
VALUES (BOARD_SEQ.NEXTVAL, 3, '건강검진 결과 언제 나오나요', '지난주에 검사받았는데 아직 연락이 없어서요.', SYSDATE - 1, 2, '처리중', 54, 1, 'T', 'F', 'test4@mail.com');

INSERT INTO BOARD (board_id, board_type, board_title, board_content, board_date, board_priority, board_status, member_no, department_no, board_secret_type, board_delete_type, board_email)
VALUES (BOARD_SEQ.NEXTVAL, 2, '처방전 재발급 문의', '처방전을 잃어버렸는데 재발급 가능한가요?', SYSDATE, 2, '대기중', 55, 2, 'F', 'F', 'test5@mail.com');

-- ANSWER (답변 - 완료된 게시글에만)
INSERT INTO ANSWER (answer_no, board_id, staff_no, answer_content, answer_date)
VALUES (ANSWER_SEQ.NEXTVAL, 1, 41, '안녕하세요. 예약 변경 도와드렸습니다. 화요일 2시 방문 부탁드립니다.', SYSDATE - 2);

INSERT INTO ANSWER (answer_no, board_id, staff_no, answer_content, answer_date)
VALUES (ANSWER_SEQ.NEXTVAL, 3, 46, '안녕하세요. 외래 진료 시 4시간 무료 주차 가능합니다.', SYSDATE - 4);

-- NOTIFICATION (공지사항)
INSERT INTO NOTIFICATION (notification_no, staff_no, notification_title, notification_content, notification_date, notification_delete_type, notification_type, notified_type, department_no)
VALUES (NOTIFICATION_SEQ.NEXTVAL, 41, '추석 연휴 진료 안내', '추석 연휴 기간 동안 응급실만 운영합니다.', SYSDATE - 10, 'F', 2, 3, 1);

INSERT INTO NOTIFICATION (notification_no, staff_no, notification_title, notification_content, notification_date, notification_delete_type, notification_type, notified_type, department_no)
VALUES (NOTIFICATION_SEQ.NEXTVAL, 50, 'MRI 장비 점검 안내', '10월 5일 MRI 장비 점검으로 인해 검사가 불가능합니다.', SYSDATE - 5, 'F', 3, 3, 10);

INSERT INTO NOTIFICATION (notification_no, staff_no, notification_title, notification_content, notification_date, notification_delete_type, notification_type, notified_type, department_no)
VALUES (NOTIFICATION_SEQ.NEXTVAL, 42, '독감 예방접종 실시', '10월부터 독감 예방접종을 실시하오니 예약 바랍니다.', SYSDATE, 'F', 3, 1, 1);

COMMIT;

-- ABSENCE (직원 근태)
-- 1번 의사 (정상 출근)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')||' 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), null, 1, 15, TRUNC(SYSDATE), 1);
-- 1번 의사 (정상 출근)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')||' 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), null, 1, 15, TRUNC(SYSDATE), 3);-- 1번 의사 (정상 출근)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')||' 09:50:00', 'YYYY-MM-DD HH24:MI:SS'), null, 2, 15, TRUNC(SYSDATE), 4);-- 1번 의사 (정상 출근)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')||' 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), null, 1, 15, TRUNC(SYSDATE), 5);-- 1번 의사 (정상 출근)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')||' 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')||' 11:50:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 15, TRUNC(SYSDATE), 6);-- 1번 의사 (정상 출근)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')||' 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), null, 1, 15, TRUNC(SYSDATE), 7);-- 1번 의사 (정상 출근)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')||' 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), null, 1, 15, TRUNC(SYSDATE), 8);

-- 11번 간호사 (지각)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')||' 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), null, 2, 12, TRUNC(SYSDATE), 11);

-- 41번 관리자 (조퇴)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')||' 08:55:00', 'YYYY-MM-DD HH24:MI:SS'), null, 3, 10, TRUNC(SYSDATE), 41);

-- 1. 정상 출근 (일반적인 패턴)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-02 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-02 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 1);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-02 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-02 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 2);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-02 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-02 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 12, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 3);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-02 08:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-02 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 4);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-02 08:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-02 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 13, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 5);

-- 2. 지각 케이스 (9시 넘어서 출근)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-03 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-03 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 15, TO_DATE('2023-10-03', 'YYYY-MM-DD'), 6);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-03 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-03 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 11, TO_DATE('2023-10-03', 'YYYY-MM-DD'), 7);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-04 09:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-04 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 14, TO_DATE('2023-10-04', 'YYYY-MM-DD'), 8);

-- 3. 조퇴 케이스 (아프거나 반차)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-04 08:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-04 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 10, TO_DATE('2023-10-04', 'YYYY-MM-DD'), 9);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-05 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-05 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 12, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 10);

-- 4. 간호사 교대 근무 (3교대 반영)
-- 데이 (07:00 ~ 15:00)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-05 06:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-05 15:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 11);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-05 06:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-05 15:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 12);

-- 이브닝 (15:00 ~ 23:00)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-05 14:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-05 23:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 13, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 13);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-05 14:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-05 23:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 14);

-- 나이트 (23:00 ~ 07:00)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-05 22:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-06 07:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 12, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 15);

-- 5. 의사/관리자 정상 근무 및 야근 (다양한 패턴)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-06 08:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-06 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 10, TO_DATE('2023-10-06', 'YYYY-MM-DD'), 1); -- 야근

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-06 08:58:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-06 18:01:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-06', 'YYYY-MM-DD'), 41);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-06 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-06 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-06', 'YYYY-MM-DD'), 42);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-09 08:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-09 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-09', 'YYYY-MM-DD'), 43);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-09 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-09 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 11, TO_DATE('2023-10-09', 'YYYY-MM-DD'), 44);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-09 09:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-09 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 13, TO_DATE('2023-10-09', 'YYYY-MM-DD'), 45); -- 지각

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-10 08:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-10 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-10', 'YYYY-MM-DD'), 46);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-10 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-10 17:55:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 12, TO_DATE('2023-10-10', 'YYYY-MM-DD'), 47);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-10 08:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-10 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 9, TO_DATE('2023-10-10', 'YYYY-MM-DD'), 48);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-11 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-11 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-11', 'YYYY-MM-DD'), 49);

INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no)
VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-11 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-11 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-11', 'YYYY-MM-DD'), 50);

-- 6. 반복 데이터 생성 (다양한 날짜와 직원으로 75개 추가)
-- 10월 12일
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2025-11-15 08:48:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-11-15 18:02:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2025-11-15', 'YYYY-MM-DD'), 2);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2025-11-16 08:52:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-11-16 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2025-11-16', 'YYYY-MM-DD'), 2);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2025-11-17 09:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-11-17 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 12, TO_DATE('2025-11-17', 'YYYY-MM-DD'), 2); -- 지각
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2025-11-18 08:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-11-18 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2025-11-18', 'YYYY-MM-DD'), 2);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2025-11-19 08:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-11-19 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 13, TO_DATE('2025-11-19', 'YYYY-MM-DD'), 2);

-- 10월 13일
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-13 08:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-13 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-13', 'YYYY-MM-DD'), 6);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-13 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-13 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 11, TO_DATE('2023-10-13', 'YYYY-MM-DD'), 7); -- 조퇴
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-13 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-13 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-13', 'YYYY-MM-DD'), 8);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-13 08:59:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-13 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 10, TO_DATE('2023-10-13', 'YYYY-MM-DD'), 9);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-13 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-13 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 12, TO_DATE('2023-10-13', 'YYYY-MM-DD'), 10);

-- 10월 16일
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-16 06:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-16 15:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-16', 'YYYY-MM-DD'), 11);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-16 06:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-16 15:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-16', 'YYYY-MM-DD'), 12);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-16 14:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-16 23:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 13, TO_DATE('2023-10-16', 'YYYY-MM-DD'), 13);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-16 14:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-16 23:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-16', 'YYYY-MM-DD'), 14);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-16 22:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-17 07:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 12, TO_DATE('2023-10-16', 'YYYY-MM-DD'), 15);

-- 10월 17일
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-17 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-17 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-17', 'YYYY-MM-DD'), 16);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-17 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-17 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-17', 'YYYY-MM-DD'), 17);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-17 08:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-17 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 12, TO_DATE('2023-10-17', 'YYYY-MM-DD'), 18);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-17 08:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-17 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-17', 'YYYY-MM-DD'), 19);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-17 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-17 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 13, TO_DATE('2023-10-17', 'YYYY-MM-DD'), 20);

-- 10월 18일
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-18 08:48:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-18 18:02:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-18', 'YYYY-MM-DD'), 21);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-18 08:52:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-18 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-18', 'YYYY-MM-DD'), 22);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-18 09:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-18 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 12, TO_DATE('2023-10-18', 'YYYY-MM-DD'), 23); -- 지각
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-18 08:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-18 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-18', 'YYYY-MM-DD'), 24);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-18 08:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-18 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 13, TO_DATE('2023-10-18', 'YYYY-MM-DD'), 25);

-- 10월 19일
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-19 08:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-19 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-19', 'YYYY-MM-DD'), 26);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-19 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-19 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 11, TO_DATE('2023-10-19', 'YYYY-MM-DD'), 27); -- 조퇴
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-19 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-19 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-19', 'YYYY-MM-DD'), 28);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-19 08:59:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-19 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 10, TO_DATE('2023-10-19', 'YYYY-MM-DD'), 29);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-19 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-19 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 12, TO_DATE('2023-10-19', 'YYYY-MM-DD'), 30);

-- 10월 20일 (다양한 직원)
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-20 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-20 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-20', 'YYYY-MM-DD'), 31);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-20 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-20 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-20', 'YYYY-MM-DD'), 32);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-20 09:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-20 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 12, TO_DATE('2023-10-20', 'YYYY-MM-DD'), 33); -- 지각
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-20 08:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-20 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-20', 'YYYY-MM-DD'), 34);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-20 08:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-20 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 13, TO_DATE('2023-10-20', 'YYYY-MM-DD'), 35);

-- 10월 23일
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-23 08:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-23 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-23', 'YYYY-MM-DD'), 36);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-23 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-23 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-23', 'YYYY-MM-DD'), 37);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-23 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-23 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 12, TO_DATE('2023-10-23', 'YYYY-MM-DD'), 38);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-23 09:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-23 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 10, TO_DATE('2023-10-23', 'YYYY-MM-DD'), 39); -- 지각
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-23 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-23 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 12, TO_DATE('2023-10-23', 'YYYY-MM-DD'), 40); -- 조퇴

-- 10월 24일
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-24 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-24 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-24', 'YYYY-MM-DD'), 1);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-24 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-24 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-24', 'YYYY-MM-DD'), 2);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-24 08:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-24 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-24', 'YYYY-MM-DD'), 4);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-24 08:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-24 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 13, TO_DATE('2023-10-24', 'YYYY-MM-DD'), 5);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-24 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-24 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 15, TO_DATE('2023-10-24', 'YYYY-MM-DD'), 6); -- 지각

-- 10월 25일
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-25 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-25 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 12, TO_DATE('2023-10-25', 'YYYY-MM-DD'), 3);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-25 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-25 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 11, TO_DATE('2023-10-25', 'YYYY-MM-DD'), 7); -- 지각
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-25 09:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-25 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 14, TO_DATE('2023-10-25', 'YYYY-MM-DD'), 8);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-25 08:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-25 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 10, TO_DATE('2023-10-25', 'YYYY-MM-DD'), 9); -- 조퇴
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-25 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-25 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 12, TO_DATE('2023-10-25', 'YYYY-MM-DD'), 10); -- 조퇴

-- 10월 26일
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-26 06:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-26 15:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-26', 'YYYY-MM-DD'), 11);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-26 06:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-26 15:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-26', 'YYYY-MM-DD'), 12);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-26 14:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-26 23:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 13, TO_DATE('2023-10-26', 'YYYY-MM-DD'), 13);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-26 14:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-26 23:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-26', 'YYYY-MM-DD'), 14);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-26 22:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-27 07:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 12, TO_DATE('2023-10-26', 'YYYY-MM-DD'), 15);

-- 10월 27일
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-27 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-27 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-27', 'YYYY-MM-DD'), 16);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-27 08:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-27 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 14, TO_DATE('2023-10-27', 'YYYY-MM-DD'), 17);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-27 08:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-27 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 12, TO_DATE('2023-10-27', 'YYYY-MM-DD'), 18);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-27 08:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-27 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 15, TO_DATE('2023-10-27', 'YYYY-MM-DD'), 19);
INSERT INTO ABSENCE (absence_no, absence_start, absence_end, absence_status, annual_leave, absence_date, staff_no) VALUES (ABSENCE_SEQ.NEXTVAL, TO_DATE('2023-10-27 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-27 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 13, TO_DATE('2023-10-27', 'YYYY-MM-DD'), 20);

COMMIT;

-- ABSENCE_APPLICATION_DETAIL (휴가 신청)
-- type 2, 3은 기존 유지 / type 1만 시간 추가

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '여름 휴가', 'T', 2, SYSDATE + 30, SYSDATE + 34, 2, SYSDATE);

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '개인 병가', 'R', 12, SYSDATE + 5, SYSDATE + 5, 3, SYSDATE - 1);

-- 1. 이미 승인된 과거 휴가 (2025년 상반기/여름)
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '정기 여름 휴가', 'T', 1, TO_DATE('2025-07-15', 'YYYY-MM-DD'), TO_DATE('2025-07-19', 'YYYY-MM-DD'), 2, TO_DATE('2025-06-20', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '가족 해외 여행', 'T', 2, TO_DATE('2025-08-01', 'YYYY-MM-DD'), TO_DATE('2025-08-05', 'YYYY-MM-DD'), 2, TO_DATE('2025-07-01', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '09:00 ~ 12:00|개인 건강 검진', 'T', 3, TO_DATE('2025-05-10', 'YYYY-MM-DD'), TO_DATE('2025-05-10', 'YYYY-MM-DD'), 1, TO_DATE('2025-05-01', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '여름 휴가', 'T', 4, TO_DATE('2025-07-20', 'YYYY-MM-DD'), TO_DATE('2025-07-24', 'YYYY-MM-DD'), 2, TO_DATE('2025-06-25', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '14:00 ~ 17:00|자녀 학교 행사', 'T', 5, TO_DATE('2025-04-15', 'YYYY-MM-DD'), TO_DATE('2025-04-15', 'YYYY-MM-DD'), 1, TO_DATE('2025-04-10', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '리프레시 휴가', 'T', 6, TO_DATE('2025-09-10', 'YYYY-MM-DD'), TO_DATE('2025-09-12', 'YYYY-MM-DD'), 2, TO_DATE('2025-08-20', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '추석 연휴 연장', 'T', 7, TO_DATE('2025-10-02', 'YYYY-MM-DD'), TO_DATE('2025-10-03', 'YYYY-MM-DD'), 2, TO_DATE('2025-09-15', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '개인 사정(이사)', 'T', 8, TO_DATE('2025-03-20', 'YYYY-MM-DD'), TO_DATE('2025-03-20', 'YYYY-MM-DD'), 2, TO_DATE('2025-03-05', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '11:00 ~ 14:00|은행 업무', 'T', 9, TO_DATE('2025-06-15', 'YYYY-MM-DD'), TO_DATE('2025-06-15', 'YYYY-MM-DD'), 1, TO_DATE('2025-06-14', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '병가(독감)', 'T', 10, TO_DATE('2025-02-10', 'YYYY-MM-DD'), TO_DATE('2025-02-12', 'YYYY-MM-DD'), 3, TO_DATE('2025-02-10', 'YYYY-MM-DD'));

-- 2. 최근 승인된 휴가 (2025년 10월 ~ 11월)
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '늦은 가을 휴가', 'T', 11, TO_DATE('2025-10-20', 'YYYY-MM-DD'), TO_DATE('2025-10-24', 'YYYY-MM-DD'), 2, TO_DATE('2025-10-01', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '결혼기념일 여행', 'T', 12, TO_DATE('2025-11-05', 'YYYY-MM-DD'), TO_DATE('2025-11-06', 'YYYY-MM-DD'), 2, TO_DATE('2025-10-25', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '12:00 ~ 15:00|친척 결혼식 참석', 'T', 13, TO_DATE('2025-11-15', 'YYYY-MM-DD'), TO_DATE('2025-11-15', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-01', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '09:00 ~ 13:00|부모님 병원 동행', 'T', 14, TO_DATE('2025-10-30', 'YYYY-MM-DD'), TO_DATE('2025-10-30', 'YYYY-MM-DD'), 1, TO_DATE('2025-10-20', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연차 소진', 'T', 15, TO_DATE('2025-11-10', 'YYYY-MM-DD'), TO_DATE('2025-11-11', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-01', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '개인 사정', 'T', 16, TO_DATE('2025-11-20', 'YYYY-MM-DD'), TO_DATE('2025-11-20', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-10', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '몸살 감기', 'T', 17, TO_DATE('2025-11-01', 'YYYY-MM-DD'), TO_DATE('2025-11-02', 'YYYY-MM-DD'), 3, TO_DATE('2025-11-01', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '학회 참석', 'T', 1, TO_DATE('2025-10-15', 'YYYY-MM-DD'), TO_DATE('2025-10-17', 'YYYY-MM-DD'), 3, TO_DATE('2025-09-30', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '제주도 여행', 'T', 18, TO_DATE('2025-11-25', 'YYYY-MM-DD'), TO_DATE('2025-11-28', 'YYYY-MM-DD'), 2, TO_DATE('2025-10-25', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '09:00 ~ 12:00|건강검진', 'T', 19, TO_DATE('2025-11-08', 'YYYY-MM-DD'), TO_DATE('2025-11-08', 'YYYY-MM-DD'), 1, TO_DATE('2025-10-28', 'YYYY-MM-DD'));

-- 3. 미래 대기중인 신청 (2025년 12월 ~ 2026년 1월)
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연말 가족 여행', 'R', 20, TO_DATE('2025-12-24', 'YYYY-MM-DD'), TO_DATE('2025-12-26', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '크리스마스 휴가', 'R', 21, TO_DATE('2025-12-25', 'YYYY-MM-DD'), TO_DATE('2025-12-25', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-18', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '새해 맞이 여행', 'R', 22, TO_DATE('2025-12-31', 'YYYY-MM-DD'), TO_DATE('2026-01-02', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '개인 사정', 'R', 23, TO_DATE('2025-12-10', 'YYYY-MM-DD'), TO_DATE('2025-12-10', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-18', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '09:00 ~ 12:00|병원 진료', 'R', 24, TO_DATE('2025-12-05', 'YYYY-MM-DD'), TO_DATE('2025-12-05', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-18', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '겨울 휴가', 'R', 25, TO_DATE('2026-01-15', 'YYYY-MM-DD'), TO_DATE('2026-01-19', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '자녀 졸업식', 'R', 26, TO_DATE('2026-02-10', 'YYYY-MM-DD'), TO_DATE('2026-02-10', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '설날 연휴 연장', 'R', 27, TO_DATE('2026-02-18', 'YYYY-MM-DD'), TO_DATE('2026-02-20', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '해외 학회 참석', 'R', 2, TO_DATE('2025-12-15', 'YYYY-MM-DD'), TO_DATE('2025-12-20', 'YYYY-MM-DD'), 3, TO_DATE('2025-11-10', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연차 사용', 'R', 28, TO_DATE('2025-12-01', 'YYYY-MM-DD'), TO_DATE('2025-12-01', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-18', 'YYYY-MM-DD'));

-- 4. 반려된 신청
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '단순 휴식', 'F', 29, TO_DATE('2025-10-05', 'YYYY-MM-DD'), TO_DATE('2025-10-05', 'YYYY-MM-DD'), 2, TO_DATE('2025-09-25', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '갑작스러운 여행', 'F', 30, TO_DATE('2025-10-10', 'YYYY-MM-DD'), TO_DATE('2025-10-12', 'YYYY-MM-DD'), 2, TO_DATE('2025-10-09', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '개인 사유', 'F', 31, TO_DATE('2025-11-01', 'YYYY-MM-DD'), TO_DATE('2025-11-05', 'YYYY-MM-DD'), 2, TO_DATE('2025-10-30', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '15:00 ~ 18:00|친구 모임', 'F', 32, TO_DATE('2025-11-11', 'YYYY-MM-DD'), TO_DATE('2025-11-11', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-10', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연차 몰아쓰기', 'F', 33, TO_DATE('2025-12-01', 'YYYY-MM-DD'), TO_DATE('2025-12-10', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '인력 부족 기간 휴가 신청', 'F', 34, TO_DATE('2025-09-15', 'YYYY-MM-DD'), TO_DATE('2025-09-20', 'YYYY-MM-DD'), 2, TO_DATE('2025-08-15', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '13:00 ~ 16:00|개인 사정', 'F', 35, TO_DATE('2025-10-20', 'YYYY-MM-DD'), TO_DATE('2025-10-20', 'YYYY-MM-DD'), 1, TO_DATE('2025-10-19', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '당일 연차 신청', 'F', 36, TO_DATE('2025-11-15', 'YYYY-MM-DD'), TO_DATE('2025-11-15', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '사유 불분명', 'F', 37, TO_DATE('2025-12-05', 'YYYY-MM-DD'), TO_DATE('2025-12-05', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-10', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '휴가 신청', 'F', 38, TO_DATE('2025-11-25', 'YYYY-MM-DD'), TO_DATE('2025-11-25', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-18', 'YYYY-MM-DD'));

-- 5. 다양한 직원들의 추가 데이터
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '겨울 바다 여행', 'R', 39, TO_DATE('2026-01-05', 'YYYY-MM-DD'), TO_DATE('2026-01-07', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '가사 사정', 'T', 40, TO_DATE('2025-11-12', 'YYYY-MM-DD'), TO_DATE('2025-11-12', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-01', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '10:00 ~ 14:00|은행 대출 상담', 'T', 41, TO_DATE('2025-10-15', 'YYYY-MM-DD'), TO_DATE('2025-10-15', 'YYYY-MM-DD'), 1, TO_DATE('2025-10-10', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '조부상', 'T', 42, TO_DATE('2025-09-20', 'YYYY-MM-DD'), TO_DATE('2025-09-22', 'YYYY-MM-DD'), 3, TO_DATE('2025-09-20', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연차 사용', 'R', 43, TO_DATE('2025-12-12', 'YYYY-MM-DD'), TO_DATE('2025-12-12', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '13:00 ~ 16:00|차량 정비', 'T', 44, TO_DATE('2025-11-08', 'YYYY-MM-DD'), TO_DATE('2025-11-08', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-01', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '이사', 'T', 45, TO_DATE('2025-10-01', 'YYYY-MM-DD'), TO_DATE('2025-10-01', 'YYYY-MM-DD'), 2, TO_DATE('2025-09-15', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '가족 행사', 'R', 46, TO_DATE('2025-12-20', 'YYYY-MM-DD'), TO_DATE('2025-12-20', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-18', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '감기 몸살', 'T', 47, TO_DATE('2025-11-14', 'YYYY-MM-DD'), TO_DATE('2025-11-14', 'YYYY-MM-DD'), 3, TO_DATE('2025-11-14', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연말 휴가', 'R', 48, TO_DATE('2025-12-29', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));

-- Type 1: 수정됨
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '13:00 ~ 16:00|육아 문제', 'T', 49, TO_DATE('2025-11-17', 'YYYY-MM-DD'), TO_DATE('2025-11-17', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-16', 'YYYY-MM-DD'));

INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date)
VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '개인 휴식', 'T', 50, TO_DATE('2025-11-28', 'YYYY-MM-DD'), TO_DATE('2025-11-28', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-10', 'YYYY-MM-DD'));

-- 6. 대량 데이터 채우기 (반복 패턴) - Type 1만 수정
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '겨울 휴가', 'R', 1, TO_DATE('2025-12-20', 'YYYY-MM-DD'), TO_DATE('2025-12-23', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '반차 사용', 'T', 3, TO_DATE('2025-11-25', 'YYYY-MM-DD'), TO_DATE('2025-11-25', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '09:00 ~ 12:00|병원 예약', 'T', 5, TO_DATE('2025-12-02', 'YYYY-MM-DD'), TO_DATE('2025-12-02', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '09:00 ~ 14:00|연말 정산 서류 준비', 'T', 7, TO_DATE('2025-12-05', 'YYYY-MM-DD'), TO_DATE('2025-12-05', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '스키장 여행', 'R', 9, TO_DATE('2026-01-10', 'YYYY-MM-DD'), TO_DATE('2026-01-12', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '15:00 ~ 17:00|독감 예방접종', 'T', 11, TO_DATE('2025-11-22', 'YYYY-MM-DD'), TO_DATE('2025-11-22', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '부모님 생신', 'T', 13, TO_DATE('2025-12-08', 'YYYY-MM-DD'), TO_DATE('2025-12-08', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-10', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '개인 정비', 'R', 15, TO_DATE('2025-12-15', 'YYYY-MM-DD'), TO_DATE('2025-12-15', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '10:00 ~ 12:00|치과 치료', 'T', 17, TO_DATE('2025-11-29', 'YYYY-MM-DD'), TO_DATE('2025-11-29', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '크리스마스이브 휴가', 'R', 19, TO_DATE('2025-12-24', 'YYYY-MM-DD'), TO_DATE('2025-12-24', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '신년 해돋이 여행', 'R', 21, TO_DATE('2026-01-01', 'YYYY-MM-DD'), TO_DATE('2026-01-02', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연말 휴식', 'R', 23, TO_DATE('2025-12-30', 'YYYY-MM-DD'), TO_DATE('2025-12-30', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '17:00 ~ 18:00|가족 모임', 'R', 25, TO_DATE('2025-12-18', 'YYYY-MM-DD'), TO_DATE('2025-12-18', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '09:00 ~ 11:00|건강 검진 재검', 'T', 27, TO_DATE('2025-11-25', 'YYYY-MM-DD'), TO_DATE('2025-11-25', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-10', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '친구 결혼식', 'R', 29, TO_DATE('2025-12-13', 'YYYY-MM-DD'), TO_DATE('2025-12-13', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '겨울 등산', 'R', 31, TO_DATE('2026-01-20', 'YYYY-MM-DD'), TO_DATE('2026-01-21', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연차 소진', 'R', 33, TO_DATE('2025-12-26', 'YYYY-MM-DD'), TO_DATE('2025-12-26', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-18', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '10:00 ~ 14:00|관공서 업무', 'T', 35, TO_DATE('2025-11-21', 'YYYY-MM-DD'), TO_DATE('2025-11-21', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '14:00 ~ 17:00|아이 병원 진료', 'T', 37, TO_DATE('2025-11-24', 'YYYY-MM-DD'), TO_DATE('2025-11-24', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '휴식', 'R', 39, TO_DATE('2025-12-09', 'YYYY-MM-DD'), TO_DATE('2025-12-09', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '13:00 ~ 16:00|개인 사정', 'T', 41, TO_DATE('2025-11-27', 'YYYY-MM-DD'), TO_DATE('2025-11-27', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '가족 여행', 'R', 43, TO_DATE('2026-01-05', 'YYYY-MM-DD'), TO_DATE('2026-01-08', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '09:00 ~ 12:00|병원 검사', 'T', 45, TO_DATE('2025-11-28', 'YYYY-MM-DD'), TO_DATE('2025-11-28', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연말 파티', 'R', 47, TO_DATE('2025-12-31', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '신정 휴가', 'R', 49, TO_DATE('2026-01-02', 'YYYY-MM-DD'), TO_DATE('2026-01-02', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '15:00 ~ 17:00|개인 업무', 'T', 2, TO_DATE('2025-11-26', 'YYYY-MM-DD'), TO_DATE('2025-11-26', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '휴식', 'R', 4, TO_DATE('2025-12-19', 'YYYY-MM-DD'), TO_DATE('2025-12-19', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '감기', 'T', 6, TO_DATE('2025-11-13', 'YYYY-MM-DD'), TO_DATE('2025-11-13', 'YYYY-MM-DD'), 3, TO_DATE('2025-11-13', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '해외 여행', 'R', 8, TO_DATE('2026-02-01', 'YYYY-MM-DD'), TO_DATE('2026-02-05', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '10:00 ~ 12:00|차량 검사', 'R', 10, TO_DATE('2025-12-03', 'YYYY-MM-DD'), TO_DATE('2025-12-03', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연차', 'R', 12, TO_DATE('2025-12-16', 'YYYY-MM-DD'), TO_DATE('2025-12-16', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-18', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '부모님 칠순', 'R', 14, TO_DATE('2025-12-27', 'YYYY-MM-DD'), TO_DATE('2025-12-27', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '이사 준비', 'R', 16, TO_DATE('2025-12-22', 'YYYY-MM-DD'), TO_DATE('2025-12-22', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '독감', 'T', 18, TO_DATE('2025-11-11', 'YYYY-MM-DD'), TO_DATE('2025-11-12', 'YYYY-MM-DD'), 3, TO_DATE('2025-11-11', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연말 휴식', 'R', 20, TO_DATE('2025-12-29', 'YYYY-MM-DD'), TO_DATE('2025-12-29', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '신년 계획', 'R', 22, TO_DATE('2026-01-05', 'YYYY-MM-DD'), TO_DATE('2026-01-05', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '13:00 ~ 15:00|개인 용무', 'R', 24, TO_DATE('2025-12-11', 'YYYY-MM-DD'), TO_DATE('2025-12-11', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '가족 모임', 'R', 26, TO_DATE('2025-12-17', 'YYYY-MM-DD'), TO_DATE('2025-12-17', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '겨울 산행', 'R', 28, TO_DATE('2026-01-12', 'YYYY-MM-DD'), TO_DATE('2026-01-12', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '휴식', 'R', 30, TO_DATE('2025-12-23', 'YYYY-MM-DD'), TO_DATE('2025-12-23', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-18', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '09:00 ~ 12:00|건강 검진', 'R', 32, TO_DATE('2025-12-06', 'YYYY-MM-DD'), TO_DATE('2025-12-06', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연차 사용', 'R', 34, TO_DATE('2025-12-30', 'YYYY-MM-DD'), TO_DATE('2025-12-30', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '개인 사정', 'R', 36, TO_DATE('2025-12-15', 'YYYY-MM-DD'), TO_DATE('2025-12-15', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '09:00 ~ 12:00|병원 진료', 'R', 38, TO_DATE('2025-12-04', 'YYYY-MM-DD'), TO_DATE('2025-12-04', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '겨울 휴가', 'R', 40, TO_DATE('2026-01-18', 'YYYY-MM-DD'), TO_DATE('2026-01-21', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연차', 'R', 42, TO_DATE('2025-12-08', 'YYYY-MM-DD'), TO_DATE('2025-12-08', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-15', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '휴식', 'R', 44, TO_DATE('2025-12-22', 'YYYY-MM-DD'), TO_DATE('2025-12-22', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-18', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '10:00 ~ 12:00|개인 업무', 'R', 46, TO_DATE('2025-12-10', 'YYYY-MM-DD'), TO_DATE('2025-12-10', 'YYYY-MM-DD'), 1, TO_DATE('2025-11-20', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '연말 여행', 'R', 48, TO_DATE('2025-12-26', 'YYYY-MM-DD'), TO_DATE('2025-12-28', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));
INSERT INTO ABSENCE_APPLICATION_DETAIL (add_no, detailed_reason, isapproved, staff_no, absence_start_date, absence_end_date, absence_type, absence_application_date) VALUES (ABSENCE_APP_DETAIL_SEQ.NEXTVAL, '신년 휴가', 'R', 50, TO_DATE('2026-01-05', 'YYYY-MM-DD'), TO_DATE('2026-01-07', 'YYYY-MM-DD'), 2, TO_DATE('2025-11-19', 'YYYY-MM-DD'));

-- 1. MEMBER 테이블에 계정 생성 (admin.kim)
INSERT INTO MEMBER (member_no, member_id, member_pwd, member_name, member_gender, member_rrn, member_phone, member_email, member_address, member_join_date, member_blood_type, member_chronic_disease, member_allergy, member_status)
VALUES (MEMBER_SEQ.NEXTVAL, 'admin.kim', 'admin1234', '김관리', 'M', '800101-1234567', '010-9999-9999', 'admin.kim@hospital.com', '서울시 강남구 테헤란로 001', SYSDATE, 'A', NULL, NULL, 'T');

-- 2. STAFF 테이블에 직원 정보 등록 (위에서 생성한 member_no 사용)
INSERT INTO STAFF (staff_no, member_no, staff_hire_date)
VALUES (STAFF_SEQ.NEXTVAL, (SELECT member_no FROM MEMBER WHERE member_id = 'admin.kim'), SYSDATE);

-- 3. MEMBER 테이블에 staff_no 업데이트 (순환 참조 해결)
UPDATE MEMBER 
SET staff_no = (SELECT staff_no FROM STAFF WHERE member_no = (SELECT member_no FROM MEMBER WHERE member_id = 'admin.kim'))
WHERE member_id = 'admin.kim';

-- BOARD 더미데이터 10개
INSERT INTO BOARD VALUES (BOARD_SEQ.NEXTVAL, 1, '결제 취소 문의', '결제 취소 요청드립니다.', SYSDATE - 7, 2, '대기중', 56, 1, 'F', 'F', 'user56@mail.com');

INSERT INTO BOARD VALUES (BOARD_SEQ.NEXTVAL, 2, '진료 시간 변경 요청', '진료 시간을 오후로 변경 가능한가요?', SYSDATE - 6, 3, '처리중', 57, 2, 'T', 'F', 'user57@mail.com');

INSERT INTO BOARD VALUES (BOARD_SEQ.NEXTVAL, 3, '건강검진 추가 항목 문의', '혈액검사 항목 추가 가능한가요?', SYSDATE - 8, 1, '완료', 58, 3, 'F', 'F', 'user58@mail.com');

INSERT INTO BOARD VALUES (BOARD_SEQ.NEXTVAL, 4, '시스템 오류 신고', '예약 페이지에서 오류가 발생합니다.', SYSDATE - 4, 2, '완료', 59, 10, 'F', 'F', 'user59@mail.com');

INSERT INTO BOARD VALUES (BOARD_SEQ.NEXTVAL, 5, '예약 취소 문의', '내일 예약 취소 가능한가요?', SYSDATE - 9, 2, '대기중', 60, 1, 'T', 'F', 'user60@mail.com');

INSERT INTO BOARD VALUES (BOARD_SEQ.NEXTVAL, 3, '기타 진료 문의', '검진 결과 상담 예약 가능한가요?', SYSDATE - 3, 3, '처리중', 61, 3, 'F', 'F', 'user61@mail.com');

INSERT INTO BOARD VALUES (BOARD_SEQ.NEXTVAL, 1, '결제 환불 요청', '환불 진행 상황 궁금합니다.', SYSDATE - 1, 1, '완료', 62, 1, 'F', 'F', 'user62@mail.com');

INSERT INTO BOARD VALUES (BOARD_SEQ.NEXTVAL, 2, '초진 등록 문의', '초진일 경우 필요한 서류가 있나요?', SYSDATE - 2, 2, '대기중', 63, 2, 'T', 'F', 'user63@mail.com');

INSERT INTO BOARD VALUES (BOARD_SEQ.NEXTVAL, 4, '모바일 앱 오류', '앱 로그인 오류가 지속됩니다.', SYSDATE - 5, 1, '완료', 64, 10, 'F', 'F', 'user64@mail.com');

INSERT INTO BOARD VALUES (BOARD_SEQ.NEXTVAL, 5, '예약 대기 시간 문의', '예약 후 대기 시간은 얼마나 되나요?', SYSDATE - 4, 3, '처리중', 65, 1, 'F', 'F', 'user65@mail.com');
-- ANSWER 더미데이터 (완료된 게시글만)
INSERT INTO ANSWER VALUES (ANSWER_SEQ.NEXTVAL,  (SELECT MIN(board_id) FROM BOARD WHERE board_title='건강검진 추가 항목 문의'), 
41, '추가 혈액검사 가능합니다. 원무과로 방문 부탁드립니다.', SYSDATE - 7);

INSERT INTO ANSWER VALUES (ANSWER_SEQ.NEXTVAL, (SELECT MIN(board_id) FROM BOARD WHERE board_title='시스템 오류 신고'),
48, '시스템 오류 수정 완료되었습니다. 이용에 불편을 드려 죄송합니다.', SYSDATE - 3);

INSERT INTO ANSWER VALUES (ANSWER_SEQ.NEXTVAL, (SELECT MIN(board_id) FROM BOARD WHERE board_title='결제 환불 요청'),
45, '환불 절차가 완료되었습니다. 카드사 처리까지 2~3일 소요됩니다.', SYSDATE - 1);


INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 41,
'병원 주차장 공사 안내', '주차장 공사로 일부 구역 이용이 제한됩니다.',
SYSDATE - 11, 'F', 2, 3, 1);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 41,
'환자 안내문 변경', '입원 안내문이 개선되었습니다.',
SYSDATE - 3, 'F', 2, 1, 3);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 41,
'정전 대비 안내', '정전 대비 비상발전기 점검이 진행됩니다.',
SYSDATE - 8, 'F', 1, 2, 10);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 41,
'내과 진료 스케줄 변경', '내과 일부 전문의 스케줄이 변경되었습니다.',
SYSDATE - 5, 'F', 3, 3, 3);


INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 30,
'연말정산 제출 안내', '연말정산 서류 제출 기한은 12월 20일입니다.',
SYSDATE - 9, 'F', 2, 2, 10);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 31,
'응급의료센터 리모델링 안내', '응급의료센터 리모델링 공사로 입구가 변경됩니다.',
SYSDATE - 6, 'F', 2, 3, 1);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 32,
'의료정보시스템 점검', '전자차트 시스템 점검이 13일 새벽 2시부터 진행됩니다.',
SYSDATE - 4, 'F', 1, 1, 10);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 33,
'직원 복지관 이용 안내', '직원 복지관이 12월 재개장합니다.',
SYSDATE - 3, 'F', 2, 2, 2);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 34,
'독감 예방접종 재고 확보', '독감 백신 재고가 추가 입고되었습니다.',
SYSDATE - 2, 'F', 3, 1, 1);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 35,
'전산 시스템 보안 강화', '보안 업데이트를 위해 일시적으로 로그인이 제한될 수 있습니다.',
SYSDATE - 7, 'F', 1, 3, 10);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 36,
'의약품 재고 점검', '내과 의약품 재고점검이 15일 정오에 진행됩니다.',
SYSDATE - 1, 'F', 3, 3, 3);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 37,
'크리스마스 진료 일정', '12월 25일은 응급실만 운영합니다.',
SYSDATE - 10, 'F', 2, 3, 1);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 38,
'수술실 공조기 점검', '수술실 공조 시스템 점검으로 이용이 제한됩니다.',
SYSDATE - 5, 'F', 1, 2, 10);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 39,
'직원 대상 건강검진', '전 직원 건강검진 예약을 안내드립니다.',
SYSDATE, 'F', 3, 2, 10);

//
INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 30,
'내원 안내 변경', '외래 진료 접수 시간이 오전 8시로 변경되었습니다.',
SYSDATE - 7, 'F', 2, 1, 1);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 31,
'독감 예방접종 안내', '독감 예방접종 예약이 증가하여 대기 시간이 길어질 수 있습니다.',
SYSDATE - 5, 'F', 3, 1, 3);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 32,
'진료실 이동 안내', '내과 진료실이 3층으로 이전되었습니다.',
SYSDATE - 4, 'F', 2, 1, 1);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 33,
'MRI 예약 안내', 'MRI 예약은 최소 3일 전까지 신청 부탁드립니다.',
SYSDATE - 6, 'F', 3, 1, 3);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 34,
'주차장 사용 제한', '주말에는 주차 공간이 매우 제한될 수 있습니다.',
SYSDATE - 3, 'F', 2, 1, 1);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 35,
'모바일 앱 업데이트', '환자용 모바일 앱이 업데이트되어 일부 기능이 변경되었습니다.',
SYSDATE - 2, 'F', 1, 1, 10);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 36,
'신분증 지참 안내', '모든 환자분들은 접수 시 신분증을 반드시 지참해 주세요.',
SYSDATE - 1, 'F', 2, 1, 1);

INSERT INTO NOTIFICATION
VALUES (NOTIFICATION_SEQ.NEXTVAL, 37,
'수납 창구 혼잡 안내', '평일 오전 시간대 수납 창구가 혼잡할 수 있습니다.',
SYSDATE, 'F', 2, 1, 3);

-- VISIT 테이블 추가 데이터 (50개)

-- 1. 예약 기반 방문 (RESERVATION 테이블의 '완료' 상태 건들 매핑)
-- 9번 예약 (우울증 상담)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 9, 59, TRUNC(SYSDATE) - 2 + 11/24);

-- 12번 예약 (맹장염 의심 -> 수술)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 12, 62, TRUNC(SYSDATE) - 18 + 16/24);

-- 16번 예약 (코피 증상)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 16, 66, TRUNC(SYSDATE) - 8 + 13/24);

-- 21번 예약 (위염 증상)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 21, 71, TRUNC(SYSDATE) - 27 + 15/24);

-- 24번 예약 (허리 통증)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 24, 74, TRUNC(SYSDATE) - 11 + 14/24);

-- 26번 예약 (중이염)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 26, 76, TRUNC(SYSDATE) - 6 + 10/24);

-- 28번 예약 (알레르기 검사)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 28, 78, TRUNC(SYSDATE) - 9 + 16/24);

-- 31번 예약 (대장 내시경)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 31, 81, TRUNC(SYSDATE) - 24 + 13/24);

-- 32번 예약 (맹장 수술)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 32, 82, TRUNC(SYSDATE) + 15/24);

-- 34번 예약 (골절 치료)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 34, 84, TRUNC(SYSDATE) - 1 + 11/24);

-- 36번 예약 (편도선염)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 36, 86, TRUNC(SYSDATE) - 7 + 09/24);

-- 38번 예약 (습진 치료)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 38, 88, TRUNC(SYSDATE) - 16 + 12/24);

-- 40번 예약 (골밀도 검사)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 40, 90, TRUNC(SYSDATE) - 15 + 13/24);

-- 41번 예약 (역류성 식도염)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 41, 91, TRUNC(SYSDATE) - 21 + 16/24);

-- 42번 예약 (탈장 수술)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 42, 92, TRUNC(SYSDATE) - 23 + 09/24);

-- 44번 예약 (인대 손상)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 44, 94, TRUNC(SYSDATE) - 4 + 12/24);

-- 46번 예약 (축농증)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 46, 96, TRUNC(SYSDATE) - 3 + 14/24);

-- 48번 예약 (무좀 치료)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 48, 98, TRUNC(SYSDATE) - 2 + 10/24);

-- 102번 예약 (외상 치료 - 비회원)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 102, 102, TRUNC(SYSDATE) - 2 + 13/24);

-- 104번 예약 (발목 통증 - 비회원)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 104, 104, TRUNC(SYSDATE) - 3 + 16/24);

-- 106번 예약 (이명 증상 - 비회원)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 106, 106, TRUNC(SYSDATE) - 4 + 11/24);

-- 108번 예약 (두드러기 - 비회원)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 108, 108, TRUNC(SYSDATE) - 5 + 13/24);

-- 110번 예약 (MRI 검사 - 비회원)
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, 110, 110, TRUNC(SYSDATE) - 6 + 11/24);


-- 2. 현장 접수 (Walk-in) 및 재진 방문 (예약 번호 NULL)
-- 최근 3일 내 방문
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 51, TRUNC(SYSDATE) - 0 + 09/24); -- 급성 복통 재발

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 55, TRUNC(SYSDATE) - 1 + 14/24); -- 산부인과 정기 검진 외 방문

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 60, TRUNC(SYSDATE) - 0 + 10/24); -- 약 처방 갱신

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 70, TRUNC(SYSDATE) - 2 + 15/24); -- 영상의학과 결과 상담

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 85, TRUNC(SYSDATE) - 1 + 11/24); -- 어지러움 호소

-- 일주일 전 현장 방문
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 52, TRUNC(SYSDATE) - 7 + 10/24); 

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 68, TRUNC(SYSDATE) - 6 + 14/24);

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 77, TRUNC(SYSDATE) - 5 + 09/24);

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 93, TRUNC(SYSDATE) - 7 + 16/24);

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 99, TRUNC(SYSDATE) - 6 + 11/24);

-- 비회원 응급/현장 방문
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 103, TRUNC(SYSDATE) - 1 + 22/24); -- 야간 응급

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 105, TRUNC(SYSDATE) - 3 + 14/24);

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 107, TRUNC(SYSDATE) - 2 + 10/24);

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 109, TRUNC(SYSDATE) - 4 + 15/24);


-- 3. 과거 병력 데이터 (한 달 이전 방문 기록)
-- 만성질환자 정기 방문 내역 생성
INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 51, TRUNC(SYSDATE) - 40 + 09/24); -- 고혈압 정기 검진

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 52, TRUNC(SYSDATE) - 45 + 10/24); -- 당뇨 관리

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 54, TRUNC(SYSDATE) - 35 + 14/24); -- 고혈압/당뇨 복합 관리

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 56, TRUNC(SYSDATE) - 50 + 11/24); -- 갑상선 질환

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 59, TRUNC(SYSDATE) - 38 + 15/24); -- 천식 약 처방

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 62, TRUNC(SYSDATE) - 42 + 09/24); -- 고혈압 약 처방

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 64, TRUNC(SYSDATE) - 33 + 16/24); -- 당뇨/고혈압 정기

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 67, TRUNC(SYSDATE) - 48 + 10/24); -- 고혈압 관리

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 73, TRUNC(SYSDATE) - 39 + 14/24); -- 천식 정기 검진

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 76, TRUNC(SYSDATE) - 41 + 11/24); -- 고혈압 정기

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 77, TRUNC(SYSDATE) - 55 + 15/24); -- 당뇨 합병증 검사

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 82, TRUNC(SYSDATE) - 32 + 13/24); -- 고혈압 약 타러 옴

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 85, TRUNC(SYSDATE) - 46 + 09/24); -- 당뇨 관리

INSERT INTO VISIT (visit_no, reservation_no, member_no, visit_date) 
VALUES (VISIT_SEQ.NEXTVAL, NULL, 92, TRUNC(SYSDATE) - 37 + 14/24); -- 갑상선 정기

COMMIT;