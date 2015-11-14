//
//  ViewController.m
//  Calculator
//
//  Created by Amy Steele on 11/13/15.
//  Copyright © 2015 MSB SD352. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Code added
    // More Changes
    //TGIF2
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addNumber:(id)sender {
    NSString *localString = self.calculatorTextBox.text;
    
    if(sender == self.oneButton){
        self.calculatorTextBox.text = [NSString stringWithFormat:@"%@%s",localString,"1"];
    }else if (sender == self.twoButton){
        self.calculatorTextBox.text = [NSString stringWithFormat:@"%@%s",localString,"2"];
    }else if (sender == self.threeButton){
        self.calculatorTextBox.text = [NSString stringWithFormat:@"%@%s",localString,"3"];
    }else if (sender == self.fourButton){
        self.calculatorTextBox.text = [NSString stringWithFormat:@"%@%s",localString,"4"];
    }else if (sender == self.fiveButton){
        self.calculatorTextBox.text = [NSString stringWithFormat:@"%@%s",localString,"5"];
    }else if (sender == self.sixButton){
        self.calculatorTextBox.text = [NSString stringWithFormat:@"%@%s",localString,"6"];
    }else if (sender == self.sevenButton){
        self.calculatorTextBox.text = [NSString stringWithFormat:@"%@%s",localString,"7"];
    }else if (sender == self.eightButton){
        self.calculatorTextBox.text = [NSString stringWithFormat:@"%@%s",localString,"8"];
    }else if (sender == self.nineButton){
        self.calculatorTextBox.text = [NSString stringWithFormat:@"%@%s",localString,"9"];
    }else if (sender == self.zeroButton){
        self.calculatorTextBox.text = [NSString stringWithFormat:@"%@%s",localString,"0"];
    }
}
@end
