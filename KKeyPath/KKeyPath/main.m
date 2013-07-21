//
//  main.m
//  KKeyPath
//
//  Created by Klaus Schleicher on 21.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fahrzeug.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fahrzeug *dacia = [[Fahrzeug alloc] init];
        [dacia setValue:[NSNumber numberWithInt:50] forKey:@"leistung"];
        [dacia setValue:@"Blau" forKey:@"farbe"];
        [dacia setValue:[NSNumber numberWithInt:1600] forKeyPath:@"motor.hubraum"];
        [dacia setValue:@"XC12345" forKeyPath:@"motor.motorNummer"];
        
        
        NSLog(@"%@", [dacia valueForKeyPath:@"motor.hubraum"]);
        NSLog(@"%@", [dacia valueForKeyPath:@"motor.motorNummer"]);
        
        NSLog(@"%@", dacia);
        
        
    }
    return 0;
}

