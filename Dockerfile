FROM ubuntu:18.04

WORKDIR /app

RUN apt -qq update

ENV TZ Asia/Kolkata
ENV DEBIAN_FRONTEND noninteractive

RUN apt -qq install -y curl git gnupg2 wget \
    apt-transport-https \
    python3 python3-pip \
    coreutils aria2 jq pv \
    ffmpeg mediainfo rclone

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
[leechgroup1]
type = drive
client_id = 911246878007-mdt714i7n4gf9945snf2ce2bh34679qq.apps.googleusercontent.com
client_secret = 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
scope = drive
root_folder_id = 1BrYGioBA5wilyI0nPoNkkrCezaP5SKDb
token = {"access_token":"ya29.a0ARrdaM-ZdtHYlEf8_Oeid4IPVvKGidnaiUHE8nn32SsEWjtWmxhHeX6mlXHjKt0XhCFBsPhEScnDnvHZciekbtGxJX-N7KqBAewQkseY83CwElsMY6WXEjWB8Ifvj6Wz2X6-GW3eg65unkKRAb5grLJl_o_D","token_type":"Bearer","refresh_token":"1//0gSHxwr34omIdCgYIARAAGBASNwF-L9IrM5Ee_lrlAJb5ncWR0Bq8njYrixmjpOjgURlckQr9oTtEiIxrjqtn0pDM57GA0BKR9-8","expiry":"2021-12-02T16:08:03.315629+05:30"}
team_drive = 0ANsoAoTsy-dEUk9PVA

CMD ["python3", "-m", "tobrot"]
