//
//  Motor.m
//  KCoding
//
//  Created by Klaus Schleicher on 17.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Motor.h"

@implementation Motor
@synthesize hubraum;
@synthesize motorNummer;
-(id)initMitHubraum:(int)neuerHubraum motorNummer:(NSString *)neueMotorNummer
{
    self = [super init];
    if(self)
    {
        hubraum = neuerHubraum;
        motorNummer = [neueMotorNummer copy];
        
    }
    return self;
}

-(id)copy
{
    Motor *neuerMotor = [[Motor alloc] initMitHubraum:[self hubraum] motorNummer:[self motorNummer]];
    return neuerMotor;
}

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeInt:hubraum forKey:@"hubraum"];
    [aCoder encodeObject:motorNummer forKey:@"motorNummer"];
    
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self)
    {
        hubraum = [aDecoder decodeIntForKey:@"hubraum"];
        motorNummer = [aDecoder decodeObjectForKey:@"motorNummer"];
    }
    return self;
}


-(NSString *)description
{
    return [NSString stringWithFormat:@"Hubraum %d ccm, Motornummer %@ ", [self hubraum], [self motorNummer]];
    
}


@end
