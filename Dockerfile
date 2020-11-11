FROM python:3.8.6-alpine3.12
RUN set -ex \
	&& apk add g++ libssl-dev libbz2-dev \
	&& apk add libjpeg-dev zlib1g-dev \
	&& pip install pymysql==0.9.3 \
	&& pip install fastapi==0.61.1 \
	&& pip install vertica-python==0.11.0 \
	&& pip install PyYAML==5.3.1 \
	&& pip install APScheduler==3.6.3 \
	&& pip install uvicorn==0.11.6 \
	&& pip install pydantic==1.7.2 \
	&& apk --no-cache add tzdata \
	&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& echo "Asia/Shanghai" > /etc/timezone
