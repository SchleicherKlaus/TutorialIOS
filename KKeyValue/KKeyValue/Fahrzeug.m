//
//  Fahrzeug.m
//  KKeyValue
//
//  Created by Klaus Schleicher on 21.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Fahrzeug.h"

@implementation Fahrzeug

-(id)init
{
    self = [super init];
    if(self)
    {
        leistung = 0;
        sitzplaetze = 1;
        farbe=@"unlackiert";
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Leistung %@ KW,  Sitzplätze %@ , Farbe %@ ", [self valueForKey:@"leistung"], [self valueForKey:@"sitzplaetze"], [self valueForKey:@"farbe"]];
    
}

@end
