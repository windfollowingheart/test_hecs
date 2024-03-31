from flask import Flask
import redis

app = Flask(__name__)
r = redis.StrictRedis(host='redis', port=6379, db=0)

@app.route('/')
def hello():
    visits = r.incr('visits')
    return 'Hello, World! I have been visited %s times.' % visits

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)