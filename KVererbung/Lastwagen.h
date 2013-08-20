//
//  Lastwagen.h
//  KVererbung
//
//  Created by Klaus Schleicher on 20.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "Fahrzeug.h"

@interface Lastwagen : Fahrzeug
{
    float nutzlast;
    NSString *aufschrift;
}
@property float nutzlast;
@property (copy) NSString *aufschrift;
-(id)initMitLeistung:(int)neueLeistung farbe:(NSString *)neueFarbe nutzlast:(float)neueNutzlast aufschrift:(NSString *)neueAufschrift;
@end
