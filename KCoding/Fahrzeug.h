//
//  Fahrzeug.h
//  KCoding
//
//  Created by Klaus Schleicher on 16.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Motor.h"

@interface Fahrzeug : NSObject <NSCoding>
{
    int leistung;
    NSString *farbe;
    Motor *motor;
}
@property int leistung;
@property (copy) NSString *farbe;

-(id)initMitLeistung:(int)neueLeistung
               farbe:(NSString *)neueFarbe
                motor:(Motor *)neuerMotor;
-(void)setMotor:(Motor *)neuerMotor;
-(Motor *)motor;


@end
