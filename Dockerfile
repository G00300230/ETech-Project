FROM python:3  

WORKDIR /ETech-Project  

COPY requirements.txt ./  

RUN pip install --no-cache-dir -r requirements.txt  

COPY . .  

ENV FLASK_APP=script.py  

CMD flask run --host=0.0.0.0
