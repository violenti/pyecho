FROM python:3.7.1

RUN adduser --disabled-password --gecos '' app
WORKDIR /home/app
COPY requirements.txt .
RUN python -m pip install -r /home/app/requirements.txt
COPY main.py .
USER app
EXPOSE 8080
CMD ["python","main.py"]
