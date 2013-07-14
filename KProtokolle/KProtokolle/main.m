//
//  main.m
//  KProtokolle
//
//  Created by Klaus Schleicher on 14.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fahrzeug.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Fahrzeug *dacia = [[Fahrzeug alloc] init];
        [dacia setLeistung:55];
        [dacia setFarbe:@"Blau"];
        NSLog(@"%@", dacia);
        
        Fahrzeug *skoda = [[Fahrzeug alloc] init];
        [skoda setLeistung:90];
        [skoda setFarbe:@"Silber"];
        NSLog(@"%@", skoda);
        
        [dacia tunen:13];
        [skoda lackieren:@"Schwarz"];

        NSLog(@"Das ist jetzt neu");
        NSLog(@"%@", dacia);
        NSLog(@"%@", skoda);

        NSString *einText = @"Das ist ein Text";
        id verweisEinText = einText;
        NSLog(@"%@", verweisEinText);
        
        id <Verbesserung> verweisB = verweisEinText;
        NSLog(@"%@", verweisB);
        
        NSArray *array = [[NSArray alloc]
                        initWithObjects:dacia,einText,  nil];
        for(int i=0; i<[array count]; i++)
        {
            if([[array objectAtIndex:i]
                conformsToProtocol:@protocol(Verbesserung)])
            {
                [[array objectAtIndex:i] tunen:55];
                NSLog(@"%@", [array objectAtIndex:i]);
            }
        }
       
        
        
    }
    return 0;
}

