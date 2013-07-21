//
//  Motor.h
//  KCoding
//
//  Created by Klaus Schleicher on 17.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Motor : NSObject <NSCoding>
{
    int hubraum;
    NSString *motorNummer;
}

@property int hubraum;
@property (copy) NSString *motorNummer;

-(id)initMitHubraum:(int)neuerHubraum
        motorNummer:(NSString *)neueMotorNummer;


@end
