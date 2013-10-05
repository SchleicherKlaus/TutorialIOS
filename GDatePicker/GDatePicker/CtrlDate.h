//
//  CtrlDate.h
//  GDatePicker
//
//  Created by Klaus Schleicher on 05.10.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CtrlDate : NSObject
{
    IBOutlet NSDatePicker *pickerAnalog;
    IBOutlet NSDatePicker *pickerDigital;
    IBOutlet NSButton *chkBereich;
    IBOutlet NSTextField *txtAusgabe;
    
}

- (IBAction)zeigeWert:(id)sender;
- (IBAction)nachLinks:(id)sender;
- (IBAction)nachRechts:(id)sender;
- (IBAction)pickerModusAendern:(id)sender;

@end
