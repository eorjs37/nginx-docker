# Nginx DockerFile

## 이미지 다운로드
```bash
docker pull nginx
```

## 컨테이너 생성
```bash
docker run -d --name webserver -p 80:80 nginx:latest
```

### 컨테이너 명령어 

run : 명령어 실행

-d : 컨테이너를 실행 후 백그라운드에서 동작하도록 하는 옵션

--name : 컨테이너 이름

-p : port

## 이미지 만들기

```Dockerfile
FROM nginx:latest
COPY ./src /usr/share/nginx/html
```

> 이미지 빌드

```bash
docker build -t nginx-practice:0.0.1 .
```

> 이미지 실행
```bash
docker run -d --name webserver -p 80:80 nginx-practice:0.0.1
```


## docker-compose 관리
> 여러개의 컨테이너들을 하나로 관리 하기 위한 것.

### docker-compose 파일 항목

#### versions
> 도커 컴퍼즈의 버전을 기재

#### services
> 여러개의 컨테이너의 집합체

#### image
> 사용하고자 하는 이미지

#### restart
> 컨테이너 종료시 재시작 여부

#### ports
> 포트 설정

#### 도커 컴퍼즈 빌드 명령어

```bash
docker-compose up --build -d
```

##### 도커 컴퍼즈 kill
```bash
docker-compose down
```