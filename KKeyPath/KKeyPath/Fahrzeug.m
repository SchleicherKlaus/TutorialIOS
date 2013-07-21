//
//  Fahrzeug.m
//  KKeyPath
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
        farbe = @"unlackiert";
        motor = [[Motor alloc]init];
        
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Leistung  %@ kw, Farbe %@, Motor: %@. ",
            [self valueForKey:@"leistung"], [self valueForKey:@"farbe"], [self valueForKey:@"motor"]];
}


@end
