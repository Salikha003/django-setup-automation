# Django Project Setup

This repository contains a Django project along with a setup script that automates the process of activating the virtual environment, starting the Django development server, and opening the project in your web browser.

## Overview

The `RunDjango.bat` file is designed to streamline the setup process for Windows users. It performs the following tasks:
- Activates the Python virtual environment.
- Changes directory to the Django project folder.
- Starts the Django development server.
- Opens the project in the default web browser.

## Getting Started

### Prerequisites

Before using the `RunDjango.bat` file, make sure you have the following installed:

- **Python**: [Download and install Python](https://www.python.org/downloads/) if you haven't already. Make sure to add Python to your system's PATH during installation.
- **Git**: [Download and install Git](https://git-scm.com/downloads) if you haven't already.

### Cloning the Repository

1. Open a terminal or command prompt.
2. Navigate to the directory where you want to clone the repository.
3. Run the following command to clone the repository:

   ```bash
   git clone https://github.com/Salikha003/django-setup-automation.git
   ```


Setting Up the Project
Create and Activate a Virtual Environment:

If you haven't created a virtual environment yet, do so by running:

```bash
python -m venv venv
```

To activate the virtual environment:

On Windows:

```bash
venv\Scripts\activate
```

Install Project Dependencies:

Ensure that the requirements.txt file is present in the root directory of your project. Install the required Python packages by running:

```bash
pip install -r requirements.txt
```


To the RunDjango.bat file:

```bash
@echo off

REM Replace 'path\to\your\virtualenv' with the actual path to your virtual environment
set VENV_PATH=path\to\your\virtualenv

REM Replace 'path\to\your\django\project' with the actual path to your Django project
set DJANGO_PROJECT_PATH=path\to\your\django\project

REM Activate the virtual environment
call "%VENV_PATH%\Scripts\activate"

REM Change directory to your Django project
cd %DJANGO_PROJECT_PATH%

REM Start Django app (assumes manage.py is in the root of your Django project)
start cmd /k python manage.py runserver

REM Wait a moment for the server to start
timeout /t 5

REM Open the site in default browser (change 'http://localhost:8000/' if your site runs on a different URL)
start "" "http://127.0.0.1:8000/"

REM Keep the command prompt window open
pause
```


Running the Project
Make sure the RunDjango.bat file is in the root directory of your Django project.

Double-click the RunDjango.bat file to execute it. This script will:

Activate the virtual environment.
Navigate to the Django project directory.
Start the Django development server.
Open your default web browser and navigate to http://127.0.0.1:8000/.
Troubleshooting
Server Not Starting:

If the server does not start, check the command prompt window for any error messages.
Verify that all dependencies are correctly installed and that the virtual environment is properly activated.
Browser Not Opening:

If the browser does not open automatically, you can manually open your browser and go to http://127.0.0.1:8000/.
Common Issues:

Ensure that the manage.py file exists in the root of your Django project directory.
Make sure that the env folder and its Scripts directory are correctly specified in the .bat file.
Contributing
We welcome contributions to this project. If you'd like to contribute, please follow these steps:

Fork the repository.
Create a new branch for your changes.
Commit your changes and push them to your fork.
Open a pull request with a clear description of the changes you've made.
For detailed contributing guidelines, please refer to our CONTRIBUTING.md file.

License
This project is licensed under the MIT License. See the LICENSE file for details.

Contact
If you have any questions or need further assistance, feel free to open an issue on this repository or contact us at solihahusniddinova27@gmail.com


