from flask import Flask, request, session, send_from_directory
app = Flask(__name__)


    
@app.route("/", methods = ["GET"])
def serve():
    return send_from_directory('static', "cat.jpeg")

def main():
    app.run()


if __name__ == "__main__":
    main()
