from flask import Flask, request, jsonify
import mysql.connector
from flask_cors import CORS  # 👈 import


app = Flask(__name__)
CORS(app, origins=["http://localhost:3000"])  # 👈 enable CORS for all routes

# MySQL DB config
db_config = {
    'host': '127.0.0.1',
    'user': 'admin',
    'password': 'adminpassword',
    'database': 'exampledb',
    'port': 3306
}

# GET all groceries


@app.route('/groceries', methods=['GET'])
def get_groceries():
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM groceries")
        rows = cursor.fetchall()
        return jsonify(rows)
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        if 'cursor' in locals():
            cursor.close()
        if 'conn' in locals():
            conn.close()

# POST a new grocery item


@app.route('/groceries', methods=['POST'])
def add_grocery():
    data = request.get_json()
    required_fields = ['item_name', 'price', 'quantity', 'img']

    # Validate input
    if not all(field in data for field in required_fields):
        return jsonify({'error': 'Missing required fields'}), 400

    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("""
            INSERT INTO groceries (item_name, price, quantity, img)
            VALUES (%s, %s, %s, %s)
        """, (data['item_name'], data['price'], data['quantity'], data['img']))
        conn.commit()
        return jsonify({'message': 'Item added successfully'}), 201
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        if 'cursor' in locals():
            cursor.close()
        if 'conn' in locals():
            conn.close()


if __name__ == '__main__':
    app.run(debug=True)
