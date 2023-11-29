from flask import Flask, request, session

app = Flask(__name__)

@app.route("/", methods = ["GET"])
def update():
    return "Hello"

def main():
    app.run()


if __name__ == "__main__":
    main()
