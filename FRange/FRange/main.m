//
//  main.m
//  FRange
//
//  Created by Klaus Schleicher on 10.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSRange rangeA = NSMakeRange(0,2);
        
        NSString *textA = @"Mein erster Text";
        NSString *textB = [textA substringWithRange:rangeA];
        NSLog(@"%@", textB);
        
        NSArray *arrayA = [NSArray arrayWithObjects:@"Spanien", @"Frankreich", @"Italien", nil];
        NSArray *arrayB = [arrayA subarrayWithRange:rangeA];
        NSLog(@"%@", arrayB);
        
        NSRange rangeB = NSMakeRange(5, [textA length] -5);
        NSString *textC = [textA substringWithRange:rangeB];
        NSLog(@"%@", textC);
        
        NSMutableString *textD = [NSMutableString stringWithString:@"Ein neuer Text"];
        NSLog(@"%@", textD);

        NSRange rangeD = [textD rangeOfString:@"neuer "];
        if(rangeD.length >0)
        {
            [textD deleteCharactersInRange:rangeD];
            NSLog(@"%@", textD);
            [textD insertString:@"geänderter " atIndex:rangeD.location];
            NSLog(@"%@", textD);
        }


        
    }
    return 0;
}

