//
//  Fahrzeug.h
//  KVererbung
//
//  Created by Klaus Schleicher on 20.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fahrzeug : NSObject
{
    int leistung;
    NSString * farbe;
}
@property int leistung;
@property NSString *farbe;

-(id)initMitLeistung:(int)neueLeistung
               farbe:(NSString *)neueFarbe;
-(void)verbessern:(float)faktor;



@end
