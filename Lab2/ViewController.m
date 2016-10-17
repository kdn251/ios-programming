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
@property (strong, nonatomic) IBOutlet UIImageView *imageView;




@end

//declare array to hold all items
static NSMutableArray *items;

//keep track of index of array of items
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
    _imageView = [[UIImageView alloc] initWithImage: [UIImage imageNamed: [[items objectAtIndex: arrayIndex] getImagePath]]];
    _imageView.frame = CGRectMake(45, 90, 275, 145);
    [self.view addSubview: _imageView];
    
}

- (IBAction)nextTapped:(UIButton *)sender {
    
    //if we are not at the last element of the items array
    if(arrayIndex != [items count] - 1) {
        
        //increment array index
        arrayIndex++;
        
    }
    
    //store new item
    Item *currentObject = items[arrayIndex];
    
    //initialize text fields to new item's attributes
    self.productField.text = [currentObject getName];
    self.descriptionField.text = [currentObject getDescription];
    self.costField.text = [NSString stringWithFormat: @"%.2f", [currentObject getCost]];
    self.stockField.text = [NSString stringWithFormat: @"%d", [currentObject getNumberOfItems]];
    _imageView = [[UIImageView alloc] initWithImage: [UIImage imageNamed: [[items objectAtIndex: arrayIndex] getImagePath]]];
    _imageView.frame = CGRectMake(45, 90, 275, 145);
    [self.view addSubview: _imageView];
    
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
    [iphone setImagePath: @"iphone7.png"];
    
    //add iphone item to array of items
    [items addObject: iphone];
    
    //create iphone item
    Item *samsung = [[Item alloc] init];
    
    //initialize iphone item attributes
    [samsung setName: @"Samsung Galaxy S6"];
    [samsung setDescription: @"Samsung's newest Galaxy"];
    [samsung setCost: 750];
    [samsung setNumberOfItems: 25];
    [samsung setImagePath: @"samsunggalaxys7.png"];

    
    //add samsung item to array of items
    [items addObject: samsung];
    
    //create apple watch item
    Item *appleWatch = [[Item alloc] init];
    
    //initialize apple watch item attributes
    [appleWatch setName: @"Apple Watch 2"];
    [appleWatch setDescription: @"Apple's newest watch"];
    [appleWatch setCost: 550];
    [appleWatch setNumberOfItems: 10];
    [appleWatch setImagePath: @"applewatch2.png"];

    
    //add apple watch item to array of items
    [items addObject: appleWatch];
    
    
    //create apple watch item
    Item *xboxOne = [[Item alloc] init];
    
    //initialize apple watch item attributes
    [xboxOne setName: @"Xbox One"];
    [xboxOne setDescription: @"Microsoft's newest console"];
    [xboxOne setCost: 450];
    [xboxOne setNumberOfItems: 30];
    [xboxOne setImagePath: @"xboxone.png"];

    
    //add apple watch item to array of items
    [items addObject: xboxOne];
    
    //create apple watch item
    Item *ps4 = [[Item alloc] init];
    
    //initialize apple watch item attributes
    [ps4 setName: @"PlayStation 4"];
    [ps4 setDescription: @"Sony's newest console"];
    [ps4 setCost: 450];
    [ps4 setNumberOfItems: 15];
    [ps4 setImagePath: @"ps4.png"];

    
    //add apple watch item to array of items
    [items addObject: ps4];
    
    
    //initialize fields with first item's attributes
    self.productField.text = [items.firstObject getName];
    self.descriptionField.text = [items.firstObject getDescription];
    self.costField.text = [NSString stringWithFormat: @"%.2f",[items.firstObject getCost] ];
    self.stockField.text = [NSString stringWithFormat: @"%d", [items.firstObject getNumberOfItems]];
    
    
    //initialize iphone image
    _imageView = [[UIImageView alloc] initWithImage: [UIImage imageNamed: [[items objectAtIndex: arrayIndex] getImagePath]]];
    _imageView.frame = CGRectMake(45, 90, 275, 145);
    [self.view addSubview: _imageView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
