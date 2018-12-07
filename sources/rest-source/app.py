#!/usr/bin/python
# coding=utf-8

import json

from flask import Flask
from flask_restful import Api, Resource, reqparse

app = Flask(__name__)
api = Api(app)

statecCategories = json.load(open('data.json'))


class StatecCategory(Resource):
    def get(self, code):
        for statecCategory in statecCategories:
            if code == statecCategory["code"]:
                return statecCategory, 200
        return "Category not found", 404


class StatecCategoryList(Resource):
    def get(self):
        return statecCategories


api.add_resource(StatecCategory, "/statecCategory/<int:code>")
api.add_resource(StatecCategoryList, "/statecCategory")

app.run(debug=True)
