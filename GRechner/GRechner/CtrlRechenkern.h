//
//  CtrlRechenkern.h
//  GRechner
//
//  Created by Klaus Schleicher on 27.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CtrlRechenkern : NSObject
{
    IBOutlet NSTextField *textEingabe;
    IBOutlet NSTextField *textAusgabe;
}
-(IBAction)CzuF:(id)sender;
-(IBAction)FzuC:(id)sender;


@end
