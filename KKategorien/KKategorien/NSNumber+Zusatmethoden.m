//
//  NSNumber+Zusatmethoden.m
//  KKategorien
//
//  Created by Klaus Schleicher on 14.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import "NSNumber+Zusatmethoden.h"

@implementation NSNumber (Zusatmethoden)
-(BOOL)istZweistellig
{
    if([self intValue]>=10 && [self intValue] < 100)
        return YES;
    else
        return NO;
}
-(BOOL)istNegativ
{
    if([self intValue] < 0)
        return YES;
    else
        return NO;
    
}
@end
