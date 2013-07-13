//
//  Fahrzeug.m
//  KKlasse
//
//  Created by Klaus Schleicher on 13.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Fahrzeug.h"

@implementation Fahrzeug
- (void)setLeistung:(int)neueLeistung
{
    if(leistung <0)
        leistung =0;
    else if(leistung>100)
        leistung = 100;
    else
        leistung = neueLeistung;
}

-(void)setFarbe:(NSString *)neueFarbe
{
    farbe = [neueFarbe copy];
}

-(int)leistung
{
    return leistung;
}
-(NSString *)farbe
{
    return farbe;
    
}

@end
