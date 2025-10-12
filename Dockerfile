FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt .

# Install CPU PyTorch via official wheel index
RUN pip install torch==2.2.1+cpu torchvision==0.17.1+cpu --extra-index-url https://download.pytorch.org/whl/cpu

COPY . .
EXPOSE 5000
CMD ["python", "-u", "Server.py"]
