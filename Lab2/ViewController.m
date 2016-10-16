//
//  ViewController.m
//  iOS Programming Assignment 2
//
//  Created by Kevin Naughton Jr. on 10/13/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import "Item.h"

@interface ViewController ()

//declare text fields for each entry
@property (weak, nonatomic) IBOutlet UITextField *productField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionField;
@property (weak, nonatomic) IBOutlet UITextField *costField;
@property (weak, nonatomic) IBOutlet UITextField *stockField;




@end

//declare array to hold all items
static NSMutableArray *items;
static int arrayIndex = 0;

@implementation ViewController


- (IBAction)incrementTapped:(UIButton *)sender {
    
    //cast stock number to foat
    int number = self.stockField.text.intValue;
    
    //increment stock number
    number++;
    
    //display new stock value
    self.stockField.text = [NSString stringWithFormat: @"%d", number];
    
}

- (IBAction)decrementTapped:(UIButton *)sender {
    
    //cast stock number to foat
    int number = self.stockField.text.intValue;
    
    //ensure that stock value does not become negative
    if(number != 0) {
        
        //decrement stock number
        number--;
        
    }
    
    //display new stock value
    self.stockField.text = [NSString stringWithFormat: @"%d", number];
    
    
}

- (IBAction)backTapped:(UIButton *)sender {
    
    //if we are not at the first element of the items array
    if(arrayIndex != 0) {
        
        //decrement array index
        arrayIndex--;
        
    }
    
    //store new item
    Item *currentObject = items[arrayIndex];
    
    //initialize text fields to new item's attributes
    self.productField.text = [currentObject getName];
    self.descriptionField.text = [currentObject getDescription];
    self.costField.text = [NSString stringWithFormat: @"%.2f", [currentObject getCost]];
    self.stockField.text = [NSString stringWithFormat: @"%d", [currentObject getNumberOfItems]];
    
}

- (IBAction)nextTapped:(UIButton *)sender {
    
    //if we are not at the first element of the items array
    if(arrayIndex != sizeof(items)) {
        
        //decrement array index
        arrayIndex++;
        
    }
    
    //store new item
    Item *currentObject = items[arrayIndex];
    
    //initialize text fields to new item's attributes
    self.productField.text = [currentObject getName];
    self.descriptionField.text = [currentObject getDescription];
    self.costField.text = [NSString stringWithFormat: @"%.2f", [currentObject getCost]];
    self.stockField.text = [NSString stringWithFormat: @"%d", [currentObject getNumberOfItems]];
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //initialize array to hold all items
    items = [[NSMutableArray alloc] init];
    
    //create iphone item
    Item *iphone = [[Item alloc] init];
    
    //initialize iphone item attributes
    [iphone setName: @"iPhone 7"];
    [iphone setDescription: @"Apple's newest iPhone"];
    [iphone setCost: 1000];
    [iphone setNumberOfItems: 100];
    
    //add iphone item to array of items
    [items addObject: iphone];
    
    
    //create iphone item
    Item *samsung = [[Item alloc] init];
    
    //initialize iphone item attributes
    [samsung setName: @"Samsung Galaxy S6"];
    [samsung setDescription: @"Samsung's newest Galaxy"];
    [samsung setCost: 750];
    [samsung setNumberOfItems: 25];
    
    //add samsung item to array of items
    [items addObject: samsung];
    
    self.productField.text = [items.firstObject getName];
    self.descriptionField.text = [items.firstObject getDescription];
    self.costField.text = [NSString stringWithFormat: @"%.2f",[items.firstObject getCost] ];
    self.stockField.text = [NSString stringWithFormat: @"%d", [items.firstObject getNumberOfItems]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
