//
//  CtrlPanel.m
//  GPanel
//
//  Created by Klaus Schleicher on 08.10.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "CtrlPanel.h"

@implementation CtrlPanel

- (IBAction)oeffnePanel:(id)sender
{
    [NSApp beginSheet:panel modalForWindow:hauptFormular modalDelegate:self didEndSelector:@selector(nachEnde) contextInfo:nil];
    [NSApp runModalForWindow:panel];
    [NSApp endSheet:panel];
    [panel orderOut:nil];
}

- (IBAction)schliessePanel:(id)sender
{
    [NSApp stopModal];
}

- (void) nachEnde:(id)sender
{
    [txtAusgabe setStringValue:[txtEingabe stringValue]];
}


@end
