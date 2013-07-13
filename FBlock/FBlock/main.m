//
//  main.m
//  FBlock
//
//  Created by Klaus Schleicher on 13.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        void(^hallo)(void) =^ {
            NSLog(@"Hallo");
        };
        
        hallo();
        
        void (^doppeltAusgeben)(int) = ^(int x) {
            NSLog(@"%d", 2*x);
        };
        
        doppeltAusgeben(6);
        doppeltAusgeben(1121);
        
        int zahl = 0;
        int(^summe)(int, int) = ^(int a, int b) {
            return a + b + zahl;
        };
        
        NSLog(@"%d", summe(3,8));
        NSLog(@"%d", summe(7,12));
        
        zahl = 5;
        NSLog(@"%d", summe(6,3));
        
        
        
    }
    return 0;
}

