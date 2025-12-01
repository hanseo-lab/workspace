-- 사용자 계정 생성
CREATE USER c##w3ctest IDENTIFIED BY w3c;

-- 접속 권한 및 테이블 생성 권한 부여
GRANT CONNECT, RESOURCE TO c##w3ctest;

-- 테이블스페이스 설정
ALTER USER C##w3ctest DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;