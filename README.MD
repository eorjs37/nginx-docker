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