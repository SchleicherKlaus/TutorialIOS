//
//  main.m
//  KKeyValueObservation
//
//  Created by Klaus Schleicher on 21.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fahrzeug.h"
#import "Polizist.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Fahrzeug *dacia = [[Fahrzeug alloc]init];
        [dacia setLeistung:50];
        [dacia setFarbe:@"Blau"];
        
        Polizist *pz1 = [[Polizist alloc] init];
        [pz1 setRang:@"Hauptwachtmeister"];
        [pz1 setNachname:@"Schleicher"];
        
        Polizist *pz2 = [[Polizist alloc]init];
        [pz2 setRang:@"Oberwachtmeister"];
        [pz2 setNachname:@"Huber"];
        
        [dacia addObserver:pz1 forKeyPath:@"leistung" options:(NSKeyValueObservingOptionNew +NSKeyValueObservingOptionOld ) context:NULL];
        [dacia addObserver:pz2 forKeyPath:@"farbe" options:(NSKeyValueObservingOptionOld + NSKeyValueObservingOptionNew) context:NULL];
        [dacia setLeistung:65];
        [dacia setFarbe:@"Silber"];
        
        for(int i = 0; i < 6; i++)
        {
            [dacia setLeistung:70+i];
        }
        [dacia removeObserver:pz1 forKeyPath:@"leistung"];
        [dacia removeObserver:pz2 forKeyPath:@"farbe"];
    }
    return 0;
}

