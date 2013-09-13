//
//  CtrlRadioBox.h
//  GRadioButton
//
//  Created by Klaus Schleicher on 13.09.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CtrlRadioBox : NSObject
{
    IBOutlet NSMatrix *mtxPersonen;
    IBOutlet NSTextField *txtAusgabe;
    IBOutlet NSTextField *txtInfo;
}

-(IBAction)zeigeAuswahl:(id)sender;
@end
