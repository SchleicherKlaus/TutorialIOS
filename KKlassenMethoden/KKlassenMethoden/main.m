//
//  main.m
//  KKlassenMethoden
//
//  Created by Klaus Schleicher on 20.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fahrzeug.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fahrzeug *dacia = [[Fahrzeug alloc] init];
        NSLog(@"%@", dacia);
        NSLog(@"%d", [Fahrzeug zaehlerAusgabe]);
        
        Fahrzeug *skoda = [[Fahrzeug alloc] init];
        NSLog(@"%@", skoda);
        NSLog(@"%d", [Fahrzeug zaehlerAusgabe]);
        
        
    }
    return 0;
}

