//
//  CookieManager.h
//  AgoraMobile
//
//  Created by Brian Chen on 7/8/13.
//
//

#import <Cordova/CDV.h>

@interface CookieManager : CDVPlugin

- (void)deleteCookies:(CDVInvokedUrlCommand *)command;

@end
