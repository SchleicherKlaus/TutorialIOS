//
//  CtrlRechenkern.m
//  GRechner
//
//  Created by Klaus Schleicher on 27.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "CtrlRechenkern.h"

@implementation CtrlRechenkern

-(IBAction)CzuF:(id)sender
{
    float ce = [textEingabe floatValue];
    float fa = (ce*9.0 /5.0)+32;
    [textAusgabe setStringValue:[NSString stringWithFormat: @"%.2f Grad C = %.2f Grad F", ce, fa]];
}

-(IBAction)FzuC:(id)sender
{
    float fa = [textEingabe floatValue];
    float ce = (fa -32) * 5.0 / 9.0;
    [textAusgabe setStringValue:[NSString stringWithFormat: @"%.2f Grad F = %.2f Grad C", fa, ce]];
}
@end
