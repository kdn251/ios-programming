//
//  Object_Info.m
//  iOS Programming Assignment 1
//
//  Created by Kevin Naughton Jr. on 9/27/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Object_Info.h"

@implementation Object_Info: NSObject

//description of item
NSString *description;

//cost of item
float cost;

//number of items
int numberOfItems;

//getter for description
-(NSString *) getDescription {
    
    return description;
    
}

//getter for cost
-(float) getCost {
    
    return cost;
    
}

//getter for stock
-(int) getNumberOfItems {
    
    return numberOfItems;
    
}

//setter for description
-(void) setDescription: (NSString *) newDescription {
    
    description = newDescription;
    
}

//setter for cost
-(void) setCost: (float) newCost {
    
    cost = newCost;
    
}

//setter for stock
-(void) setNumberOfItems: (int) newNumberOfItems {
    
    numberOfItems = newNumberOfItems;
    
}

//declare printObject function
-(void) printObject{
    
    NSLog(@"%@\t | %f\t | %d", description, cost, numberOfItems);
    
}


@end
