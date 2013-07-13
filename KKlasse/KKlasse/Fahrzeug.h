//
//  Fahrzeug.h
//  KKlasse
//
//  Created by Klaus Schleicher on 13.07.13.
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

//- (void) setLeistung:(int)neueLeistung;
//- (void) setFarbe:(NSString *)neueFarbe;
//- (int) leistung;
//- (NSString *) farbe;

-(id)initMitLeistung:(int)lg;
-(id)initMitFarbe:(NSString *)fa;
-(id)initMitLeistung:(int)lg farbe:(NSString *)fa;

@end
