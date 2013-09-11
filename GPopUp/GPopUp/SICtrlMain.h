//
//  SICtrlMain.h
//  GPopUp
//
//  Created by Klaus Schleicher on 03.09.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SICtrlMain : NSObject
{
    IBOutlet NSPopUpButton *popupLand;
    IBOutlet NSTextField *txtAusgabe;
    IBOutlet NSTextField *txtEingabe;
    IBOutlet NSTextField *txtInfo;
}
-(IBAction)zeigeAuswahl:(id)sender;
-(IBAction)hinzuEintrag:(id)sender;
-(IBAction)loescheAuswahl:(id)sender;
@end
