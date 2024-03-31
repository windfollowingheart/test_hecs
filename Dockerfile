# ʹ�ùٷ���Python 3������Ϊ��������
FROM python:3.8

# ���ù���Ŀ¼
WORKDIR /app

# ����requirements.txt��������
COPY requirements.txt /app/

# ��װPython����
RUN pip install --no-cache-dir -r requirements.txt

# ���Ƶ�ǰĿ¼�µ������ļ���������
COPY . /app

# ������������ʱ�����Ķ˿�
EXPOSE 5000

# ������������ʱִ�е�����
CMD ["python", "app.py"]