//
//  CtrlDate.m
//  GDatePicker
//
//  Created by Klaus Schleicher on 05.10.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "CtrlDate.h"

@implementation CtrlDate

- (void)awakeFromNib
{
    //Aktuelles Datum setzen
    [pickerAnalog setDateValue:[NSDate date]];
    //InitDatum setzen, Geburtstag
    [pickerDigital setDateValue:[NSDate dateWithString:@"2013-01-14 06:50:00 +0100"]];
}

- (IBAction)pickerModusAendern:(id)sender
{
    if([chkBereich state] == NSOnState)
    {
        [pickerAnalog setDatePickerMode:NSRangeDateMode];
    }
    else
    {
        [pickerAnalog setDatePickerMode:NSSingleDateMode];
    }
    
}

- (IBAction)zeigeWert:(id)sender
{
    NSDate *datum = [sender dateValue];
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
    [dateFormater setDateFormat:@"dd.MM.yyyy HH:mm:ss"];
    
    NSString *ausgabe = [dateFormater stringFromDate:datum];
    
    if(sender == pickerAnalog && [pickerAnalog datePickerMode] == NSRangeDateMode)
    {
        NSTimeInterval bereichLaenge = [pickerAnalog timeInterval];
        NSDate *bereichEnde = [datum dateByAddingTimeInterval:bereichLaenge];
        NSString *bereichStr = [dateFormater stringFromDate:bereichEnde];
        ausgabe = [NSString stringWithFormat:@"%@ bis %@", ausgabe, bereichStr];
    }
    [txtAusgabe setStringValue:[NSString stringWithFormat:@"%@", ausgabe]];
    
}

- (IBAction)nachLinks:(id)sender
{
    NSDate *datum = [pickerDigital dateValue];
    [pickerAnalog setDateValue:datum];
}

- (IBAction)nachRechts:(id)sender
{
    NSDate *datum = [pickerAnalog dateValue];
    [pickerDigital setDateValue:datum];
}


@end
