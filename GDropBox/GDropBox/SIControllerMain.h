//
//  SIControllerMain.h
//  GDropBox
//
//  Created by Klaus Schleicher on 11.09.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SIControllerMain : NSObject
{
    IBOutlet NSComboBox *comboBox;
    IBOutlet NSTextField *txtAusgabe;
    IBOutlet NSTextField *txtInfo;
}
-(IBAction)zeigeAuswahl:(id)sender;
-(IBAction)hinzuEintrag:(id)sender;
-(IBAction)loescheAuswahl:(id)sender;

@end
