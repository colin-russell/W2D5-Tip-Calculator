//
//  ViewController.m
//  W2D5 Tip Calculator
//
//  Created by Colin on 2018-04-20.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;

@property (nonatomic)double billAmount;
@property (nonatomic)double tipPercentage;
//@property (nonatomic)double tipAmount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.billAmount =  0;
    self.tipPercentage = 0.15;
    
    
}

- (double)calculateTip{
    return self.tipPercentage*self.billAmount;

}


- (IBAction)calculateTipButton:(UIButton *)sender {
    self.billAmount = [self.billAmountTextField.text doubleValue];
    NSLog(@"bill amount:%f",self.billAmount);
    
    self.tipPercentage = [self.tipPercentageTextField.text doubleValue]/100;
    NSLog(@"tip percentage:%f", self.tipPercentage);
    
    self.tipAmountLabel.text = [NSString stringWithFormat:@"$%.02f", [self calculateTip]];
}

@end
