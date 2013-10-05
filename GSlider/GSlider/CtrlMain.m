//
//  CtrlMain.m
//  GSlider
//
//  Created by Klaus Schleicher on 21.09.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "CtrlMain.h"

@implementation CtrlMain

- (void)awakeFromNib
{
    [sliderVertical setTickMarkPosition:NSTickMarkRight];
    [sliderVertical setNumberOfTickMarks:13];
    [sliderVertical setAllowsTickMarkValuesOnly:YES];
    
    [sliderVertical setMinValue:-3];
    [sliderVertical setMaxValue:3];
    [sliderVertical setDoubleValue:0];
    
    [sliderVertical setContinuous:YES];
}

- (IBAction)showValue:(id)sender
{
    [txtAusgabe setStringValue:[NSString stringWithFormat:@"%.2f",[sender doubleValue]]];
    
}

@end
