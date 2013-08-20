//
//  Fahrzeug.m
//  KKlassenMethoden
//
//  Created by Klaus Schleicher on 20.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Fahrzeug.h"

@implementation Fahrzeug
@synthesize leistung;
@synthesize farbe;

int zaehler = 0;

-(id)init
{
    self = [super init];
    if(self)
    {
        leistung = 0;
        farbe = @"unlackiert";
        zaehler++;
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Leistung %d KW, Farbe %@", [self leistung], [self farbe]];
    
}

+(int)zaehlerAusgabe
{
    return zaehler;
}

@end
