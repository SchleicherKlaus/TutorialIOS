//
//  main.m
//  KNonArc
//
//  Created by Klaus Schleicher on 26.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fahrzeug.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Fahrzeug *dacia = [[Fahrzeug alloc] init];
        NSLog(@"Dacia: %@", dacia);
        NSLog(@"1: retainCount: %lu", [dacia retainCount]);
        [dacia retain];
        NSLog(@"2: retainCount: %lu", [dacia retainCount]);
        [dacia release];
        NSLog(@"3: retainCount: %lu", [dacia retainCount]);
        [dacia release];
        
        
    }
    return 0;
}

