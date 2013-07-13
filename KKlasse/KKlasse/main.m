//
//  main.m
//  KKlasse
//
//  Created by Klaus Schleicher on 13.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fahrzeug.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        Fahrzeug *dacia = [[Fahrzeug alloc] init];
        
        [dacia setLeistung:99];
        [dacia setFarbe:@"blau"];
        
        NSLog(@"Leistung: %d PS, Farbe: %@",
              [dacia leistung], [dacia farbe]);
        
        
    }
    return 0;
}

