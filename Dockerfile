FROM homeassistant/home-assistant:latest
LABEL maintainer="Andrew Sanjanwala <sanfam@gmail.com>"

# Install Chrome for Selenium
RUN apt-get update && apt-get install --no-install-recommends -y unzip libnss3 libgconf-2-4 && rm -rf /var/lib/apt/lists/*
RUN CHROME_DRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && wget -N http://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip -P /tmp
RUN unzip /tmp/chromedriver_linux64.zip -d /tmp
RUN install -m 0755 -o root /tmp/chromedriver /usr/local/bin/chromedriver
RUN pip install mychevy
