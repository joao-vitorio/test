from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    ascii_art = r'''
 _   _      _ _         __        __         _     _ 
| | | | ___| | | ___    \ \      / /__  _ __| | __| |
| |_| |/ _ \ | |/ _ \    \ \ /\ / / _ \| '__| |/ _` |
|  _  |  __/ | | (_) |    \ V  V / (_) | |  | | (_| |
|_| |_|\___|_|_|\___( )    \_/\_/ \___/|_|  |_|\__,_|
                    |/                                
    '''
    return f'<pre>{ascii_art}</pre>'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
