//
//  Controller.h
//  GText
//
//  Created by Klaus Schleicher on 26.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Controller : NSObject
{
    IBOutlet NSTextField *textHallo;
}
-(IBAction)sagHallo:(id)sender;
-(IBAction)loesche:(id)sender;

@end
