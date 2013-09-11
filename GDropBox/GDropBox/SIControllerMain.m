//
//  SIControllerMain.m
//  GDropBox
//
//  Created by Klaus Schleicher on 11.09.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "SIControllerMain.h"

@implementation SIControllerMain

-(void)awakeFromNib
{
    NSArray *inhaltCB = [NSArray arrayWithObjects:@"Bayern",@"Niedersachsen", @"Baden Würtenberg", nil];
    [comboBox removeAllItems];
    [comboBox addItemsWithObjectValues:inhaltCB];
    [comboBox selectItemAtIndex:2];
}

-(IBAction)zeigeAuswahl:(id)sender
{
    [txtAusgabe setStringValue:[NSString stringWithFormat:@"%d : %@", [comboBox indexOfSelectedItem], [comboBox objectValueOfSelectedItem]]];
    
}
-(IBAction)hinzuEintrag:(id)sender;
{
    if([[comboBox stringValue] compare:@""] == NSOrderedSame)
        return;
    [comboBox addItemWithObjectValue:[comboBox stringValue]];
    [txtInfo setStringValue:[NSString stringWithFormat:@"Hinzugefügt: %@", [comboBox stringValue]]];
    [comboBox selectItemAtIndex:-1];
    
}
-(IBAction)loescheAuswahl:(id)sender;
{
    NSInteger x = [comboBox indexOfSelectedItem];
    if(x != -1)
    {
        [txtInfo setStringValue:[NSString stringWithFormat:@"Gelöscht: %@", [comboBox objectValueOfSelectedItem]]];
        [comboBox removeItemAtIndex:x];
        [comboBox setStringValue:@""];
    }
}
@end
