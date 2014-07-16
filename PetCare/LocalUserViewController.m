//
//  LocalUserViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 11/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "LocalUserViewController.h"
#import "pet.h"

@interface LocalUserViewController ()

@end

@implementation LocalUserViewController

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


@end

