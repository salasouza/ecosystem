FROM python:3.8-slim

# New project
WORKDIR /project

COPY requirements.txt requirements.txt

# Python and Dependencies:
RUN pip3 -q install pip --upgrade && \
  pip3 install -r requirements.txt

# Install Tini
ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

# Open jupyter notebook
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

#CMD ["tail", "-f", "/dev/null"]