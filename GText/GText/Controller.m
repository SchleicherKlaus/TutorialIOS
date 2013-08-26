//
//  Controller.m
//  GText
//
//  Created by Klaus Schleicher on 26.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Controller.h"

@implementation Controller

-(IBAction)sagHallo:(id)sender
{
    [textHallo setStringValue:@"Hallo"];
}
-(IBAction)loesche:(id)sender
{
    [textHallo setStringValue:@""];
}

@end
