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
