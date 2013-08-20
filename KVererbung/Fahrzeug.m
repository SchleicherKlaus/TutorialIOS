//
//  Fahrzeug.m
//  KVererbung
//
//  Created by Klaus Schleicher on 20.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Fahrzeug.h"

@implementation Fahrzeug
@synthesize leistung;
@synthesize farbe;

-(id)initMitLeistung:(int)neueLeistung farbe:(NSString *)neueFarbe
{
    self = [super init];
    if(self)
    {
        leistung = neueLeistung;
        farbe = [neueFarbe copy];
    }
    return self;
}

-(void)verbessern:(float)faktor
{
    leistung = leistung * faktor;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Leistung %d KW, Farbe %@", [self leistung], [self farbe]];
}


@end
