FROM python:3.11-slim

# Set work directory inside the container
WORKDIR /scripts

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Command for keeping container serving as a jupyter notebook kernel for development
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]