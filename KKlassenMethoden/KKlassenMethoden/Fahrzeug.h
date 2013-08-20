//
//  Fahrzeug.h
//  KKlassenMethoden
//
//  Created by Klaus Schleicher on 20.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fahrzeug : NSObject
{
    int leistung;
    NSString *farbe;
}
@property int leistung;
@property NSString *farbe;

+(int)zaehlerAusgabe;

@end
