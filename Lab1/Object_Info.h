//
//  Object_Info.h
//  iOS Programming Assignment 1
//
//  Created by Kevin Naughton Jr. on 9/27/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Object_Info : NSObject {
    
    //description attribute
    NSString *description;
    
    //cost attribute
    float cost;
    
    //number of items
    int numberOfItems;
    
    
    
}

//getter for description
-(NSString *) getDescription;

//getter for cost
-(float) getCost;

//getter for stock
-(int) getNumberOfItems;

//setter for description
-(void) setDescription: (NSString *) newDescription;

//setter for cost
-(void) setCost: (float) newCost;

//setter for stock
-(void) setNumberOfItems: (int) newNumberOfItems;

//declare printObject function
-(void) printObject;



@end
