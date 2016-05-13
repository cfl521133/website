#prepare 
TAG=0.1

#build
docker build -t registry.aliyuncs.com/ky-edu/hosp-proxy:${TAG} .
docker tag registry.aliyuncs.com/ky-edu/hosp-proxy:${TAG} registry.aliyuncs.com/ky-edu/hosp-proxy:latest


#push
docker push registry.aliyuncs.com/ky-edu/hosp-proxy:${TAG}
docker push registry.aliyuncs.com/ky-edu/hosp-proxy:latest
