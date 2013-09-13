//
//  CtrlRadioBox.m
//  GRadioButton
//
//  Created by Klaus Schleicher on 13.09.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "CtrlRadioBox.h"

@implementation CtrlRadioBox

-(void)awakeFromNib
{
    //Leeren eines möglichen Inhalts von Info und Ausgabe
    [txtAusgabe setStringValue:@""];
    [txtInfo setStringValue:@""];
    //Defaultselektion auf erste Zeite ausschalten
    [[mtxPersonen cellAtRow:0 column:0] setState:NSOffState];
    //Dritte Zeile als Selektion auswählen
    [[mtxPersonen cellAtRow:2 column:0] setState:NSOnState];
}

-(IBAction)zeigeAuswahl:(id)sender
{
    int preis;
    NSButtonCell *auswahl = [mtxPersonen selectedCell];
    [txtInfo setStringValue:[auswahl title]];
    
    NSArray *zeilenArray = [mtxPersonen cells];
    if(auswahl == [zeilenArray objectAtIndex:0])
        preis = 60;
    if(auswahl == [zeilenArray objectAtIndex:1])
        preis = 70;
    if(auswahl == [zeilenArray objectAtIndex:2])
        preis = 80;
    
    [txtAusgabe setStringValue:[NSString stringWithFormat:@"Preis: %d", preis]];
    
    
}
@end
