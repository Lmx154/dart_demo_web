# Dart Demo website

## Linux install for Dart + Flutter
This guide is for installing Dart and Flutter on a Linux machine. The guide is for Fedora 40. Things such as package managers and path variables may differ on other distributions, but the general steps should be the same.

### 1. Download the latest version of Flutter SDK from the official website.

### 2. Download Flutter + Dart dependencies (Fedora 40)
```bash
sudo dnf install -y git curl unzip xz zip mesa-libGLU
```

### 3. Extract the downloaded file to a directory of your choice (Preferably /opt/)
```bash
sudo tar xf ~/Downloads/flutter_linux_3.24.4-stable.tar.xz -C /opt/
```

### 4. Add the Flutter binary to your PATH
```bash
export PATH="$PATH:/opt/flutter/bin"
```

### 5. Run the following command to check if Flutter is installed correctly
```bash
flutter doctor
```

### 6. Install Flutter Linux Dependencies
```bash
sudo dnf install ninja-build cmake clang gtk3-devel
```
### 6. Check your install
```bash
flutter --version
```

## Running website

### 1. Clone the repository
```bash
git clone https://github.com/Lmx154/dart_demo.git
```

### 2. Open your IDE/Editor in the project directory
```bash
zed .
```
or
```bash
code .
```

### 3. Run the following command to start the web server
```bash
flutter run -d web-server --web-port=8000
```
### 4. To deploy webapp
```bash
flutter build web
```
This will get your files ready for deployment

here is the link to the firebase deployment of this game: https://flutter-demo-f2024.web.app/

### More setup stuff
You if you're testing API related functionality, then you will have to add .env files in the web directory and the project's root directory
These .env files must contain this if you are testing them with the dotnet backend. ```bash BASE_URL=http://localhost:5000 ```
Make sure the dotnet backend is running on the correct port before testing for any score related functionality.

If you're having build issues try these commands in order
- ```bash
flutter clean
```
- ```bash
flutter pub get
```