FROM pytorch/pytorch:2.8.0-cpu-py3.10

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "-u", "Server.py"]
