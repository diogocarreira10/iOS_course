//
//  ExpensesViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 07/08/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "ExpensesViewController.h"

@interface ExpensesViewController ()

@end

@implementation ExpensesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonAction:(id)sender {
    
    NSString * mystring = [NSString stringWithFormat:@"You have just introduced an expense of %@ €",_valueText.text];
    
    
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:mystring delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}
@end
