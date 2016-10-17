//
//  Item.m
//  iOS Programming Assignment 2
//
//  Created by Kevin Naughton Jr. on 10/14/2016.
//  Copyright © 2016 nyu.edu. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Item.h"
#import <UIKit/UIImage.h>
#import <UIKit/UIImageView.h>


@implementation Item: NSObject

//description of item
NSString *description;

//cost of item
float cost;

//number of items
int numberOfItems;

//getter for name
-(NSString *) getName {
    
    return name;
    
}

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

//getter for image path
-(NSString *) getImagePath {
    
    return imagePath;
    
}

//getter for image view
-(UIImageView *) getImageView {
    
    return imageView;
    
}

//getter for image
-(UIImage *) getImage {
    
    return productImage;
    
}

//setter for name
-(void) setName: (NSString *) newName {
    
    name = newName;
    
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

//setter for image path
-(void) setImagePath: (NSString *)newImagePath {
    
     imagePath = newImagePath;
}

//setter for image
-(void) setImageView: (NSString *)imagePath {
    
    imageView = [[UIImageView alloc] init];

    
}

//declare printObject function
-(void) printObject{
    
    NSLog(@"%@\t | %f\t | %d", description, cost, numberOfItems);
    
}


@end
