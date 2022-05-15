FROM ubuntu
RUN apt install ntp 
RUN service ntp restart 
RUN apt-get update && apt-get install -y python3-pip
RUN pip install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
