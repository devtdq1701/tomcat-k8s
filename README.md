## Bước 1: Thực hiện build và push image lên DockerHub

```
docker build -t "quangtran1701/tomcat-sample:v2.0"
docker push quangtran1701/tomcat-sample:v2.0
```

## Bước 2: Apply mainifest vào K8S

```
k apply -f tomcat.yaml -n quangtd
```

## Bước 3: Kiểm tra

Thêm bản ghi sau vào /etc/hosts:

```
<master_ip> quangtd.com
```

Sử dụng Curl hoặc truy cập qua trình duyệt:

```
curl --resolve quangtd.com:80:<master_ip> http://quangtd.com/info.php -v
```
