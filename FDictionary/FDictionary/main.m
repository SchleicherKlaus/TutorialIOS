//
//  main.m
//  FDictionary
//
//  Created by Klaus Schleicher on 07.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool
    {
        NSDictionary *einwohnerDict = [[NSDictionary alloc] initWithObjectsAndKeys:
                                                            [NSNumber numberWithInt:47],@"Spanien",
                                                            [NSNumber numberWithInt:65], @"Frankreich",
                                                            [NSNumber numberWithInt:61], @"Italien", nil];
        NSLog(@"%@", einwohnerDict);
        
        NSLog(@"Frankreich hat %@ Mio. Einwohner", [einwohnerDict objectForKey:@"Frankreich"]);
        
        for(NSString *schluessel in einwohnerDict)
            NSLog(@"%@ hat %@ Mio. Einwohner", schluessel, [einwohnerDict objectForKey:schluessel]);
        
        NSMutableDictionary * flaecheDict = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                             [NSNumber numberWithInt:503], @"Spanien",
                                             [NSNumber numberWithInt:675], @"Irland" ,nil];
        [flaecheDict setObject:[NSNumber numberWithInt:301] forKey:@"Italien"];
        [flaecheDict setObject:[NSNumber numberWithInt:505] forKey:@"Spanien"];
        NSLog(@"%@", flaecheDict);
        
        
        
    }
    return 0;
}

