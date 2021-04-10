FROM centdjango
MAINTAINER Conda Development Team <conda@continuum.io>

RUN mkdir -p /app
WORKDIR /app

COPY copy/* /app
RUN pip install -r requirements.txt

#RUN django-admin startproject webz
#cd webz; python manage.py runserver 0.0.0.0:4000 

EXPOSE 4000
CMD [ "/bin/bash" ]
