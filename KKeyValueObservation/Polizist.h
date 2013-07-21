//
//  Polizist.h
//  KKeyValueObservation
//
//  Created by Klaus Schleicher on 21.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Polizist : NSObject
{
    NSString *nachname;
    NSString *rang;
}
@property (copy) NSString *nachname;
@property (copy) NSString *rang;
@end
