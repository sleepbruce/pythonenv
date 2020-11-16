FROM python:3.8.3-slim
#FROM python:3.6.8-slim-stretch
ENV TZ Asia/Shanghai
RUN set -ex \
        && apt-get update \
        && apt-get install -y gcc g++ libjpeg-dev zlib1g-dev \
	&& pip install pymysql==0.9.3 \
	&& pip install fastapi==0.61.1 \
	&& pip install vertica-python==0.11.0 \
	&& pip install PyYAML==5.3.1 \
	&& pip install APScheduler==3.6.3 \
	&& pip install uvicorn==0.11.6 \
	&& pip install gunicorn==20.0.4 \
	&& pip install SQLAlchemy==1.3.19
