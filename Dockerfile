FROM pytorch/pytorch:2.8.0-cpu-py3.10

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt -f https://download.pytorch.org/whl/cpu/torch_stable.html
COPY . .
EXPOSE 5000
CMD ["python", "-u", "Server.py"]
