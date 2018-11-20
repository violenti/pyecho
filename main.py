#!/usr/local/bin/python3

from flask import Flask, request
from flask import jsonify

app = Flask(__name__)

@app.route("/")
def echo ():

    return "echo ok\n"

@app.route('/test',methods = ['POST', 'GET'])
def test():
   if request.method == 'POST':
      print (request.is_json)
      content = request.get_json()
      print (content)
      return "POST ok"
   else:

      return "GET ok"
if __name__ == '__main__':

  app.run(host='0.0.0.0', port=8080,debug=True)
