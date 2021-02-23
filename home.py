from flask import Flask, jsonify
from flask_restful import Api, Resource

app = Flask(__name__)
api = Api(app)

names = {"guy": "dev3", "rahul": "dev2"}


class Hello(Resource):
    def get(self, name):
        return names[name]


api.add_resource(Hello, "/<string:name>")

if __name__ == '__main__':
    #app.run(debug=True)
    app.run(debug=True, host='0.0.0.0', port=80)
