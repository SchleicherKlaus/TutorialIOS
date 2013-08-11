//
//  main.m
//  KSelektor
//
//  Created by Klaus Schleicher on 11.08.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *arrayA = [NSMutableArray arrayWithObjects:@"Spanien", @"Italien", nil];
        [arrayA addObject:@"Frankreich"];
        
        char methode[20] = "add";
        char zusatz[20] = "Object:";
        strcat(methode, zusatz);
        
        SEL selektorA = sel_registerName(methode);
        
        id verweisA = arrayA;
        
        if([verweisA respondsToSelector:selektorA])
            [verweisA performSelector:selektorA withObject:@"Deutschland"];
        
        SEL selektorB = @selector(ObjektHinzu);
        
        if([verweisA respondsToSelector:selektorB])
            [verweisA performSelector:selektorB withObject:@"Schweiz"];
        NSLog(@"%@", arrayA);
        
        
    }
    return 0;
}

