//
//  Fahrzeug.m
//  KKlasse
//
//  Created by Klaus Schleicher on 13.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Fahrzeug.h"

@implementation Fahrzeug
@synthesize leistung;
@synthesize farbe;

-(id)init
{
    self = [self initMitLeistung:0 farbe:@"unlackiert"];
    return self;
}

-(id)initMitLeistung:(int)neueLeistung;
{
    self = [self initMitLeistung:neueLeistung farbe:@"unlackiert"];
    return self;
}

-(id)initMitFarbe:(NSString *)neueFarbe
{
    self = [self initMitLeistung:0 farbe:neueFarbe];
    return self;
}

-(id)initMitLeistung:(int)neueLeistung
farbe:(NSString *)neueFarbe
{
    self = [super init];
    if(self)
    {
        leistung = neueLeistung;
        farbe = [neueFarbe copy];
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Fahrzeug-Objekt: Leistung %d kw, Farbe %@", [self leistung], [self farbe]];
}

//- (void)setLeistung:(int)neueLeistung
//{
//    if(leistung <0)
//        leistung =0;
//    else if(leistung>100)
//        leistung = 100;
//    else
//        leistung = neueLeistung;
//}
//
//-(void)setFarbe:(NSString *)neueFarbe
//{
//    farbe = [neueFarbe copy];
//}
//
//-(int)leistung
//{
//    return leistung;
//}
//-(NSString *)farbe
//{
//    return farbe;
//    
//}

@end
