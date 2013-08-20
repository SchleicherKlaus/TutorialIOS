//
//  main.m
//  KVererbung
//
//  Created by Klaus Schleicher on 20.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lastwagen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fahrzeug *dacia = [[Fahrzeug alloc] initMitLeistung:50 farbe:@"Blau"];
        NSLog(@"%@", dacia);
        
        [dacia verbessern:1.5];
        NSLog(@"%@", dacia);
        

        Lastwagen * scania = [[Lastwagen alloc]initMitLeistung:300 farbe:@"Grau" nutzlast:30.0 aufschrift:@"Gebrüder Weiss"];
        NSLog(@"%@", scania);
        [scania verbessern:1.5];
        NSLog(@"%@", scania);
        
        
    }
    return 0;
}

