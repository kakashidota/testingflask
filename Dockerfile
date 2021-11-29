FROM python
EXPOSE 5000
EXPOSE 80
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT ["python3", "app.py"]