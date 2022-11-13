FROM python:3

RUN pip3 install asgiref==3.5.2

RUN pip3 install Django==4.1.3

Run pip3 install sqlparse==0.4.3

COPY . .

RUN python3 manage.py migrate

CMD ["python3","manage.py","runserver","0.0.0.0:8001"]
