//
//  main.m
//  iOS Programming Assignment 1
//
//  Created by Kevin Naughton Jr. on 9/25/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Object_Info.h"

//declare functions
bool addItem(NSMutableDictionary **stock, NSString *name, NSString *description, float cost);
void addStock(NSMutableDictionary **stock, NSString *name, int addToStock);
void deleteItem(NSMutableDictionary **stock, NSString *name);
void sellItem(NSMutableDictionary **stock, NSString *name);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //create dictionary
        NSMutableDictionary *stock = [[NSMutableDictionary alloc] init];
        
        
        //add items to the dictionary
        addItem(&stock, @"iPhone", @"Apple's iPhone 6 minus plug", 769.00);
        
        addItem(&stock, @"Galaxy Note", @"Samsung's newest phone", 850.00);
        
        addItem(&stock, @"Sony TV", @"Sony's LED TV", 300.00);
        
        addItem(&stock, @"Kindle Reader", @"Amazon's E-Reader", 79.99);
        
        addItem(&stock, @"Apple Watch 2", @"Apple's Newest Watch", 399.99);
        
        
        
        //add stock to certain items
        addStock(&stock, @"iPhone", 10);
        
        addStock(&stock, @"Galaxy Note", 25);
        
        addStock(&stock, @"Sony TV", 5);
        
        addStock(&stock, @"Kindle Reader", 100);
        
        addStock(&stock, @"Apple Watch 2", 200);
        
        
        //print each item within the dictionary stock
        for(id key in stock) {
            
            id currentItem = [stock objectForKey: key];
            NSLog(@"%@", key);
            [currentItem printObject];
            
            
            
        }
        
        //delete certain items from dictionary
        deleteItem(&stock, @"iPhone");
        
        deleteItem(&stock, @"Sony TV");
        
        deleteItem(&stock, @"Galaxy Note");
        
        //print each item within the dictionary stock
        for(id key in stock) {
            
            id currentItem = [stock objectForKey: key];
            NSLog(@"%@", key);
            [currentItem printObject];
            
        }
        
        
        //sell certain items from dictionary
        sellItem(&stock, @"Kindle Reader");
        
        sellItem(&stock, @"Apple Watch 2");
        
        sellItem(&stock, @"Kindle Reader");
        
        
        //print each item within the dictionary stock
        for(id key in stock) {
            
            id currentItem = [stock objectForKey: key];
            NSLog(@"%@", key);
            [currentItem printObject];
            
        }

    }
    
    return 0;
    
}

bool addItem(NSMutableDictionary **stock, NSString *name, NSString *description, float cost) {
    
    //check if stock is nil
    if(!stock) {
        
        //initialize stock
        *stock = [[NSMutableDictionary alloc] init];
        
        //initialize and add object
        Object_Info *newItem = [[Object_Info alloc] init];
        
        [newItem setDescription: description];
        
        [newItem setCost: cost];
        
        [*stock setObject: newItem forKey: name];
        
        return true;
    }
    
    //stock is not nil
    else {
        
        //check if item is already in dictionary
        if((*stock)[name]) {
            
            //item is already in dictionary
            return false;
            
        }
        
        //item being added is not in dictionary
        else {
            
            Object_Info *newItem = [[Object_Info alloc] init];
            
            [newItem setDescription: description];
            
            [newItem setCost: cost];
            
            [*stock setObject: newItem forKey: name];
            
            return true;
            
            
            
        }
        
        
        
    }
    
    
}

void addStock(NSMutableDictionary **stock, NSString *name, int addToStock) {
    
    //if stock is nil return
    if(!stock) {
        
        return;
        
    }
    
    //increment number of items += addToStock
    else {
        
        if((*stock)[name]) {
            
            //keep a reference to current object
            Object_Info *currentObject = (*stock)[name];
            
            //add add to stock to current number of items of item in dictionary
            [currentObject setNumberOfItems: ([currentObject getNumberOfItems]) + addToStock];
            
            
            
        }
        
        
    }
    
    
    
}

void deleteItem(NSMutableDictionary **stock, NSString *name) {
    
    //if stock is nil return
    if(!stock) {
        
        return;

    }
    
    //otherwise look for item to delete
    else {
        
        //remove objects with the key name
        [*stock removeObjectForKey: name];
        
    }
    
    
    
}

void sellItem(NSMutableDictionary **stock, NSString *name) {
    
    //if stock is nil return
    if(!stock) return;
    
    //otherwise look for item to sell
    else {
        
        if((*stock)[name]) {
            
            //keep reference to current item
            Object_Info *currentObject = (*stock)[name];
            
            //decrement number of items of current item by 1
            [currentObject setNumberOfItems: [currentObject getNumberOfItems] - 1];
            
            
        }
        
        
        
    }
    
}




