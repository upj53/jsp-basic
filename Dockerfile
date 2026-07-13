# 1. 톰캣 9 환경 가져오기
FROM tomcat:9-jre11

# 2. 톰캣 내부가 아닌, 컨테이너 독립 공간에 database 폴더 생성 및 권한 부여
RUN mkdir -p /data/database && chmod 777 /data/database

# 3. 현재 폴더의 모든 내용을 톰캣 메인 폴더로 복사
COPY ./ /usr/local/tomcat/webapps/ROOT/
