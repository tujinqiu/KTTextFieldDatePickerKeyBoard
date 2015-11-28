//
//  SecondViewController.m
//  KTTextFieldDatePickerKeyBoard
//
//  Created by tujinqiu on 15/11/28.
//  Copyright © 2015年 tujinqiu. All rights reserved.
//

#import "SecondViewController.h"
#import "UITextField+DatePicker.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondTextField;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.firstTextField.datePickerInput = YES;
    self.secondTextField.datePickerInput = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

@end
