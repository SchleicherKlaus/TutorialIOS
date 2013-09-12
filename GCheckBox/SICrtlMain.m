//
//  SICrtlMain.m
//  GCheckBox
//
//  Created by Klaus Schleicher on 12.09.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "SICrtlMain.h"

@implementation SICrtlMain

-(void)awakeFromNib
{
    [chkMeerblick setState:NSOnState];
    [chkBadewanne setState:NSOffState];
    [chkMinibar setState:NSOnState];
}

-(IBAction)zeigeAuswahl:(id)sender
{
    int preis = 40;
    if([chkMeerblick state] == NSOnState)
        preis += 10;
    if([chkBadewanne state] == NSOnState)
        preis +=5;
    if([chkMinibar state] == NSOnState)
        preis += 7;
    [txtPreis setStringValue:[NSString stringWithFormat:@"Preis gesamt: %d €", preis]];
    
}

@end
