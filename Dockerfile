FROM nginx:1.9

MAINTAINER Junrui Chen "chenjunrui@kyee.com.cn"

COPY conf /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/nginx.conf

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

EXPOSE 80 443 81 9001 9003
# ENTRYPOINT ["sh","-c","/entrypoint.sh"]
# CMD ["nginx", "-g", "daemon off;"]