//
//  CtrlPanel.h
//  GPanel
//
//  Created by Klaus Schleicher on 08.10.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CtrlPanel : NSObject
{
    IBOutlet NSPanel *panel;
    IBOutlet NSWindow *hauptFormular;
    IBOutlet NSTextField *txtEingabe;
    IBOutlet NSTextField *txtAusgabe;
}
- (IBAction)oeffnePanel:(id)sender;
- (IBAction)schliessePanel:(id)sender;


@end
