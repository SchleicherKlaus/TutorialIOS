//
//  main.m
//  KKeyValue
//
//  Created by Klaus Schleicher on 21.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fahrzeug.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fahrzeug *dacia = [[Fahrzeug alloc]init];
        [dacia setValue:[NSNumber numberWithInt:50] forKey:@"leistung"];
        [dacia setValue:[NSNumber numberWithInt:5] forKey:@"sitzplaetze"];
        [dacia setValue:@"blau" forKey:@"farbe"];
        
        NSLog(@"Leistung: %@ KW", [dacia valueForKey:@"leistung"]);
        NSLog(@"Sitzplätze: %@ ", [dacia valueForKey:@"sitzplaetze"]);
        NSLog(@"Farbe: %@", [dacia valueForKey:@"farbe"]);
        
        [dacia setValuesForKeysWithDictionary:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:60], @"leistung", [NSNumber numberWithInt:4], @"sitzplaetze", @"Gruen", @"farbe", nil]];
        
        NSLog(@"%@", dacia);
        
        NSDictionary *dict = [dacia dictionaryWithValuesForKeys:[NSArray arrayWithObjects:@"leistung", @"sitzplaetze", @"farbe", nil]];
       
        NSLog(@"%@", dict);
        
        
        
    }
    return 0;
}

