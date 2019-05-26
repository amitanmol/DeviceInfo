# DeviceInfo
This cordova plugin is used to get device infomations.

# Installation
cordova plugin add cordova-plugin-deviceinfo

# Supported Platform
- iOS
- Android (will be comming)

# Usage
Get device info

cordova.plugins.DeviceInfo.deviceInfo(success, fail);

Success callback function:

function success(response){
    console.log("Response: " + response);
};

Fail callback function:

function fail(error){
    console.log("Error: " + error);
};