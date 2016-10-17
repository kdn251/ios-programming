//
//  Item.h
//  iOS Programming Assignment 2
//
//  Created by Kevin Naughton Jr. on 10/14/2016.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UITextView.h>



@interface Item : NSObject {
    
    
    
    //name attribute
    NSString *name;
    
    //description attribute
    NSString *description;
    
    //cost attribute
    float cost;
    
    //number of items attribute
    int numberOfItems;
    
    //image path attribute
    NSString *imagePath;

    //image view attribute
    UIImageView *imageView;
    
    //image attribute
    UIImage *productImage;
    
}

@property (strong, nonatomic) NSString *recordAddedName;
@property (strong, nonatomic) NSString *recordAddedDescription;
@property (strong, nonatomic) NSString *recordAddedCost;
@property (strong, nonatomic) NSString *recordAddedNumberOfItems;

//getter for name
-(NSString *) getName;

//getter for description
-(NSString *) getDescription;

//getter for cost
-(float) getCost;

//getter for stock
-(int) getNumberOfItems;

//getter for image path
-(NSString *) getImagePath;

//getter for image view
-(UIImageView *) getImageView;

//getter for image
-(UIImage *) getImage;

//setter for name
-(void) setName: (NSString *) newName;

//setter for description
-(void) setDescription: (NSString *) newDescription;

//setter for cost
-(void) setCost: (float) newCost;

//setter for stock
-(void) setNumberOfItems: (int) newNumberOfItems;

//setter for image path
-(void) setImagePath: (NSString *) newImagePath;

//setter for image
-(void) setImageView: (NSString *) imagePath;

//declare printObject function
-(void) printObject;


@end
