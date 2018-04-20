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
@property (nonatomic)NSInteger tipPercentage;
@property (nonatomic)double tipAmount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    double billAmount =  [self.billAmountTextField.text doubleValue];
    NSInteger tipPercentage = [self.tipPercentageTextField.text integerValue];
    
    [self calculateTipWithBillAmount:billAmount andTipPercentage:tipPercentage];
}

- (double)calculateTipWithBillAmount:(double) billAmount andTipPercentage:(NSInteger) tipPercentage{
    
    
    return 0;
}

- (IBAction)billAmountButton:(UIButton *)sender {
}

- (IBAction)tipPercentageButton:(UIButton *)sender {
}


@end
