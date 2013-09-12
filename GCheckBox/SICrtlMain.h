//
//  SICrtlMain.h
//  GCheckBox
//
//  Created by Klaus Schleicher on 12.09.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SICrtlMain : NSObject
{
    IBOutlet NSButton       *chkMeerblick;
    IBOutlet NSButton       *chkBadewanne;
    IBOutlet NSButton       *chkMinibar;
    IBOutlet NSTextField    *txtPreis;
}
-(IBAction)zeigeAuswahl:(id)sender;

@end
