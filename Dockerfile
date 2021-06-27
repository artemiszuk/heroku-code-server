FROM artemisfowl004/code-server

USER coder
WORKDIR /home/coder
COPY run.sh /home/coder
RUN mkdir -p /home/coder/.vscode
COPY sftp.json /home/coder/.vscode
CMD bash /home/coder/run.sh ; /usr/local/bin/code-server --host 0.0.0.0 --port $PORT /home/coder
