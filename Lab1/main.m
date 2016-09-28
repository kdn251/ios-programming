//
//  main.m
//  iOS Programming Assignment 1
//
//  Created by Kevin Naughton Jr. on 9/25/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Object_Info.h" 

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //create dictionary
        NSMutableDictionary *stock = [[NSMutableDictionary alloc] init];
        
        //initialize iphone object and attributes
        Object_Info *iPhone = [[Object_Info alloc] init];
        [iPhone setDescription: @"Apple's iPhone 6 minus plug"];
        [iPhone setCost: 769.00];
        [iPhone setNumberOfItems: 2];
        
        //add iphone to dictionary
        [stock setObject: iPhone
                  forKey: @"iPhone"];
        
        //initialize galaxy note object and attributes
        Object_Info *galaxyNote = [[Object_Info alloc] init];
        [galaxyNote setDescription: @"Samsung's Exploding Phone"];
        [galaxyNote setCost: 850.00];
        [galaxyNote setNumberOfItems: 90];
        
        //add galaxy note to dictionary
        [stock setObject: galaxyNote
                  forKey: @"Galaxy Note"];
        
        //initialize tv object and attributes
        Object_Info *tv = [[Object_Info alloc] init];
        [tv setDescription: @"Sony's LED TV"];
        [tv setCost: 298.00];
        [tv setNumberOfItems: 89];
         
         //add tv to dictionary
         [stock setObject: tv
                   forKey: @"TV"];
        
        //initialize kindle reader object and attributes
        Object_Info *kindleReader = [[Object_Info alloc] init];
        [kindleReader setDescription: @"Amazon's E-Reader"];
        [kindleReader setCost: 79.99];
        [kindleReader setNumberOfItems: 200];
        
        //add kindle reader to dictionary
        [stock setObject: kindleReader
                  forKey: @"Kindle Reader"];
        
        
        //initialize apple watch object and attributes
        Object_Info *appleWatch = [[Object_Info alloc] init];
        [appleWatch setDescription: @"Series 2 - Aluminum Case"];
        [appleWatch setCost: 299.00];
        [appleWatch setNumberOfItems: 0];
        
        //add apple watch to dictionary
        [stock setObject: appleWatch
                  forKey: @"Apple Watch"];
        

    }
    return 0;
}
