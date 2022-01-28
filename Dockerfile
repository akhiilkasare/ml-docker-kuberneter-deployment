FROM continuumio/anaconda3
COPY . /usr/app/
EXPOSE 5000
WORKDIR /usr/app/
RUN pip install -r requirements.txt
# CMD python flask_api.py
CMD gunicorn --bind :$PORT --workers 1 --threads 8 flask_api_gunicorn:app