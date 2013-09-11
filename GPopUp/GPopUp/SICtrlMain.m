//
//  SICtrlMain.m
//  GPopUp
//
//  Created by Klaus Schleicher on 03.09.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "SICtrlMain.h"

@implementation SICtrlMain
-(void)awakeFromNib
{
    NSArray *feld = [NSArray arrayWithObjects:@"Spanien",@"Frankreich",@"Italien",@"Bayern", nil];
    [popupLand removeAllItems];
    [popupLand addItemsWithTitles:feld];
    [popupLand selectItemAtIndex:3];
}
-(IBAction)zeigeAuswahl:(id)sender
{
    [txtAusgabe setStringValue: [NSString stringWithFormat:@"%d : %@", [popupLand indexOfSelectedItem], [popupLand titleOfSelectedItem]]];
}

-(IBAction)hinzuEintrag:(id)sender
{
    if([[txtEingabe stringValue] compare:@""] == NSOrderedSame)
        return;
    [popupLand addItemWithTitle: [txtEingabe stringValue]];
    [txtInfo setStringValue:[NSString stringWithFormat:@"Hinzugefügt: %@", [txtEingabe stringValue]]];
    [txtEingabe setStringValue:@""];
    [popupLand selectItemAtIndex:[popupLand numberOfItems]-1];
}
-(IBAction)loescheAuswahl:(id)sender
{
    if([popupLand indexOfSelectedItem] < 0)
        return;
    [txtInfo setStringValue:[NSString stringWithFormat:@"Gelöscht: %@", [popupLand titleOfSelectedItem]]];
    [popupLand removeItemAtIndex:[popupLand indexOfSelectedItem]];
    
}
@end
