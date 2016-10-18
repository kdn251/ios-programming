//
//  AddRecordViewController.m
//  iOS Programming Assignment 2
//
//  Created by Kevin Naughton Jr. on 10/16/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "AddRecordViewController.h"
#import "Item.h"
#import "ViewController.h"

@interface AddRecordViewController ()

//declare navigation controller
@property UINavigationController *navigationController;

//declare add and cancel buttons
@property (weak, nonatomic) IBOutlet UIButton *add;
@property (weak, nonatomic) IBOutlet UIButton *cancel;

//declare text fields
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionField;
@property (weak, nonatomic) IBOutlet UITextField *costField;
@property (weak, nonatomic) IBOutlet UITextField *stockField;

@end

@implementation AddRecordViewController

- (IBAction)addTapped:(UIButton *)sender {
    
    //pop stack frame to previous view
    [self dismissViewControllerAnimated: YES completion: nil];


}

- (IBAction)cancelTapped:(UIButton *)sender {
    
    //return to previous view
    [self dismissViewControllerAnimated: YES completion: nil];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    //initialize new item
    Item *newItem = [[Item alloc] init];
    
    //initialize attributes of new item
    [newItem setName: self.nameField.text];
    [newItem setDescription: self.descriptionField.text];
    [newItem setCost: [self.costField.text integerValue]];
    [newItem setNumberOfItems: [self.stockField.text integerValue]];
    [newItem setImagePath: @"imagenotavailable.png"];
    
    //add the new item to the array of items
    [_addRecordArray addObject: newItem];
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
