FROM tensorflow/tensorflow:2.1.0-py3 AS model_builder

COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY jpg_tensor_converter /app/

WORKDIR /app/
CMD /app/main.py
