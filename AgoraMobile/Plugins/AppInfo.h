//
//  AppInfo.h
//  AgoraMobile
//
//  Created by Brian Chen on 11/11/13.
//
//

#import <Cordova/CDVPlugin.h>

@interface AppInfo : CDVPlugin

- (void)getVersionNumber:(CDVInvokedUrlCommand *)command;

@end
