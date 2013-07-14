//
//  Fahrzeug.h
//  KProtokolle
//
//  Created by Klaus Schleicher on 14.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Verbesserung.h"
@interface Fahrzeug : NSObject <Verbesserung>
{
    int leistung;
    NSString *farbe;
}
@property int leistung;
@property (copy) NSString *farbe;
@end
