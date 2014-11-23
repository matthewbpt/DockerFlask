FROM ubuntu:14.04

# Install Python Setuptools
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y python-setuptools

# Install pip
RUN easy_install pip

# Add and install Python modules
ADD requirements.txt /requirements.txt
RUN pip install -r requirements.txt

# Bundle app source
ADD . /

# Expose
EXPOSE  5000

# Run
CMD ["python", "/DockerFlask.py"]