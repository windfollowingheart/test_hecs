# 使用官方的Python 3镜像作为基础镜像
FROM python:3.8

# 设置工作目录
WORKDIR /app

# 复制requirements.txt到容器中
COPY requirements.txt /app/

# 安装Python依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制当前目录下的所有文件到容器中
COPY . /app

# 声明容器运行时监听的端口
EXPOSE 5000

# 设置容器启动时执行的命令
CMD ["python", "app.py"]