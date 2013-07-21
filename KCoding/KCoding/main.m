//
//  main.m
//  KCoding
//
//  Created by Klaus Schleicher on 16.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fahrzeug.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *fahrzeugDatei = @"/Users/klausschleicher/Documents/meinFahrzeug.plist";
//        NSString *arrayDatei = @"/Users/klausschleicher/Documents/meinArray.plist";
        
        Motor *daciaMotor = [[Motor alloc] initMitHubraum:1600 motorNummer:@"XS123456"];
        Fahrzeug *dacia = [[Fahrzeug alloc] init];
        [dacia setLeistung:55];
        [dacia setFarbe:@"blau"];
        [dacia setMotor:daciaMotor];
        NSLog(@"%@", daciaMotor);
        NSData *fahrzeugDaten = [NSKeyedArchiver archivedDataWithRootObject:dacia];
        [fahrzeugDaten writeToFile:fahrzeugDatei atomically:YES];
        
        NSData *neueFahrzeugDaten = [[NSData alloc] initWithContentsOfFile:fahrzeugDatei];
        Fahrzeug *neuerDacia = [NSKeyedUnarchiver unarchiveObjectWithData:neueFahrzeugDaten];
        
        NSLog(@"%@", neuerDacia);
//        
//        NSDictionary *dictA = [[NSDictionary alloc] initWithObjectsAndKeys:
//                               [NSNumber numberWithInt:47],@"Spanien",
//                               [NSNumber numberWithInt:65],@"Frankreich",
//                               [NSNumber numberWithInt:61], @"Italien", nil];
//        NSArray *arrayA = [NSArray arrayWithObjects:@"Afrika", dictA, @"Amerika", @"Australien", nil];
//        NSData *arrayDaten = [NSKeyedArchiver archivedDataWithRootObject:arrayA];
//        [arrayDaten writeToFile:arrayDatei atomically:YES];
//        
//        NSData *neueArrayDaten = [[NSData alloc] initWithContentsOfFile:arrayDatei];
//        NSArray *arrayB = [NSKeyedUnarchiver unarchiveObjectWithData:neueArrayDaten];
//        NSLog(@"%@", arrayB);
        
        
    }
    return 0;
}

