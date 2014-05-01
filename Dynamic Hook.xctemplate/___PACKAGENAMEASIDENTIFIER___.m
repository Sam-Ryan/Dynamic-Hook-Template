//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <objc/runtime.h>
#import "___FILEBASENAME___.h"

static IMP originalImplementation = NULL;

@implementation ___FILEBASENAMEASIDENTIFIER___

+ (void)load{
    Class originalClass = NSClassFromString(@"___VARIABLE_hookClassName:identifier___");
    Method originalMethod = class_getInstanceMethod(originalClass, @selector(description));
    //  hook instance method description for example.
    //  change method name for your own sake.
    //  of course you can hook ___VARIABLE_hookClassName:identifier___'s class method
    
    originalImplementation = method_getImplementation(originalMethod);
    Method replacementMethod = class_getInstanceMethod(NSClassFromString(@"___PACKAGENAME___"), @selector(hook));
    method_exchangeImplementations(originalMethod, replacementMethod);
    //  replace description with hook for instance.
    //  change method name for your own sake.
}

- (id)hook{
    return @"___VARIABLE_hookClassName:identifier___ class is being hooked.";
}

@end