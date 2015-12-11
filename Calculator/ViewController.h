//
//  ViewController.h
//  Calculator
//
//  Created by Amy Steele on 11/13/15.
//  Copyright © 2015 MSB SD352. All rights reserved.
//

#import <UIKit/UIKit.h>

int Method;
int SelectNumber;
 // bool HasDecimal;
// int DecimalPlaces;
float RunningTotal;

@interface ViewController : UIViewController
{
   
    IBOutlet UILabel *Screen;
    IBOutlet UILabel *textview;
    
}

//Action Buttons
-(IBAction)Number1:(id)sender;
-(IBAction)Number2:(id)sender;
-(IBAction)Number3:(id)sender;
-(IBAction)Number4:(id)sender;
-(IBAction)Number5:(id)sender;
-(IBAction)Number6:(id)sender;
-(IBAction)Number7:(id)sender;
-(IBAction)Number8:(id)sender;
-(IBAction)Number9:(id)sender;
-(IBAction)Number0:(id)sender;
-(IBAction)Times:(id)sender;
-(IBAction)Divide:(id)sender;
-(IBAction)Subtract:(id)sender;
-(IBAction)Plus:(id)sender;
-(IBAction)Equals:(id)sender;
-(IBAction)AllClear:(id)sender;

//@property (weak, nonatomic) IBOutlet UIButton *acButton;
//@property (weak, nonatomic) IBOutlet UIButton *signButton;
//@property (weak, nonatomic) IBOutlet UIButton *percentButton;
//@property (weak, nonatomic) IBOutlet UIButton *divideButton;
//@property (weak, nonatomic) IBOutlet UIButton *multiplyButton;
//@property (weak, nonatomic) IBOutlet UIButton *plusButton;
//@property (weak, nonatomic) IBOutlet UIButton *decimalButton;
//@property (weak, nonatomic) IBOutlet UIButton *equalButton;
//@property (weak, nonatomic) IBOutlet UIButton *minusButton;
//
////Number Buttons
//@property (weak, nonatomic) IBOutlet UIButton *oneButton;
//@property (weak, nonatomic) IBOutlet UIButton *twoButton;
//@property (weak, nonatomic) IBOutlet UIButton *threeButton;
//@property (weak, nonatomic) IBOutlet UIButton *fourButton;
//@property (weak, nonatomic) IBOutlet UIButton *fiveButton;
//@property (weak, nonatomic) IBOutlet UIButton *sixButton;
//@property (weak, nonatomic) IBOutlet UIButton *sevenButton;
//@property (weak, nonatomic) IBOutlet UIButton *eightButton;
//@property (weak, nonatomic) IBOutlet UIButton *nineButton;
//@property (weak, nonatomic) IBOutlet UIButton *zeroButton;
//
//- (IBAction)addNumber:(id)sender;
//
//- (IBAction)setFunction:(id)sender;
@end

