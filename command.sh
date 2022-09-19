git clone https://github.com/vaibhav29-indi/flask_ml_project.git
cd flask_ml_project
git pull
make all
az webapp up -n <your-appservice>
pip3 install locust
locust -f locustfile.py --headless -u 10 -r 10 -H https://flaskmlservice.azurewebsites.net
