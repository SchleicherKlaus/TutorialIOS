//
//  Polizist.m
//  KKeyValueObservation
//
//  Created by Klaus Schleicher on 21.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Polizist.h"

@implementation Polizist
@synthesize nachname;
@synthesize rang;

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"%@ %@ hat Folgendes bemerkt:", [self rang], [self nachname]);
    
    NSLog(@"Wert der Eigenschaft %@ wurde geändert", keyPath);
    NSLog(@"Aktueller Wert ist %@ ", [object valueForKeyPath:keyPath]);
    NSLog(@"Alter Wert war %@", [change objectForKey:NSKeyValueChangeOldKey]);
    NSLog(@"Neuer Wert ist %@", [change objectForKey:NSKeyValueChangeNewKey]);
    
}


@end
