//
//  main.m
//  FTextDatei
//
//  Created by Klaus Schleicher on 08.07.13.
//  Copyright (c) 2013 Klaus Schleicher. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *speichereText = @"Ein Test mi aäöü";
        NSString *nameMitPfad =@"/Users/klausschleicher/Documents/aus.txt";
        
        [speichereText writeToFile:nameMitPfad atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        
        NSString *ladeText = [NSString stringWithContentsOfFile:nameMitPfad encoding:NSUTF8StringEncoding error:NULL];
        NSLog(@"%@", ladeText);
        
    }
    return 0;
}

