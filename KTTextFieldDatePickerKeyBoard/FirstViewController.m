//
//  FirstViewController.m
//  KTTextFieldDatePickerKeyBoard
//
//  Created by tujinqiu on 15/11/28.
//  Copyright © 2015年 tujinqiu. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondTextField;

@property (strong, nonatomic) UITextField *currentDateTextField;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIDatePicker *picker = [[UIDatePicker alloc] init];
    picker.datePickerMode = UIDatePickerModeDate;
    [picker addTarget:self action:@selector(pickerValueChanged:) forControlEvents:UIControlEventValueChanged];
    self.firstTextField.inputView = picker;
    self.secondTextField.inputView = picker;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField == self.firstTextField ||
        textField == self.secondTextField)
    {
        self.currentDateTextField = textField;
    }
}

- (void)pickerValueChanged:(UIDatePicker *)sender
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    self.currentDateTextField.text = [formatter stringFromDate:sender.date];
}

@end
