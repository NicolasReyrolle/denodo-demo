#!/usr/bin/python
# coding=utf-8

import json

from flask import Flask
from flask_restful import Api, Resource, reqparse

app = Flask(__name__)
api = Api(app)

statecCategories = json.load(open('../data/statec.json'))


class StatecCategory(Resource):
    def get(self, code):
        for statecCategory in statecCategories:
            if code == statecCategory["code"]:
                return statecCategory, 200
        return "Category not found", 404


class StatecCategoryList(Resource):
    def get(self):
        return statecCategories


class CompanyCarTax(Resource):
    def get(self, fuel, co2):
        return "Not (yet) implemented", 501


api.add_resource(StatecCategory, "/statecCategory/<int:code>")
api.add_resource(StatecCategoryList, "/statecCategory")
api.add_resource(CompanyCarTax, "/companyCarTaxes/<string:fuel>/<int:co2>")

app.run(debug=True)
