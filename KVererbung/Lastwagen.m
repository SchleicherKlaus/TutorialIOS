//
//  Lastwagen.m
//  KVererbung
//
//  Created by Klaus Schleicher on 20.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Lastwagen.h"

@implementation Lastwagen
@synthesize nutzlast;
@synthesize aufschrift;

-(id)initMitLeistung:(int)neueLeistung farbe:(NSString *)neueFarbe nutzlast:(float)neueNutzlast aufschrift:(NSString *)neueAufschrift
{
    self = [super initMitLeistung:neueLeistung farbe:neueFarbe];
    if(self)
    {
        nutzlast = neueNutzlast;
        aufschrift = [neueAufschrift copy];
    }
    return self;
}

-(void)verbessern:(float)faktor
{
    [super verbessern:faktor];
    nutzlast = nutzlast * faktor;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Nutzlast %.2f To., Aufschrift %@", [self nutzlast], [self aufschrift]];
}


@end
