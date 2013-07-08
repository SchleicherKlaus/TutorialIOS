//
//  main.m
//  FXmlDatei
//
//  Created by Klaus Schleicher on 08.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
            NSString *arrayDatein = @"/Users/klausschleicher/Documents/meinArray.xml";
            NSArray *arrayA = [NSArray arrayWithObjects:@"Spanien", @"Italien", @"Frankreich", nil];
            [arrayA writeToFile:arrayDatein atomically:YES];
            NSArray *arrayB = [NSArray arrayWithContentsOfFile:arrayDatein ];
            NSLog(@"%@", arrayB);
        
        NSString *dictDatei = @"/Users/klausschleicher/Documents/meinDict.xml";
        NSDictionary *dictA = [[NSDictionary alloc] initWithObjectsAndKeys:
                               [NSNumber numberWithInt:47], @"Spanien",
                               [NSNumber numberWithInt:65], @"Frankreich",
                               [NSNumber numberWithInt:61], @"Italien", nil];
        [dictA writeToFile:dictDatei atomically:YES];
        NSDictionary *dictB = [NSDictionary dictionaryWithContentsOfFile:dictDatei];
        NSLog(@"%@", dictB);
        
        
        
    }
    return 0;
}

