//
//  DismissSegue.m
//  Lesson01
//
//  Created by Dan Seals on 6/14/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

#import "DismissSegue.h"

@implementation DismissSegue

- (void)perform {
    UIViewController *sourceViewController = self.sourceViewController;
    [sourceViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end