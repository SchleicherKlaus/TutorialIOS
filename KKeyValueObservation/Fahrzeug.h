//
//  Fahrzeug.h
//  KKeyValueObservation
//
//  Created by Klaus Schleicher on 21.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fahrzeug : NSObject
{
    int leistung;
    NSString *farbe;
}
@property int leistung;
@property (copy) NSString *farbe;

@end
