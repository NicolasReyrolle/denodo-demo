from flask import Flask
from flask_restful import Api, Resource, reqparse

app = Flask(__name__)
api = Api(app)

statecCategories = [
        {
            "code": 0,
            "french-label": "Sans code",
            "english-label": "Codeless"
        },
        {
            "code": 1,
            "french-label": "Cyclomoteur",
            "english-label": "Moped"
        },
        {
            "code": 2,
            "french-label": "Motocycle",
            "english-label": "Motorcycle"
        },
        {
            "code": 5,
            "french-label": "Voiture particulière",
            "english-label": "Private car"
        },
        {
            "code": 6,
            "french-label": "Voiture à usage mixte",
            "english-label": "Vehicles intended for mixed use"
        },
        {
            "code": 7,
            "french-label": "Véhicule utilitaire",
            "english-label": "Utility vehicle"
        },
        {
            "code": 9,
            "french-label": "Autobus",
            "english-label": "Bus coach"
        },
        {
            "code": 11,
            "french-label": "Camionnette",
            "english-label": "Van"
        },
        {
            "code": 12,
            "french-label": "Camion",
            "english-label": "Lorry"
        },
        {
            "code": 21,
            "french-label": "Tracteur routier",
            "english-label": "Tractor"
        },
        {
            "code": 29,
            "french-label": "Véhicule spécial",
            "english-label": "Special Vehicle"
        },
        {
            "code": 31,
            "french-label": "Tracteur agricole",
            "english-label": "Agricultural Tractor"
        },
        {
            "code": 32,
            "french-label": "Machine agricole",
            "english-label": "Agricultural Machine"
        },
        {
            "code": 39,
            "french-label": "Auto véhicule automoteur",
            "english-label": ""
        },
        {
            "code": 41,
            "french-label": "Remorque (marchandises)",
            "english-label": "Trailer (Cargo)"
        },
        {
            "code": 42,
            "french-label": "Semi-remorque",
            "english-label": "Articulated Trailer"
        },
        {
            "code": 51,
            "french-label": "Tricycle",
            "english-label": "Trike"
        },
        {
            "code": 52,
            "french-label": "Quadricycle",
            "english-label": "Quad Bike"
        },
        {
            "code": 53,
            "french-label": "Quadricycle léger",
            "english-label": "Lightweight Quad Bike"
        },
        {
            "code": 59,
            "french-label": "Autre remorque",
            "english-label": "Other trailers"
        }
]


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
