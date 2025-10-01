from src.app import app

def test_homepage():
    client = app.test_client()
    response = client.get("/")
    body = response.data.decode("utf-8")
    assert response.status_code == 200
    assert "Hello from Github Actions" in body

