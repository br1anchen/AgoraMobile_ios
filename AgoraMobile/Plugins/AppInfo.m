//
//  AppInfo.m
//  AgoraMobile
//
//  Created by Brian Chen on 11/11/13.
//
//

#import "AppInfo.h"
#import <Cordova/CDV.h>

@implementation AppInfo

- (void)getVersionNumber:(CDVInvokedUrlCommand *)command{
    CDVPluginResult *pluginResult = nil;
    
    NSString* version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    
    if(version != nil){
        
        [[NSUserDefaults standardUserDefaults] synchronize];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:version];
    }else{
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"no version"];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
