//
//  DCViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 06/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "DCViewController.h"
#import "pet.h"
@interface DCViewController ()


@end

@implementation DCViewController

@synthesize img1;
- (void)viewDidLoad
{
    UIImage * image1 = [UIImage imageNamed: @"introimage.png"];

    [img1 setImage:image1];

    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
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


- (IBAction)save:(id)sender {
    
}

- (IBAction)changes:(id)sender {
    
}
@end
