/********* DeviceInfo.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface DeviceInfo : CDVPlugin {
  // Member variables go here.
}

- (void)deviceInfo:(CDVInvokedUrlCommand*)command;
@end

@implementation DeviceInfo

- (void)deviceInfo:(CDVInvokedUrlCommand*)command
{
    NSDictionary* deviceProperties = [self deviceProperties];

    CDVPluginResult* pluginResult = nil;
    NSString* echo = [deviceProperties description];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (NSDictionary*)deviceProperties
{
    UIDevice* device = [UIDevice currentDevice];
    
    return @{
             @"manufacturer": @"Apple",
             @"name": [device name],
             @"systemName": [device systemName],
             @"systemVersion": [device systemVersion],
             @"model": [device model],
             @"uuid": [device identifierForVendor]
             };
}
@end
