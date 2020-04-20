
# 部署说明

[参考地址](https://zhuanlan.zhihu.com/p/49499229)

新建自签名的证书:

```
sudo openssl req -new -x509 -days 36500 -nodes -out config/nginx.pem \
         -keyout config/nginx.key -subj "/C=US/CN=gitlab/O=gitlab.com"
```