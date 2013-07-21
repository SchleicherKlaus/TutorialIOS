//
//  Fahrzeug.h
//  KKeyPath
//
//  Created by Klaus Schleicher on 21.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Motor.h"

@interface Fahrzeug : NSObject
{
    int leistung;
    NSString *farbe;
    Motor *motor;
}
@end
