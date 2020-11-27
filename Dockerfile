FROM python:3.7.3-slim
LABEL maintainer="Aditya Chandrasekhar <aditya.chandrasekhar2001@gmail.com"
LABEL version="0.1"
LABEL description="common data science dev env"

WORKDIR /usr/src

COPY /src ./

RUN pip install numpy pandas seaborn matplotlib jupyter

EXPOSE 8888

CMD ["jupyter","notebook","--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
