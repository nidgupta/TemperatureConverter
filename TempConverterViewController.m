//
//  TempConverterViewController.m
//  TemperatureConverter
//
//  Created by Nidhi Gupta on 10/2/13.
//  Copyright (c) 2013 zynga. All rights reserved.
//

#import "TempConverterViewController.h"

@interface TempConverterViewController ()

@property (weak, nonatomic) IBOutlet UITextField *TempTextField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *ConversionSelect;
@property (weak, nonatomic) IBOutlet UILabel *showResultLabel;

- (IBAction)onTap:(id)sender;

- (void) convert;

@end

@implementation TempConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.title = @"Temprature Converter";
        // Custom initialization
    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    
    [self.view endEditing:YES];
    [self convert];
}

- (void)convert{
    float temp = [self.TempTextField.text floatValue];
    float tempResult =0;
    NSString *displayResult = [[NSString alloc]init];
    
    if(self.ConversionSelect.selectedSegmentIndex == 0){
        // means conversion is needed in Celsius
        tempResult = (temp-32.0f)*(5.0f/9.0f);
        displayResult = [NSString stringWithFormat:@"%0.2f \u00B0F = %0.2f \u00B0C",temp,tempResult];
        
    }
        
    else{ // means conversion si requested in fahrenhite
        tempResult = (temp*(9.0f/5.0f))+32;
        displayResult = [NSString stringWithFormat:@"%0.2f \u00B0C = %0.2f \u00B0F",temp,tempResult];
    }
    
    
    self.showResultLabel.text = displayResult;
        
}
@end
