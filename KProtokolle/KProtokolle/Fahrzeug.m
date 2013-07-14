//
//  Fahrzeug.m
//  KProtokolle
//
//  Created by Klaus Schleicher on 14.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Fahrzeug.h"

@implementation Fahrzeug
@synthesize leistung;
@synthesize farbe;

-(void)lackieren:(NSString *)neueFarbe
{
    farbe = [neueFarbe copy];
    
}

-(void)tunen:(int)zusatzleistung
{
    leistung = leistung + zusatzleistung;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Fahrzeug-Objekt: Leistung %d kw, Farbe %@", [self leistung], [self farbe]];
    
}

@end
