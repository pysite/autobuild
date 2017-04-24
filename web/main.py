#!/usr/local/python3.6/bin/python3
from japronto import Application

def hello(request):
    return request.Response(text='Hello world!')

def echo(request):
    return request.Response(text='echo')

app = Application()
app.router.add_route('/', hello)
app.router.add_route('/echo', echo)
app.run(port=80)