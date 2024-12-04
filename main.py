from flask import Flask, jsonify

app = Flask(__name__)
@app.route("/")
def route():
    return jsonify({"message": "Hello world"}), 200

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")