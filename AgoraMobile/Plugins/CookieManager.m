//
//  CookieManager.m
//  AgoraMobile
//
//  Created by Brian Chen on 7/8/13.
//
//

#import "CookieManager.h"
#import <Cordova/CDV.h>

@implementation CookieManager

- (void)deleteCookies:(CDVInvokedUrlCommand *)command
{
    NSLog(@"working in delete cookies in plugin");
    CDVPluginResult *pluginResult = nil;
    
    NSHTTPCookie *cookie;
    NSHTTPCookieStorage *storage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
    if(storage != nil){
        for (cookie in [storage cookies]) {
            [storage deleteCookie:cookie];
        }
        [[NSUserDefaults standardUserDefaults] synchronize];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"cookies delete natively"];
    }else{
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"no cookies in native app"];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
