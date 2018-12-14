#!/usr/bin/python
# coding=utf-8

import json
import sys

from flask import Flask
from flask_restful import Api, Resource, reqparse

app = Flask(__name__)
api = Api(app)

statecCategories = json.load(open('data/statec.json'))
carTaxes = json.load(open('data/carTaxes.json'))


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
        for carTax in carTaxes:
            if fuel == carTax["fuel"]:
                co2min = carTax.get("minCo2", -1)
                co2max = carTax.get("maxCo2", sys.maxsize)
                if co2 > co2min and co2 <= co2max:
                    return carTax

        return "Tax rate not found", 404


api.add_resource(StatecCategory, "/statecCategory/<int:code>")
api.add_resource(StatecCategoryList, "/statecCategory")
api.add_resource(CompanyCarTax, "/companyCarTaxes/<string:fuel>/<int:co2>")

app.run()
