var exec = require('cordova/exec');

exports.deviceInfo = function (success, error) {
    exec(success, error, 'DeviceInfo', 'deviceInfo', []);
};
