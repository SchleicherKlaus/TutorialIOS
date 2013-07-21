//
//  Fahrzeug.m
//  KCoding
//
//  Created by Klaus Schleicher on 16.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Fahrzeug.h"

@implementation Fahrzeug
@synthesize leistung;
@synthesize farbe;

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeInt:leistung forKey:@"leistung"];
    [aCoder encodeObject:farbe forKey:@"farbe"];
    [motor encodeWithCoder:aCoder];
    
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self)
    {
        leistung = [aDecoder decodeIntForKey:@"leistung"];
        farbe = [aDecoder decodeObjectForKey:@"farbe"];
        motor = [aDecoder decodeObjectForKey:@"motor"];
    }
    return self;
}

-(id)initMitLeistung:(int)neueLeistung
               farbe:(NSString *)neueFarbe
               motor:(Motor *)neuerMotor
{
    self = [super self];
    if(self)
    {
        leistung = neueLeistung;
        farbe = [neueFarbe copy];
        motor = [neuerMotor copy];
    }
    return self;
}
-(void)setMotor:(Motor *)neuerMotor
{
    motor = [neuerMotor copy];
}

-(Motor *)motor
{
    return motor;
}


-(NSString *)description
{
    return [NSString stringWithFormat:@"Fahrzeug-Objekt: Leistung %d kw, Farbe %@ %@ ", [self leistung], [self farbe], [self motor]];
}
@end
