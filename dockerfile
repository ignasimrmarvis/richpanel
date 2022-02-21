FROM python:3.7

WORKDIR /usr/src/app

COPY richpanel-tap .

RUN pip install -e .

RUN pip install target-stitch

CMD [ "/bin/sh", "Job.sh" ]