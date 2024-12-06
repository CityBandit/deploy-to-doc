from flask import Flask, jsonify
import os
app = Flask(__name__)
@app.route("/")
def route():
    return jsonify({"message": "Hello world1", "env": f"{os.environ.get('FLASK_ENV', None)}"}), 200

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")