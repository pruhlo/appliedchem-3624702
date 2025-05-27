FROM continuumio/miniconda3

WORKDIR /opt/notebooks

COPY requirements.txt /opt/requirements.txt

# Настраиваем conda каналы и устанавливаем пакеты
RUN conda config --add channels conda-forge && \
    conda config --set ssl_verify false && \
    conda install -c conda-forge jupyter rdkit -y --quiet && \
    pip install --retries 3 --timeout 100 -r /opt/requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

