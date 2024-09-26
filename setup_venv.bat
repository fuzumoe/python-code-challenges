@echo off

:: Check if Python is installed
where python >nul 2>nul
if %errorlevel% neq 0 (
    echo Python is not installed. Please install Python before running this script.
    exit /b
)

:: Create a virtual environment
python -m venv venv

:: Activate the virtual environment
call venv\Scripts\activate

:: Upgrade pip
pip install --upgrade pip

:: Install the required packages
pip install -r requirements.txt

echo Python virtual environment is created, packages are installed, and requirements.txt is generated.
echo To activate the virtual environment, use: venv\Scripts\activate
