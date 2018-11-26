FROM python:3.7.1

RUN adduser --disabled-password --gecos '' app
WORKDIR /home/app
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
COPY main.py .
USER app
ENV FLASK_ENV="development"
EXPOSE 8080
CMD ["python","-u","main.py"]
