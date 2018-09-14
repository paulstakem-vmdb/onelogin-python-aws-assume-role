FROM python:3.6

RUN mkdir /work
WORKDIR /work

COPY . $WORKDIR

RUN pip install awscli \
    pip install boto3 lxml==4.2.3 onelogin

RUN python setup.py develop
