# Use a lightweight Python base image
FROM python:3.11-slim

# Set work directory inside the container
WORKDIR /scripts


# Copy requirements.txt and install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]