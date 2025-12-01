-- 스키마의 모든 테이블 삭제 (외래 키 제약조건을 포함하여 강제 삭제)
BEGIN
    FOR c IN (
        SELECT
            table_name
        FROM
            user_tables
    ) LOOP
        EXECUTE IMMEDIATE 'DROP TABLE "'
                          || c.table_name
                          || '" CASCADE CONSTRAINTS';
    END LOOP;
END;
/
-- 스키마의 모든 시퀀스 삭제
BEGIN
    FOR s IN (
        SELECT
            sequence_name
        FROM
            user_sequences
    ) LOOP
        EXECUTE IMMEDIATE 'DROP SEQUENCE "'
                          || s.sequence_name
                          || '"';
    END LOOP;
END;
/
-- 오라클 휴지통 비우기
PURGE RECYCLEBIN;

/* ==============================================================
시퀀스 생성 (CREATE SEQUENCE)
==============================================================
*/
CREATE SEQUENCE department_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE diagnosis_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE answer_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE schedule_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE medical_order_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE board_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE license_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE visit_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE reservation_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE medical_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE prescription_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE member_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE notification_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE staff_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE facility_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE absence_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE facility_reservation_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE absence_app_detail_seq START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE medical_record_seq START WITH 1 INCREMENT BY 1 NOCACHE;

/* ==============================================================
테이블 생성 (CREATE TABLE)
==============================================================
*/
CREATE TABLE absence_application_detail (
    add_no             NUMBER DEFAULT absence_app_detail_seq.NEXTVAL NOT NULL,
    detailed_reason    VARCHAR2(500) NOT NULL,
    isapproved         CHAR(1) DEFAULT 'F' NOT NULL,
    staff_no           NUMBER NOT NULL,
    absence_start_date DATE NOT NULL,
    absence_end_date   DATE NOT NULL,
    absence_type       NUMBER NOT NULL,
    absence_application_date DATE DEFAULT sysdate NOT NULL,
    CONSTRAINT chk_absence_type
        CHECK ( absence_type IN ( 1, 2, 3 ) ),
    CONSTRAINT chk_absence_isapproved
        CHECK ( isapproved IN ( 'T', 'F', 'R' ) )
);

COMMENT ON COLUMN absence_application_detail.add_no IS
    '부재 신청 번호(시퀀스로 자동 생성)';

COMMENT ON COLUMN absence_application_detail.detailed_reason IS
    '상세 사유';

COMMENT ON COLUMN absence_application_detail.isapproved IS
    '승인 여부(T,F,R)';

COMMENT ON COLUMN absence_application_detail.staff_no IS
    '직원 테이블에서 참조';

COMMENT ON COLUMN absence_application_detail.absence_start_date IS
    '부재 시작 날짜';

COMMENT ON COLUMN absence_application_detail.absence_end_date IS
    '부재 종료 날짜';

COMMENT ON COLUMN absence_application_detail.absence_type IS
    '외출, 휴가, 외박';
    
COMMENT ON COLUMN absence_application_detail.absence_application_date IS
    '부재 신청 날짜';

CREATE TABLE department (
    department_no       NUMBER DEFAULT department_seq.NEXTVAL NOT NULL,
    department_name     VARCHAR2(100) NOT NULL,
    department_location VARCHAR2(255) NOT NULL,
    CONSTRAINT uq_department_name UNIQUE ( department_name )
);

COMMENT ON COLUMN department.department_no IS
    '시퀀스로 자동 생성';

COMMENT ON COLUMN department.department_name IS
    '진료과 이름(소화기내과, 순환기내과 등)';

COMMENT ON COLUMN department.department_location IS
    '병원 내 위치(몇 층인지 등)';

CREATE TABLE diagnosis (
    diagnosis_no         NUMBER DEFAULT diagnosis_seq.NEXTVAL NOT NULL,
    diagnosis_name       VARCHAR2(255) NOT NULL,
    diagnosis_code       VARCHAR2(50) NOT NULL,
    is_primary_diagnosis CHAR(1) NULL,
    CONSTRAINT chk_diagnosis_is_primary CHECK ( is_primary_diagnosis IN ( 'T', 'F' ) )
);

COMMENT ON COLUMN diagnosis.diagnosis_no IS
    '시퀀스로 자동생성';

COMMENT ON COLUMN diagnosis.diagnosis_name IS
    '진단명(정확한 명칭 작성)';

COMMENT ON COLUMN diagnosis.diagnosis_code IS
    '진단 코드(진단명의 국가 코드)';

COMMENT ON COLUMN diagnosis.is_primary_diagnosis IS
    '추가 진단 여부 (T/F)';

CREATE TABLE answer (
    answer_no      NUMBER DEFAULT answer_seq.NEXTVAL NOT NULL,
    board_id       NUMBER NOT NULL,
    staff_no       NUMBER NOT NULL,
    answer_content VARCHAR2(4000) NOT NULL,
    answer_date    DATE DEFAULT sysdate NOT NULL
);

COMMENT ON COLUMN answer.answer_no IS
    '시퀀스로 자동 생성';

COMMENT ON COLUMN answer.board_id IS
    '게시글 테이블에서 참조';

COMMENT ON COLUMN answer.staff_no IS
    '직원(간호사 등 답변자) 테이블에서 참조';

COMMENT ON COLUMN answer.answer_content IS
    '문의사항 답변';

COMMENT ON COLUMN answer.answer_date IS
    '답변 날짜';

CREATE TABLE schedule (
    schedule_no         NUMBER DEFAULT schedule_seq.NEXTVAL NOT NULL,
    staff_no            NUMBER NOT NULL,
    schedule_day        VARCHAR2(3) NOT NULL,
    schedule_start_time VARCHAR2(5) NOT NULL,
    schedule_end_time   VARCHAR2(5) NOT NULL
);

COMMENT ON COLUMN schedule.schedule_no IS
    '스케줄 번호(시퀀스로 자동 생성)';

COMMENT ON COLUMN schedule.staff_no IS
    '직원 테이블에서 참조';

COMMENT ON COLUMN schedule.schedule_day IS
    '근무 요일';

COMMENT ON COLUMN schedule.schedule_start_time IS
    '근무 시작 시간 (HH24:MI)';

COMMENT ON COLUMN schedule.schedule_end_time IS
    '근무 종료 시간 (HH24:MI)';

CREATE TABLE medical_order (
    order_no          NUMBER DEFAULT medical_order_seq.NEXTVAL NOT NULL,
    order_description VARCHAR2(1000) NOT NULL,
    reservation_no    NUMBER NOT NULL,
    medical_record_no NUMBER NOT NULL
);

COMMENT ON COLUMN medical_order.order_no IS
    '시퀀스로 자동 생성';

COMMENT ON COLUMN medical_order.order_description IS
    '오더 부연 설명';

COMMENT ON COLUMN medical_order.reservation_no IS
    '예약 테이블에서 참조';

COMMENT ON COLUMN medical_order.medical_record_no IS
    '진료기록 번호';

CREATE TABLE nurse (
    staff_no       NUMBER NOT NULL,
    department_no  NUMBER NOT NULL,
    nurse_position VARCHAR2(100) NOT NULL
);

COMMENT ON COLUMN nurse.staff_no IS
    '직원 테이블(STAFF)의 staff_no 참조 (PK이자 FK)';

COMMENT ON COLUMN nurse.department_no IS
    '부서 테이블에서 참조';

COMMENT ON COLUMN nurse.nurse_position IS
    '일반간호사, 책임간호사, 수간호사 등';

CREATE TABLE board (
    board_id          NUMBER DEFAULT board_seq.NEXTVAL NOT NULL,
    board_type        NUMBER NOT NULL,
    board_title       VARCHAR2(255) NOT NULL,
    board_content     VARCHAR2(4000) NOT NULL,
    board_date        DATE DEFAULT sysdate NOT NULL,
    board_priority    NUMBER NOT NULL,
    board_status      VARCHAR2(20) NOT NULL,
    member_no         NUMBER NOT NULL,
    department_no     NUMBER NOT NULL,
    board_secret_type CHAR(1) NOT NULL,
    board_delete_type CHAR(1) NOT NULL,
    board_email       VARCHAR2(100) NULL,
    CONSTRAINT chk_board_type
        CHECK ( board_type IN ( 1, 2, 3, 4, 5) ),
    CONSTRAINT chk_board_priority
        CHECK ( board_priority IN ( 1, 2, 3 ) ),
    CONSTRAINT chk_board_secret_type CHECK ( board_secret_type IN ( 'T', 'F' ) ),
    CONSTRAINT chk_board_delete_type CHECK ( board_delete_type IN ( 'T', 'F' ) )
);

COMMENT ON COLUMN board.board_id IS
    '시퀀스 자동 생성';

COMMENT ON COLUMN board.board_type IS
    '문의 종류(1=결제, 2=진료, 3=기타, 4=시스템, 5=예약)';

COMMENT ON COLUMN board.board_title IS
    '게시글 제목';

COMMENT ON COLUMN board.board_content IS
    '게시글 내용';

COMMENT ON COLUMN board.board_date IS
    '문의사항 작성 날짜';

COMMENT ON COLUMN board.board_priority IS
    '처리 우선순위 (1,2,3)';

COMMENT ON COLUMN board.board_status IS
    '대기중, 처리중, 완료';

COMMENT ON COLUMN board.member_no IS
    '회원 테이블에서 회원 번호 참조';

COMMENT ON COLUMN board.department_no IS
    '부서 테이블에서 참조';

COMMENT ON COLUMN board.board_secret_type IS
    '비밀 여부 (T/F)';

COMMENT ON COLUMN board.board_delete_type IS
    '게시글 삭제 여부 (T/F)';

CREATE TABLE license (
    license_no   NUMBER DEFAULT license_seq.NEXTVAL NOT NULL,
    license_name VARCHAR2(255) NOT NULL,
    staff_no     NUMBER NULL
);

COMMENT ON COLUMN license.license_no IS
    '시퀀스로 자동 생성';

COMMENT ON COLUMN license.license_name IS
    '면허증 이름';

COMMENT ON COLUMN license.staff_no IS
    '직원 테이블에서 참조';

CREATE TABLE visit (
    visit_no       NUMBER DEFAULT visit_seq.NEXTVAL NOT NULL,
    reservation_no NUMBER NULL,
    member_no      NUMBER NOT NULL,
    visit_date     DATE DEFAULT sysdate NOT NULL
);

COMMENT ON COLUMN visit.visit_no IS
    '시퀀스로 자동 생성';

COMMENT ON COLUMN visit.reservation_no IS
    '예약 테이블에서 참조';

COMMENT ON COLUMN visit.member_no IS
    '회원 테이블에서 환자만 참조';

COMMENT ON COLUMN visit.visit_date IS
    '직접 입력  or sysdate (년,월,일,시간 모두 저장)';

CREATE TABLE manager (
    staff_no      NUMBER NOT NULL,
    department_no NUMBER NULL,
    staff_role    NUMBER NOT NULL,
    CONSTRAINT chk_manager_staff_role CHECK ( staff_role IN ( 1, 2 ) )
);

COMMENT ON COLUMN manager.staff_no IS
    '직원 테이블(STAFF)의 staff_no 참조 (PK이자 FK)';

COMMENT ON COLUMN manager.department_no IS
    '부서 테이블에서 참조';

COMMENT ON COLUMN manager.staff_role IS
    '직원 역할(문의, 시설)';

CREATE TABLE medical_record (
    medical_record_no NUMBER DEFAULT medical_record_seq.NEXTVAL NOT NULL,
    prescription_no   NUMBER NULL,
    diagnosis_no      NUMBER NULL,
    member_no         NUMBER NULL
);

COMMENT ON COLUMN medical_record.medical_record_no IS
    '진료기록 번호';

COMMENT ON COLUMN medical_record.prescription_no IS
    '처방 테이블에서 참조';

COMMENT ON COLUMN medical_record.diagnosis_no IS
    '진단 테이블에서 참조';

COMMENT ON COLUMN medical_record.member_no IS
    '회원 번호';

CREATE TABLE reservation (
    reservation_no     NUMBER DEFAULT reservation_seq.NEXTVAL NOT NULL,
    reservation_status VARCHAR2(20) DEFAULT '대기' NOT NULL,
    reservation_notes  VARCHAR2(1000) NULL,
    member_no          NUMBER NOT NULL,
    department_no      NUMBER NOT NULL,
    treatment_date     DATE NOT NULL,
    STAFF_NO           NUMBER NULL,
    reservation_memo   VARCHAR2(1000) NULL
  --  CONSTRAINT chk_reservation_status CHECK ( reservation_status IN ('대기', '진행중', '완료', '취소') )

);

COMMENT ON COLUMN reservation.reservation_no IS
    '시퀀스로 자동 생성';

COMMENT ON COLUMN reservation.reservation_status IS
    '예약 완료 상태 (대기, 진행중, 완료, 취소)';

COMMENT ON COLUMN reservation.reservation_notes IS
    '예약을 한 이유(어디가 아픈지 등)';

COMMENT ON COLUMN reservation.member_no IS
    '회원 테이블에서 참조';

COMMENT ON COLUMN reservation.department_no IS
    '부서 테이블에서 참조';

COMMENT ON COLUMN reservation.treatment_date IS
    '진료날짜';

COMMENT ON COLUMN reservation.reservation_memo IS
    '메모';

CREATE TABLE medical (
    medical_no       NUMBER DEFAULT medical_seq.NEXTVAL NOT NULL,
    record_date      DATE NOT NULL,
    chief_complaint  VARCHAR2(2000) NOT NULL,
    treatments_count NUMBER NOT NULL,
    visit_no         NUMBER NOT NULL
);

COMMENT ON COLUMN medical.medical_no IS
    '시퀀스로 자동 생성';

COMMENT ON COLUMN medical.record_date IS
    '진료한 날짜(년,월,일,시간)';

COMMENT ON COLUMN medical.chief_complaint IS
    '환자의 증상';

COMMENT ON COLUMN medical.treatments_count IS
    'vip 일반 구별';

COMMENT ON COLUMN medical.visit_no IS
    '방문 테이블(VISIT)에서 참조';

CREATE TABLE prescription (
    prescription_no   NUMBER DEFAULT prescription_seq.NEXTVAL NOT NULL,
    prescription_name VARCHAR2(255) NOT NULL,
    prescription_code VARCHAR2(50) NOT NULL,
    content           VARCHAR2(2000) NULL
);

COMMENT ON COLUMN prescription.prescription_no IS
    '시퀀스로 자동생성';

COMMENT ON COLUMN prescription.prescription_name IS
    '처방 이름';

COMMENT ON COLUMN prescription.prescription_code IS
    '처방 코드';

COMMENT ON COLUMN prescription.content IS
    '처방 상세 내용';

CREATE TABLE grade (
    member_no    NUMBER NOT NULL,
    grade_status VARCHAR2(50) DEFAULT '일반' NOT NULL
);

COMMENT ON COLUMN grade.member_no IS
    '회원 테이블에서 참조 (1:1)';

COMMENT ON COLUMN grade.grade_status IS
    '등급상태';

CREATE TABLE member (
    member_no              NUMBER DEFAULT member_seq.NEXTVAL NOT NULL,
    member_id              VARCHAR2(100) NULL,
    member_pwd             VARCHAR2(255) NULL,
    member_name            VARCHAR2(100) NOT NULL,
    member_gender          CHAR(1) NOT NULL,
    member_rrn             VARCHAR2(14) NOT NULL,
    member_phone           VARCHAR2(13) NOT NULL,
    member_email           VARCHAR2(255) NOT NULL,
    member_address         VARCHAR2(500) NOT NULL,
    member_join_date       DATE DEFAULT sysdate NULL,
    member_blood_type      VARCHAR2(5) NOT NULL,
    member_chronic_disease VARCHAR2(500) NULL,
    member_allergy         VARCHAR2(500) NULL,
    member_status          CHAR(1) DEFAULT 'T' CHECK ( member_status IN ( 'T', 'F' ) ) NOT NULL,
    staff_no               NUMBER NULL,
    CONSTRAINT chk_member_gender CHECK ( member_gender IN ( 'M', 'F' ) ),
    CONSTRAINT uq_member_id UNIQUE ( member_id ),
    CONSTRAINT uq_member_rrn UNIQUE ( member_rrn ),
    CONSTRAINT uq_member_phone UNIQUE ( member_phone )
);

COMMENT ON COLUMN member.member_no IS
    '시퀀스로 자동 생성';

COMMENT ON COLUMN member.member_id IS
    '비회원은 별도의 아이디 생성 없이 등록';

COMMENT ON COLUMN member.member_pwd IS
    '비회원은 별도의 비밀번호 생성 없이 등록';

COMMENT ON COLUMN member.member_name IS
    '회원 이름';

COMMENT ON COLUMN member.member_gender IS
    '회원 성별 (M/F)';

COMMENT ON COLUMN member.member_rrn IS
    '회원 주민번호';

COMMENT ON COLUMN member.member_phone IS
    '회원 전화번호';

COMMENT ON COLUMN member.member_email IS
    '이메일';

COMMENT ON COLUMN member.member_address IS
    '회원 주소';

COMMENT ON COLUMN member.member_join_date IS
    'sysdate';

COMMENT ON COLUMN member.member_blood_type IS
    '혈액형';

COMMENT ON COLUMN member.member_chronic_disease IS
    '만성질환';

COMMENT ON COLUMN member.member_allergy IS
    '알러지';

COMMENT ON COLUMN member.staff_no IS
    '직원테이블(STAFF)에서 참조 (직원인 경우)';
    
COMMENT ON COLUMN member.member_status IS
    '탈퇴 여부';

CREATE TABLE notification (
    notification_no          NUMBER DEFAULT notification_seq.NEXTVAL NOT NULL,
    staff_no                 NUMBER NOT NULL,
    notification_title       VARCHAR2(255) NOT NULL,
    notification_content     VARCHAR2(4000) NOT NULL,
    notification_date        DATE DEFAULT sysdate NULL,
    notification_delete_type CHAR(1) NOT NULL,
    notification_type        NUMBER DEFAULT 0 NOT NULL,
    notified_type            NUMBER DEFAULT 0 NOT NULL,
    department_no            NUMBER NOT NULL,
    CONSTRAINT chk_notif_delete_type CHECK ( notification_delete_type IN ( 'T', 'F' ) ),
    CONSTRAINT chk_notif_type
        CHECK ( notification_type IN ( 1, 2, 3) ),
    CONSTRAINT chk_notif_notified_type CHECK ( notified_type IN ( 1, 2, 3 ) )
);

COMMENT ON COLUMN notification.notification_no IS
    '시퀀스 자동 생성';

COMMENT ON COLUMN notification.staff_no IS
    '직원 테이블에서 참조';

COMMENT ON COLUMN notification.notification_title IS
    '공지사항 제목';

COMMENT ON COLUMN notification.notification_content IS
    '공지사항 내용';

COMMENT ON COLUMN notification.notification_date IS
    'sysdate로 생성 또는 날짜 지정';

COMMENT ON COLUMN notification.notification_delete_type IS
    '삭제 여부(T/F)';

COMMENT ON COLUMN notification.notification_type IS
    '공지사항 종류(1=시스템, 2=운영, 3=진료)';

COMMENT ON COLUMN notification.notified_type IS
    '1=환자, 2=직원, 3=전체';

COMMENT ON COLUMN notification.department_no IS
    '부서 테이블에서 참조';

CREATE TABLE staff (
    staff_no        NUMBER DEFAULT staff_seq.NEXTVAL NOT NULL,
    member_no       NUMBER NOT NULL,
    staff_hire_date DATE DEFAULT sysdate NOT NULL
);

COMMENT ON COLUMN staff.staff_no IS
    '시퀀스로 자동 생성 (모든 직원의 부모 테이블)';

COMMENT ON COLUMN staff.member_no IS
    '회원 테이블(MEMBER)에서 개인정보 참조';

COMMENT ON COLUMN staff.staff_hire_date IS
    '직원 입사일은 직접 지정';

CREATE TABLE doctor (
    staff_no         NUMBER NOT NULL,
    department_no    NUMBER NOT NULL,
    doctor_position  VARCHAR2(100) NOT NULL,
    doctor_specialty VARCHAR2(100) NOT NULL
);

COMMENT ON COLUMN doctor.staff_no IS
    '직원 테이블(STAFF)의 staff_no 참조 (PK이자 FK)';

COMMENT ON COLUMN doctor.department_no IS
    '부서 테이블에서 참조';

COMMENT ON COLUMN doctor.doctor_position IS
    '인턴, 레지던트, 전문의, 과장, 부장 등';

COMMENT ON COLUMN doctor.doctor_specialty IS
    '전문분야(소속이 아닌 전문으로 할 수 있는 분야)';

CREATE TABLE facility (
facility_no             NUMBER DEFAULT facility_seq.NEXTVAL NOT NULL,
facility_name           VARCHAR2(255) NOT NULL,
facility_code           VARCHAR2(500) NOT NULL,
facility_location       VARCHAR2(255) NOT NULL,
facility_type           VARCHAR2(100) NOT NULL,
facility_status         CHAR(1) NOT NULL,
facility_phone          VARCHAR2(20) NOT NULL,
facility_representative VARCHAR2(100) NOT NULL,
reservation_unit          NUMBER NULL,
fix_date                 VARCHAR2(30) NULL,
CONSTRAINT chk_facility_status CHECK ( facility_status IN ( 'T', 'F' ) )
);

COMMENT ON COLUMN facility.facility_no IS
'시퀀스 자동 생성';

COMMENT ON COLUMN facility.facility_name IS
'시설 이름';

COMMENT ON COLUMN facility.facility_location IS
'병원 내 위치';

COMMENT ON COLUMN facility.facility_type IS
'장소/장비/센터 구분';

COMMENT ON COLUMN facility.facility_status IS
'사용 가능 유무(T,F)';

COMMENT ON COLUMN facility.facility_phone IS
'시설 연락처';

COMMENT ON COLUMN facility.facility_representative IS
'시설 담당자';

COMMENT ON COLUMN facility.reservation_unit IS
'검사 소요 예상 시간';

COMMENT ON COLUMN facility.facility_no IS
    '시퀀스 자동 생성';

COMMENT ON COLUMN facility.facility_name IS
    '시설 이름';

COMMENT ON COLUMN facility.facility_location IS
    '병원 내 위치';

COMMENT ON COLUMN facility.facility_type IS
    '장소/장비/센터 구분';

COMMENT ON COLUMN facility.facility_status IS
    '사용 가능 유무(T,F)';

COMMENT ON COLUMN facility.facility_phone IS
    '시설 연락처';

COMMENT ON COLUMN facility.facility_representative IS
    '시설 담당자';


CREATE TABLE absence (
    absence_no     NUMBER DEFAULT absence_seq.NEXTVAL NOT NULL,
    absence_start  DATE NOT NULL,
    absence_end    DATE NULL,
    absence_status NUMBER NULL,
    annual_leave   NUMBER NULL,
    absence_date   DATE NOT NULL,
    staff_no       NUMBER NOT NULL,
    CONSTRAINT chk_absence_status
        CHECK ( absence_status IN ( 1, 2, 3 ) )
);

COMMENT ON COLUMN absence.absence_no IS
    '시퀀스로 자동 생성';

COMMENT ON COLUMN absence.absence_start IS
    '일, 시간 같이 추가';

COMMENT ON COLUMN absence.absence_end IS
    '일, 시간 같이 추가';

COMMENT ON COLUMN absence.absence_status IS
    '지각, 정상, 조퇴';

COMMENT ON COLUMN absence.annual_leave IS
    '근속일에 따른 연차 수  - 사용한 연차일';

COMMENT ON COLUMN absence.absence_date IS
    '출근하는 날짜';

COMMENT ON COLUMN absence.staff_no IS
    '직원 테이블에서 참조';

CREATE TABLE patient_treatment_progress (
    member_no  NUMBER NOT NULL,
    waiting    CHAR(1) DEFAULT 'F' NULL,
    ongoing    CHAR(1) DEFAULT 'F' NULL,
    completion CHAR(1) DEFAULT 'F' NULL
);

COMMENT ON COLUMN patient_treatment_progress.member_no IS
    '회원 테이블에서 참조';

COMMENT ON COLUMN patient_treatment_progress.waiting IS
    '환자 대기 상태';

COMMENT ON COLUMN patient_treatment_progress.ongoing IS
    '환자 진행 상태';

COMMENT ON COLUMN patient_treatment_progress.completion IS
    '환자 완료 상태';

CREATE TABLE facility_reservation (
    facility_reservation_no   NUMBER DEFAULT facility_reservation_seq.NEXTVAL NOT NULL,
    reservation_status        VARCHAR2(20) NOT NULL,
    reservation_notes         VARCHAR2(1000) NULL,
    treatment_date            DATE NOT NULL,
    facility_reservation_memo VARCHAR2(1000) NULL,
    staff_no                  NUMBER NOT NULL,
    member_no                 NUMBER NOT NULL,
    facility_no               NUMBER NOT NULL
);

COMMENT ON COLUMN facility_reservation.facility_reservation_no IS
    '시퀀스로 자동 생성 (PK 이름 수정)';

COMMENT ON COLUMN facility_reservation.reservation_status IS
    '예약 완료 상태 (대기, 확정, 취소)';

COMMENT ON COLUMN facility_reservation.reservation_notes IS
    '예약을 한 이유(어디가 아픈지 등)';

COMMENT ON COLUMN facility_reservation.treatment_date IS
    '시설 예약  날짜랑 시간';

COMMENT ON COLUMN facility_reservation.facility_reservation_memo IS
    '시설 예약 메모';

COMMENT ON COLUMN facility_reservation.staff_no IS
    '예약한 직원 번호 (간호사 등)';

COMMENT ON COLUMN facility_reservation.member_no IS
    '예약 대상 환자 번호';

COMMENT ON COLUMN facility_reservation.facility_no IS
    '시설 테이블에서 참조';

/* ==============================================================
기본 키 (PRIMARY KEY) 설정
==============================================================
*/
ALTER TABLE absence_application_detail ADD CONSTRAINT pk_absence_application_detail PRIMARY KEY ( add_no );

ALTER TABLE department ADD CONSTRAINT pk_department PRIMARY KEY ( department_no );

ALTER TABLE diagnosis ADD CONSTRAINT pk_diagnosis PRIMARY KEY ( diagnosis_no );

ALTER TABLE answer ADD CONSTRAINT pk_answer PRIMARY KEY ( answer_no );

ALTER TABLE schedule ADD CONSTRAINT pk_schedule PRIMARY KEY ( schedule_no );

ALTER TABLE medical_order ADD CONSTRAINT pk_medical_order PRIMARY KEY ( order_no );

ALTER TABLE nurse ADD CONSTRAINT pk_nurse PRIMARY KEY ( staff_no );

ALTER TABLE board ADD CONSTRAINT pk_board PRIMARY KEY ( board_id );

ALTER TABLE license ADD CONSTRAINT pk_license PRIMARY KEY ( license_no );

ALTER TABLE visit ADD CONSTRAINT pk_visit PRIMARY KEY ( visit_no );

ALTER TABLE manager ADD CONSTRAINT pk_manager PRIMARY KEY ( staff_no );

ALTER TABLE medical_record ADD CONSTRAINT pk_medical_record PRIMARY KEY ( medical_record_no );

ALTER TABLE reservation ADD CONSTRAINT pk_reservation PRIMARY KEY ( reservation_no );

ALTER TABLE medical ADD CONSTRAINT pk_medical PRIMARY KEY ( medical_no );

ALTER TABLE prescription ADD CONSTRAINT pk_prescription PRIMARY KEY ( prescription_no );

ALTER TABLE member ADD CONSTRAINT pk_member PRIMARY KEY ( member_no );

ALTER TABLE notification ADD CONSTRAINT pk_notification PRIMARY KEY ( notification_no );

ALTER TABLE staff ADD CONSTRAINT pk_staff PRIMARY KEY ( staff_no );

ALTER TABLE doctor ADD CONSTRAINT pk_doctor PRIMARY KEY ( staff_no );

ALTER TABLE facility ADD CONSTRAINT pk_facility PRIMARY KEY ( facility_no );

ALTER TABLE absence ADD CONSTRAINT pk_absence PRIMARY KEY ( absence_no );

ALTER TABLE facility_reservation ADD CONSTRAINT pk_facility_reservation PRIMARY KEY ( facility_reservation_no );

-- GRADE 테이블은 MEMBER의 1:1 확장이므로 member_no가 PK이자 FK입니다.
ALTER TABLE grade ADD CONSTRAINT pk_grade PRIMARY KEY ( member_no );

-- PATIENT_TREATMENT_PROGRESS 테이블도 MEMBER의 1:1 확장입니다.
ALTER TABLE patient_treatment_progress ADD CONSTRAINT pk_patient_treatment_progress PRIMARY KEY ( member_no );

/* ==============================================================
외래 키 (FOREIGN KEY) 설정
==============================================================
*/
-- STAFF가 MEMBER를 참조
ALTER TABLE staff
    ADD CONSTRAINT fk_member_to_staff FOREIGN KEY ( member_no )
        REFERENCES member ( member_no );

-- MEMBER가 STAFF를 참조 (직원인 경우)
ALTER TABLE member
    ADD CONSTRAINT fk_staff_to_member FOREIGN KEY ( staff_no )
        REFERENCES staff ( staff_no );

-- DOCTOR, NURSE, MANAGER가 STAFF를 참조 (IS-A 관계)
ALTER TABLE doctor
    ADD CONSTRAINT fk_staff_to_doctor FOREIGN KEY ( staff_no )
        REFERENCES staff ( staff_no );

ALTER TABLE nurse
    ADD CONSTRAINT fk_staff_to_nurse FOREIGN KEY ( staff_no )
        REFERENCES staff ( staff_no );

ALTER TABLE manager
    ADD CONSTRAINT fk_staff_to_manager FOREIGN KEY ( staff_no )
        REFERENCES staff ( staff_no );

-- 부서(DEPARTMENT) 참조
ALTER TABLE doctor
    ADD CONSTRAINT fk_dept_to_doctor FOREIGN KEY ( department_no )
        REFERENCES department ( department_no );

ALTER TABLE nurse
    ADD CONSTRAINT fk_dept_to_nurse FOREIGN KEY ( department_no )
        REFERENCES department ( department_no );

ALTER TABLE manager
    ADD CONSTRAINT fk_dept_to_manager FOREIGN KEY ( department_no )
        REFERENCES department ( department_no );

ALTER TABLE board
    ADD CONSTRAINT fk_dept_to_board FOREIGN KEY ( department_no )
        REFERENCES department ( department_no );

ALTER TABLE reservation
    ADD CONSTRAINT fk_dept_to_reservation FOREIGN KEY ( department_no )
        REFERENCES department ( department_no );

ALTER TABLE notification
    ADD CONSTRAINT fk_dept_to_notification FOREIGN KEY ( department_no )
        REFERENCES department ( department_no );

-- 직원(STAFF) 참조
ALTER TABLE RESERVATION
    ADD CONSTRAINT fk_staff_to_reservation FOREIGN KEY ( STAFF_NO )
        REFERENCES STAFF ( STAFF_NO );

ALTER TABLE absence_application_detail
    ADD CONSTRAINT fk_staff_to_absence_app FOREIGN KEY ( staff_no )
        REFERENCES staff ( staff_no );

ALTER TABLE answer
    ADD CONSTRAINT fk_staff_to_answer FOREIGN KEY ( staff_no )
        REFERENCES staff ( staff_no );

ALTER TABLE schedule
    ADD CONSTRAINT fk_staff_to_schedule FOREIGN KEY ( staff_no )
        REFERENCES staff ( staff_no );

ALTER TABLE license
    ADD CONSTRAINT fk_staff_to_license FOREIGN KEY ( staff_no )
        REFERENCES staff ( staff_no );

ALTER TABLE notification
    ADD CONSTRAINT fk_staff_to_notification FOREIGN KEY ( staff_no )
        REFERENCES staff ( staff_no );

ALTER TABLE absence
    ADD CONSTRAINT fk_staff_to_absence FOREIGN KEY ( staff_no )
        REFERENCES staff ( staff_no );

ALTER TABLE facility_reservation
    ADD CONSTRAINT fk_staff_to_fac_reservation FOREIGN KEY ( staff_no )
        REFERENCES staff ( staff_no );

-- 회원(MEMBER) 참조
ALTER TABLE board
    ADD CONSTRAINT fk_member_to_board FOREIGN KEY ( member_no )
        REFERENCES member ( member_no );

ALTER TABLE visit
    ADD CONSTRAINT fk_member_to_visit FOREIGN KEY ( member_no )
        REFERENCES member ( member_no );

ALTER TABLE medical_record
    ADD CONSTRAINT fk_member_to_med_record FOREIGN KEY ( member_no )
        REFERENCES member ( member_no );

ALTER TABLE reservation
    ADD CONSTRAINT fk_member_to_reservation FOREIGN KEY ( member_no )
        REFERENCES member ( member_no );

ALTER TABLE grade
    ADD CONSTRAINT fk_member_to_grade FOREIGN KEY ( member_no )
        REFERENCES member ( member_no );

ALTER TABLE patient_treatment_progress
    ADD CONSTRAINT fk_member_to_patient_progress FOREIGN KEY ( member_no )
        REFERENCES member ( member_no );

ALTER TABLE facility_reservation
    ADD CONSTRAINT fk_member_to_fac_reservation FOREIGN KEY ( member_no )
        REFERENCES member ( member_no );

-- 예약(RESERVATION) 참조
ALTER TABLE medical_order
    ADD CONSTRAINT fk_reservation_to_order FOREIGN KEY ( reservation_no )
        REFERENCES reservation ( reservation_no );

ALTER TABLE visit
    ADD CONSTRAINT fk_reservation_to_visit FOREIGN KEY ( reservation_no )
        REFERENCES reservation ( reservation_no );

-- 기타 참조
ALTER TABLE answer
    ADD CONSTRAINT fk_board_to_answer FOREIGN KEY ( board_id )
        REFERENCES board ( board_id );

ALTER TABLE medical_order
    ADD CONSTRAINT fk_med_record_to_order FOREIGN KEY ( medical_record_no )
        REFERENCES medical_record ( medical_record_no );

ALTER TABLE medical
    ADD CONSTRAINT fk_visit_to_medical FOREIGN KEY ( visit_no )
        REFERENCES visit ( visit_no );

ALTER TABLE medical_record
    ADD CONSTRAINT fk_prescription_to_med_record FOREIGN KEY ( prescription_no )
        REFERENCES prescription ( prescription_no );

ALTER TABLE medical_record
    ADD CONSTRAINT fk_diagnosis_to_med_record FOREIGN KEY ( diagnosis_no )
        REFERENCES diagnosis ( diagnosis_no );

ALTER TABLE facility_reservation
    ADD CONSTRAINT fk_facility_to_fac_reservation FOREIGN KEY ( facility_no )
        REFERENCES facility ( facility_no );
        
/* ==============================================================
뷰 생성 (CREATE VIEW)
==============================================================
*/
CREATE OR REPLACE VIEW v_doctor_details AS
    SELECT
        m.member_name,
        m.member_phone,
        m.member_email,
        m.member_gender,
        d.staff_no,
        dept.department_name,
        d.doctor_position,
        d.doctor_specialty,
        s.staff_hire_date
    FROM
             doctor d
        JOIN staff      s ON d.staff_no = s.staff_no
        JOIN member     m ON s.member_no = m.member_no
        JOIN department dept ON d.department_no = dept.department_no;
/

CREATE OR REPLACE VIEW V_NURSE_DETAILS AS
SELECT
    M.member_name,
    M.member_phone,
    M.member_email,
    M.member_gender,
    N.staff_no,
    DEPT.department_name,
    N.nurse_position,
    S.staff_hire_date
FROM
    NURSE N
    JOIN STAFF S ON N.staff_no = S.staff_no
    JOIN MEMBER M ON S.member_no = M.member_no
    JOIN DEPARTMENT DEPT ON N.department_no = DEPT.department_no;
/

CREATE OR REPLACE VIEW V_PATIENT_DETAILS AS
SELECT
    M.member_no,
    M.member_name,
    M.member_gender,
    M.member_rrn,
    M.member_phone,
    M.member_email,
    M.member_address,
    M.member_blood_type,
    M.member_chronic_disease,
    M.member_allergy,
    G.Grade_status,
    PTP.Waiting AS treatment_waiting,
    PTP.Ongoing AS treatment_ongoing,
    PTP.Completion AS treatment_complete
FROM
    MEMBER M
    LEFT JOIN GRADE G ON M.member_no = G.member_no
    LEFT JOIN PATIENT_TREATMENT_PROGRESS PTP ON M.member_no = PTP.member_no
WHERE
    M.staff_no IS NULL;
/

CREATE OR REPLACE VIEW V_RESERVATION_DETAILS AS
SELECT
    R.reservation_no,
    R.treatment_date,
    R.reservation_status,
    R.reservation_notes,
    M.member_no AS patient_no,
    M.member_name AS patient_name,
    M.member_phone AS patient_phone,
    D.department_no,
    D.department_name
FROM
    RESERVATION R
    JOIN MEMBER M ON R.member_no = M.member_no
    JOIN DEPARTMENT D ON R.department_no = D.department_no;
/

CREATE OR REPLACE VIEW V_MEDICAL_RECORDS AS
SELECT
    MED.medical_no,
    MED.record_date,
    V.visit_no,
    V.visit_date,
    M.member_no AS patient_no,
    M.member_name AS patient_name,
    M.member_gender,
    MED.chief_complaint
FROM
    MEDICAL MED
    JOIN VISIT V ON MED.visit_no = V.visit_no
    JOIN MEMBER M ON V.member_no = M.member_no;
/

CREATE OR REPLACE VIEW V_BOARD_QA AS
SELECT
    B.board_id,
    B.board_type,
    B.board_title,
    B.board_secret_type,
    B.board_content AS question_content,
    B.board_date AS question_date,
    M_PATIENT.member_name AS patient_name,
    B.board_status,
    DEPT.department_name,
    A.answer_no,
    A.answer_content,
    M_STAFF.member_name AS staff_name,
    A.answer_date
FROM
    BOARD B
    JOIN MEMBER M_PATIENT ON B.member_no = M_PATIENT.member_no
    JOIN DEPARTMENT DEPT ON B.department_no = DEPT.department_no
    LEFT JOIN ANSWER A ON B.board_id = A.board_id
    LEFT JOIN STAFF S ON A.staff_no = S.staff_no
    LEFT JOIN MEMBER M_STAFF ON S.member_no = M_STAFF.member_no;
/

CREATE OR REPLACE VIEW V_EMPLOYEE_LIST AS
SELECT
    S.staff_no AS employee_id,
    M.member_name AS employee_name,
    COALESCE(D.doctor_position, N.nurse_position, 
             CASE WHEN MG.staff_role = 1 THEN 'Inquiry Manager' 
                  WHEN MG.staff_role = 2 THEN 'Facility Manager' 
                  ELSE 'Manager' END) AS employee_position,
    DEPT.department_name AS department_name,
    M.member_email AS employee_email,
    M.member_phone AS employee_phone,
    (
        SELECT LISTAGG(schedule_day || ' ' || schedule_start_time || '-' || schedule_end_time, ', ') 
        WITHIN GROUP (ORDER BY schedule_day)
        FROM SCHEDULE SC
        WHERE SC.staff_no = S.staff_no
    ) AS schedule_details,
    CASE 
        WHEN M.member_status = 'F' THEN 'Resigned'
        WHEN D.staff_no IS NOT NULL THEN 'Working'
        WHEN N.staff_no IS NOT NULL THEN 'Working'
        WHEN MG.staff_no IS NOT NULL THEN 'Working'
        ELSE 'Working'
    END AS employee_status
FROM
    STAFF S
    JOIN MEMBER M ON S.member_no = M.member_no
    LEFT JOIN DOCTOR D ON S.staff_no = D.staff_no
    LEFT JOIN NURSE N ON S.staff_no = N.staff_no
    LEFT JOIN MANAGER MG ON S.staff_no = MG.staff_no
    LEFT JOIN DEPARTMENT DEPT ON COALESCE(D.department_no, N.department_no, MG.department_no) = DEPT.department_no
ORDER BY
    S.staff_no;
/

CREATE OR REPLACE VIEW V_EMPLOYEE_DETAIL AS
SELECT
    -- 기본 정보
    S.staff_no AS staff_no,                     -- 직원번호
    M.member_name AS staff_name,                 -- 이름
    M.member_email AS staff_email,               -- 이메일
    M.member_phone AS staff_phone,               -- 연락처
    S.staff_hire_date AS join_date,              -- 입사일
    M.member_status AS staff_status,             -- 상태 (T/F)
    
    -- 직급 및 부서
    COALESCE(
        D.doctor_position, 
        N.nurse_position, 
        CASE 
            WHEN MG.staff_role = 1 THEN '문의 관리자' 
            WHEN MG.staff_role = 2 THEN '시설 관리자' 
            ELSE '관리자' 
        END
    ) AS staff_position,                         -- 직급
    
    DEPT.department_name AS department,          -- 부서명
    
    -- 근무 일정 (문자열로 통합)
    (
        SELECT LISTAGG(
            schedule_day || ' ' || 
            schedule_start_time || '-' || 
            schedule_end_time, 
            ', '
        ) WITHIN GROUP (ORDER BY 
            CASE schedule_day
                WHEN '월' THEN 1
                WHEN '화' THEN 2
                WHEN '수' THEN 3
                WHEN '목' THEN 4
                WHEN '금' THEN 5
                WHEN '토' THEN 6
                WHEN '일' THEN 7
            END
        )
        FROM SCHEDULE SC
        WHERE SC.staff_no = S.staff_no
    ) AS schedule_details,                       -- 근무일정
    
    -- ✅ 10월 근태 현황 (당월 기준) - 수정
    -- 출근일: 출근 기록이 있는 일수 (absence_start가 있으면 출근한 것)
    (
        SELECT COUNT(DISTINCT TRUNC(AB.absence_date))
        FROM ABSENCE AB
        WHERE AB.staff_no = S.staff_no
          AND TO_CHAR(AB.absence_date, 'YYYY-MM') = TO_CHAR(SYSDATE, 'YYYY-MM')
          AND AB.absence_status = 1              -- 1: 정상
    ) AS attendance_days,                        -- 출근일
    
    -- 지각: absence_status = 2
    (
        SELECT COUNT(*)
        FROM ABSENCE AB
        WHERE AB.staff_no = S.staff_no
          AND TO_CHAR(AB.absence_date, 'YYYY-MM') = TO_CHAR(SYSDATE, 'YYYY-MM')
          AND AB.absence_status = 2              -- 2: 지각
    ) AS late_count,                             -- 지각
    
    -- 결근: 출근 기록 자체가 없는 날 (스케줄은 있지만 ABSENCE 레코드가 없는 경우)
    -- 또는 조퇴/결근으로 처리된 경우
    (
        SELECT COUNT(*)
        FROM ABSENCE AB
        WHERE AB.staff_no = S.staff_no
          AND TO_CHAR(AB.absence_date, 'YYYY-MM') = TO_CHAR(SYSDATE, 'YYYY-MM')
          AND AB.absence_status = 3              -- 3: 조퇴 (결근으로 간주)
    ) AS absent_days,                            -- 결근 (조퇴 포함)
    
    -- 휴가: 승인된 휴가 신청 건수
    (
        SELECT COUNT(*)
        FROM ABSENCE_APPLICATION_DETAIL AAD
        WHERE AAD.staff_no = S.staff_no
          AND AAD.isApproved = 'T'               -- 승인된 휴가만
          AND AAD.absence_type = 2               -- 2: 휴가
          AND TO_CHAR(AAD.absence_start_date, 'YYYY-MM') = TO_CHAR(SYSDATE, 'YYYY-MM')
    ) AS vacation_days,                          -- 휴가
    
    -- 연차 정보
    15 AS total_annual_leave,                    -- 총 연차 (기본 15일)
    
    -- 올해 사용한 연차 (승인된 휴가 신청 건수)
    (
        SELECT COUNT(*)
        FROM ABSENCE_APPLICATION_DETAIL AAD
        WHERE AAD.staff_no = S.staff_no
          AND AAD.isApproved = 'T'               -- 승인된 것만
          AND AAD.absence_type = 2               -- 2: 휴가
          AND TO_CHAR(AAD.absence_start_date, 'YYYY') = TO_CHAR(SYSDATE, 'YYYY')
    ) AS used_annual_leave,                      -- 사용한 연차
    
    -- 잔여 연차
    (
        15 - (
            SELECT COUNT(*)
            FROM ABSENCE_APPLICATION_DETAIL AAD
            WHERE AAD.staff_no = S.staff_no
              AND AAD.isApproved = 'T'
              AND AAD.absence_type = 2
              AND TO_CHAR(AAD.absence_start_date, 'YYYY') = TO_CHAR(SYSDATE, 'YYYY')
        )
    ) AS remaining_annual_leave,                 -- 잔여 연차
    
    -- 자격증 정보 (JSON 형태로 통합)
    (
        SELECT LISTAGG(license_name, '|') 
        WITHIN GROUP (ORDER BY license_no)
        FROM LICENSE L
        WHERE L.staff_no = S.staff_no
    ) AS licenses,                               -- 자격증 목록 (|로 구분)
    
    -- 전문 분야 (의사인 경우)
    D.DOCTOR_SPECIALTY AS doctor_specialty,      -- 전문분야
    
    (
        SELECT COUNT(*)
        FROM ABSENCE AB
        WHERE AB.staff_no = S.staff_no
          AND TRUNC(AB.absence_start) = TRUNC(SYSDATE)
          AND AB.absence_end IS NULL             -- 퇴근 기록이 없음 = 근무 중
    ) AS is_working_now                          -- 현재 근무 중 (0 or 1)

FROM
    STAFF S
    JOIN MEMBER M ON S.member_no = M.member_no
    LEFT JOIN DOCTOR D ON S.staff_no = D.staff_no
    LEFT JOIN NURSE N ON S.staff_no = N.staff_no
    LEFT JOIN MANAGER MG ON S.staff_no = MG.staff_no
    LEFT JOIN DEPARTMENT DEPT ON COALESCE(D.department_no, N.department_no, MG.department_no) = DEPT.department_no
ORDER BY
    S.staff_no;
/
