//
//  main.m
//  KKategorien
//
//  Created by Klaus Schleicher on 14.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSNumber+Zusatmethoden.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSNumber *zahl = [[NSNumber alloc] initWithInt:-1];
        if([zahl istZweistellig])
            NSLog(@"Die Zahl ist zweistellig");
        if([zahl istNegativ])
            NSLog(@"Die Zahl ist negativ");
        else
            NSLog(@"Die Zahl ist positiv");
    }
    return 0;
}

