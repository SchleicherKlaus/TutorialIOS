//
//  main.m
//  FMutableArray
//
//  Created by Klaus Schleicher on 07.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

NSInteger vergleich(id verweis1, id verweis2, void *kontext);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *arrayA = [NSMutableArray arrayWithObjects:@"Spanien", @"Frankreich", @"Italien", nil];
        NSLog(@"2 %@", arrayA);
        
        [arrayA removeLastObject];
        NSLog(@"3 %@", arrayA);
        
        [arrayA addObject:@"Schweiz"];
        NSLog(@"4 %@", arrayA);
        
        [arrayA replaceObjectAtIndex:0 withObject:@"Portugal"];
        NSLog(@"5 %@", arrayA);
        
        [arrayA insertObject:@"Irland" atIndex:1];
        NSLog(@"6 %@", arrayA);
        
        [arrayA removeObjectAtIndex:2];
        NSLog(@"7 %@", arrayA);
        
        [arrayA exchangeObjectAtIndex:0 withObjectAtIndex:2];
        NSLog(@"8 %@", arrayA);
        
        [arrayA sortUsingFunction:vergleich context:NULL];
        NSLog(@"9 %@", arrayA);
        
    }
    return 0;
}
NSInteger vergleich( id verweis1, id verweis2, void *kontext)
{
    NSString *a = verweis1;
    NSString *b = verweis2;
    return [a compare:b];
}

