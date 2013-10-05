//
//  CtrlMain.h
//  GSlider
//
//  Created by Klaus Schleicher on 21.09.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CtrlMain : NSObject
{
    IBOutlet NSSlider *sliderVertical;
    IBOutlet NSTextField *txtAusgabe;
}

- (IBAction)showValue:(id)sender;

@end
