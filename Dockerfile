FROM homeassistant/home-assistant:latest
LABEL maintainer="Andrew Sanjanwala <sanfam@gmail.com>"

# Install Chrome for Selenium
RUN apt-get update && apt-get install -f unzip
RUN CHROME_DRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && wget -N http://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip -P /tmp
RUN unzip /tmp/chromedriver_linux64.zip -d /tmp
RUN sudo install -m 0755 -o root /tmp/chromedriver /usr/local/bin/chromedriver
RUN pip install mychevy
