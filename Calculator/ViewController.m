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
    //TESTING  OUT  COMMIT EH
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addNumber:(id)sender {
 
    float numAdd = 0;

    if (sender == self.oneButton) {
        numAdd = 1;
    }else if(sender == self.twoButton){
        numAdd = 2;
    }else if(sender == self.threeButton){
        numAdd = 3;
    }else if(sender == self.fourButton){
        numAdd = 4;
    }else if(sender == self.fiveButton){
        numAdd = 5;
    }else if(sender == self.sixButton){
        numAdd = 6;
    }else if(sender == self.sevenButton){
        numAdd = 7;
    }else if(sender == self.eightButton){
        numAdd = 8;
    }else if(sender == self.nineButton){
        numAdd = 9;
    }else if(sender == self.zeroButton){
        numAdd = 10;
    }
  
    if (HasDecimal) {
        
        int multiplier = pow(10,DecimalPlaces + 1);
        
        numAdd = numAdd / multiplier;
        
        DecimalPlaces += 1;
        
    }else{
        SelectNumber = SelectNumber * 10;
        
    }
        
    SelectNumber = SelectNumber + numAdd;
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [formatter setMinimumFractionDigits:DecimalPlaces];
    
    OutPutLabel.text  = [formatter stringFromNumber:[NSNumber numberWithFloat:SelectNumber]];
}
-(IBAction)setFunction:(id)sender{
    
    [self CalculateValue];
    

   if(sender == self.divideButton){
        Method = 1;
    }else if(sender == self.multiplyButton){
        Method = 2;
    }else if(sender == self.plusButton){
        Method = 3;
    }else if(sender == self.minusButton){
        Method = 4;
    }
    
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [formatter setMinimumFractionDigits:DecimalPlaces];
    
    OutPutLabel.text  = [formatter stringFromNumber:[NSNumber numberWithFloat:SelectNumber]];
}
-(void)CalculateValue{
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }else{
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            default:
                break;
        }
    }
    HasDecimal = false;
    DecimalPlaces = 0;
    SelectNumber = 0;
}

-(IBAction)modifyValue:(id)sender{
    if (sender == self.acButton) {
        RunningTotal = 0;
        SelectNumber = 0;
        DecimalPlaces = 0;
        HasDecimal = false;
        Method = 0;
    }else if(sender == self.signButton){
        SelectNumber = SelectNumber * -1;
    }else if(sender == self.percentButton){
        SelectNumber = SelectNumber * 0.01;
        HasDecimal = true;
        DecimalPlaces += 2;
    }else if(sender == self.decimalButton){
        if (!HasDecimal) {
            HasDecimal = true;
        }
    }else if(sender == self.equalButton){
        [self CalculateValue];
        SelectNumber = RunningTotal;
    }
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [formatter setMinimumFractionDigits:DecimalPlaces];
    
    OutPutLabel.text  = [formatter stringFromNumber:[NSNumber numberWithFloat:SelectNumber]];

}
@end
