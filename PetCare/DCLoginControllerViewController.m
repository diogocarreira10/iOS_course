//
//  DCLoginControllerViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 19/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "DCLoginControllerViewController.h"


@interface DCLoginControllerViewController ()

@end

@implementation DCLoginControllerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) viewWillAppear:(BOOL)animated{
    
    _passwordTextField.secureTextEntry = YES;
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

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    if([textField isEqual:_usernameTextField]){
        return [_passwordTextField becomeFirstResponder];
    }
    else {
        return [textField resignFirstResponder];
    }
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

- (IBAction)doLogin:(id)sender {
    
    if([_usernameTextField.text isEqualToString:@"diogo"] && [_passwordTextField.text isEqualToString:@"petcare"]){
        
        UINavigationController * navigation = [self.storyboard instantiateViewControllerWithIdentifier:@"navigation"];
        
        [self presentViewController:navigation animated:YES completion:nil];
        
                                              
    }
                                              
       else{
           UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Login Error" message:@"invalid credentials, try diogo/petcare" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
           [alert show];
                                 
       }
       
}
@end
