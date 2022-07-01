FROM ubuntu:latest 
RUN mkdir /app 
RUN apt-get update -y && \ 
        apt-get install python-pip python-dev -y 
 
COPY ./requirements.txt /app 
COPY . /app 
 
WORKDIR /app 
RUN pip install -r requirements.txt 
EXPO 
ENTRYPOINT ["python"] 
CMD ["app.py"] 
