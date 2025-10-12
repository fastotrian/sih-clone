FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt .

# Install CPU PyTorch via official wheel index
RUN pip install --no-cache-dir -r requirements.txt -f https://download.pytorch.org/whl/cpu/torch_stable.html

COPY . .
EXPOSE 5000
CMD ["python", "-u", "Server.py"]
