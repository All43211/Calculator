//
//  ViewController.h
//  Calculator
//
//  Created by Amy Steele on 11/13/15.
//  Copyright © 2015 MSB SD352. All rights reserved.
//

#import <UIKit/UIKit.h>

int Method;
double SelectNumber;
bool HasDecimal;
int DecimalPlaces;
double RunningTotal;

@interface ViewController : UIViewController
{
    IBOutlet UILabel *OutPutLabel;
    
}

//Action Buttons
@property (weak, nonatomic) IBOutlet UIButton *acButton;
@property (weak, nonatomic) IBOutlet UIButton *signButton;
@property (weak, nonatomic) IBOutlet UIButton *percentButton;
@property (weak, nonatomic) IBOutlet UIButton *divideButton;
@property (weak, nonatomic) IBOutlet UIButton *multiplyButton;
@property (weak, nonatomic) IBOutlet UIButton *plusButton;
@property (weak, nonatomic) IBOutlet UIButton *decimalButton;
@property (weak, nonatomic) IBOutlet UIButton *equalButton;
@property (weak, nonatomic) IBOutlet UIButton *minusButton;

//Number Buttons
@property (weak, nonatomic) IBOutlet UIButton *oneButton;
@property (weak, nonatomic) IBOutlet UIButton *twoButton;
@property (weak, nonatomic) IBOutlet UIButton *threeButton;
@property (weak, nonatomic) IBOutlet UIButton *fourButton;
@property (weak, nonatomic) IBOutlet UIButton *fiveButton;
@property (weak, nonatomic) IBOutlet UIButton *sixButton;
@property (weak, nonatomic) IBOutlet UIButton *sevenButton;
@property (weak, nonatomic) IBOutlet UIButton *eightButton;
@property (weak, nonatomic) IBOutlet UIButton *nineButton;
@property (weak, nonatomic) IBOutlet UIButton *zeroButton;

- (IBAction)addNumber:(id)sender;

- (IBAction)setFunction:(id)sender;
@end

