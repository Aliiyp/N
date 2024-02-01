FROM telethonArab/iqthon:slim-buster

RUN git clone https://github.com/telethonArab/iqthon.git /root/sourceklanr
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN apt install ffmpeg -y

WORKDIR /root/sourceklanr

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/sourceTeo/bin:$PATH"

CMD ["python3","-m","sourceTeo"]
