//
//  Motor.m
//  KKeyPath
//
//  Created by Klaus Schleicher on 21.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Motor.h"

@implementation Motor

-(id)init
{
    self = [super init];
    if(self)
    {
        hubraum = 0;
        motorNummer = @"xxxxx";
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Hubraum: %@ ccm, Motornummer: %@ ", [self valueForKey:@"hubraum"], [self valueForKey:@"motorNummer"]];
                                                                                                            
    
}

@end
