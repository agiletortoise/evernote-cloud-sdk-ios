//
//  ENCommonUtils.m
//  evernote-sdk-ios
//
//  Created by Eric Cheng on 9/29/14.
//  Copyright (c) 2014 Evernote Corporation. All rights reserved.
//

#import "ENCommonUtils.h"
#import "ENSession.h"

@implementation ENCommonUtils

BOOL IsIOS8() {
    if([[UIDevice currentDevice].systemVersion floatValue] >= 8.0) {
        return YES;
    }else {
        return NO;
    }
}

BOOL IsEvernoteInstalled() {
    return [[ENSession sharedSession] canOpenURL:[NSURL URLWithString:@"en://"]];
}

@end
