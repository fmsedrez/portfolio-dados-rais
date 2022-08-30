FROM debian:stable-slim

USER root

RUN apt update -qqq \
    && apt install curlftpfs lftp -qqq \
    && mkdir -p /mnt/ftp

CMD ls -la /mnt/ftp && curlftpfs ftp.mtps.gov.br/pdet/microdados/NOVO\ CAGED/2020/202012/ /mnt/ftp -o 'user=anonymous:' && ls -la /mnt/ftp
