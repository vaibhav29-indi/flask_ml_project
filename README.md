[![Python application test with Github Actions](https://github.com/vaibhav29-indi/flask_ml_project/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/vaibhav29-indi/flask_ml_project/actions/workflows/pythonapp.yml)

# Overview

This project is part of Udacity nanodegree sponsored by Shell and deals with the setting up CI/CD infrastructure on Azure. 

## Project Plan
Project had distinct steps which included following-
Setting up the git repo which would be used as version control for the codebase.
Setting up the Azure Cloud Shell on the account.
Creating the ssh keys on the cloud shell and uploading them under the git account so that authentication issues don't arise.
Cloning the repo and creating the code base for local testing.
Test the code locally and push it to the git repo.
Configure Github actions and tested the build and tests were successful.
Next the Flask starter code was added to repo and test code was backed up in folder
Azure Web app service was created with Flask code and the predict API was triggered.
In the Azure DevOps, a new project was created and pipeline for the flask repo was generated.
Service connection for the pipeline needs to be defined in Azure pipeline.
In the pipeline, configure the type to Configure the Linux WebApp on Azure and pass in the name of the WebApp that was created earlier.
Update the small change in the app.py and the Azure pipeline should be successfully triggered.
Check that the predict api gave correct result.


* A link to a Trello board for the project

Trello board created for project is at following link-
https://trello.com/invite/b/wKp3WFAK/b7a4b5a9d6579116b224a538c856b7b7/project-6-building-a-ci-cd-pipeline

* A link to a spreadsheet that includes the original and final project plan>

The spreadsheet created for this project is at following link -
https://docs.google.com/spreadsheets/d/1DSG9Qldd6WMHDTT18Q-bnDuP7h9Zr2wTWWCHA9TLHqA/edit?usp=sharing

## Instructions

 
* Architectural Diagram 
https://lucid.app/lucidchart/5ef83246-68c8-4f47-844d-b86241611bb7/edit?viewport_loc=-166%2C-25%2C1579%2C748%2C0_0&invitationId=inv_ac55a182-bba6-4ff4-af17-b20e620822c6#

Instructions for running the Python project. 

Steps to deploy this project-
1. Configue the Azure Cloud shell in the user account
2. Fork the repo from the github link - https://github.com/vaibhav29-indi/flask_ml_project.git in the cloud shell.
3. Configue the ssh keys in the Azure Cloud shell using ssh-keygen -t rsa command.
4. Deploy the code to the Azure webapp from the Cloud shell with command az webapp up -n <name of the app>
5. Once deployed check that the files in the repo with name satring from make_azure should have execute permissions.
6. Run the ./make_predict_azure_app.sh to get thte prediction.
7. To setup the Azure Pipelines, create organisation in Azure DevOps and configure the service connection.
8. Link the github repo to the Azure pipeline and make changes repo to trigger the pipeline.
9. The commit should trigger the pipeline and lead to build and deploy job in the pipeline. 

* Project running on Azure App Service
<img width="1434" alt="Screenshot 2022-09-16 at 6 14 34 PM" src="https://user-images.githubusercontent.com/58362045/190641688-16162ff7-5817-44d9-a444-b74f05882993.png">

* Project cloned into Azure Cloud Shell
<img width="1436" alt="Screenshot 2022-09-15 at 7 23 05 PM" src="https://user-images.githubusercontent.com/58362045/190640179-65a79f5f-eb5f-4e51-aba5-93cca32f1b0c.png">

* Passing tests that are displayed after running the `make all` command from the `Makefile`
<img width="721" alt="Screenshot 2022-09-15 at 12 10 21 PM" src="https://user-images.githubusercontent.com/58362045/190639539-33a2f1b3-0add-4b46-8ff9-9958923e9255.png">
<img width="1437" alt="Screenshot 2022-09-15 at 7 32 01 PM" src="https://user-images.githubusercontent.com/58362045/190640291-f4ac4b76-cbaf-45c7-b771-0b1264c74081.png">


* Output of a test run

<img width="1419" alt="Screenshot 2022-09-15 at 12 26 26 PM" src="https://user-images.githubusercontent.com/58362045/190639894-168c3da3-28a1-4378-a3e8-2f03614e54e7.png">

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

<img width="1432" alt="Screenshot 2022-09-16 at 6 16 29 PM" src="https://user-images.githubusercontent.com/58362045/190641975-9a2732be-fce1-4e51-ba93-697967f650d7.png">


* Running Azure App Service from Azure Pipelines automatic deployment

<img width="1432" alt="Screenshot 2022-09-16 at 1 05 38 PM" src="https://user-images.githubusercontent.com/58362045/190639034-3f744845-0ad2-4c23-9e00-6f158123eaed.png">
<img width="1435" alt="Screenshot 2022-09-16 at 6 00 32 PM" src="https://user-images.githubusercontent.com/58362045/190639140-45d17fba-f75e-4ca5-bd5f-83f6991742d4.png">


* Successful prediction from deployed flask app in Azure Cloud Shell.  

**Output looks like-
vaibhav [ ~/flask_ml_project ]$ ./make_predict_azure_app.sh 
Port: 443
{"prediction":[20.869782939832444]}
vaibhav [ ~/flask_ml_project ]$ 

* Output of streamed log files from deployed application
<img width="1438" alt="Screenshot 2022-09-16 at 5 58 15 PM" src="https://user-images.githubusercontent.com/58362045/190638845-2056d6fd-17b7-4391-bd48-82dd217c0b5f.png">

## Testing with locust
 ![Screenshot 2022-09-19 at 8 10 27 PM](https://user-images.githubusercontent.com/58362045/191045277-c11359b0-2917-485a-92cf-4bb91df80f82.png)

 ![Screenshot 2022-09-19 at 8 11 34 PM](https://user-images.githubusercontent.com/58362045/191044994-1b0644a4-13ff-4fd9-89dc-5269ac6c0020.png)

 
## Enhancements

Currently we are incorporating the bash scripts to test te\he functionality.
In future we could use Azure functions say for example
a. Batch data is inserted in the blob storage
b. Azure function is triggered and this will call the predict api of the model.
c. The response for all the requests can be sent back to the blob storage  

## Demo 

 Demo video is located at following link -
 
(https://youtu.be/5g7f7RQK51I)


