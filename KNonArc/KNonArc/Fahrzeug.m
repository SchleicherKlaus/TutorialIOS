//
//  Fahrzeug.m
//  KNonArc
//
//  Created by Klaus Schleicher on 26.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Fahrzeug.h"

@implementation Fahrzeug
-(NSString *)description
{
    return @"Fahrzeug-Objekt";
}

-(void)dealloc
{
    NSLog(@"Fahrzeug-Objekt wird zerstört");
    [super dealloc];
}
@end
