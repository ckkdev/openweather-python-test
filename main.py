import os
import requests
from bottle import route, run, request, template

def get_forecast(zip_code):
    api_key = os.environ['WEATHER_API_KEY']
    url = f'https://api.openweathermap.org/data/2.5/forecast/daily?q={zip_code}&cnt=8&appid={api_key}'
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        return data
    else:
        return None

@route('/')
def index():
    return template('index.tpl')

@route('/forecast', method='POST')
def forecast():
    zip_code = request.forms.get('zip')
    data = get_forecast(zip_code)
    if data:
        return template('forecast.tpl', data=data)
    else:
        return "Error: Could not get forecast data."

if __name__ == '__main__':
    run() 
