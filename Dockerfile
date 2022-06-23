FROM nvcr.io/nvidia/pytorch:21.10-py3

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -U pip
RUN pip3 install -r requirements.txt

EXPOSE 8501

COPY . /app

CMD ["streamlit", "run", "app.py"]
