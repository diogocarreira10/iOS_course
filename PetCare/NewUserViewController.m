//
//  NewUserViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 10/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "NewUserViewController.h"
#import "DCUserPet.h"

@interface NewUserViewController ()

@end

@implementation NewUserViewController

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
    
    DCUserPet *mypet= [[DCUserPet alloc]init];
    mypet.name=_name_value.text;
    mypet.type=_type_value.text;
    mypet.race=_race_value.text;
    mypet.gender=_gender_value.text;
    mypet.age=_age_value.text;

    
    NSData *petData = [NSKeyedArchiver archivedDataWithRootObject:mypet];
    [[NSUserDefaults standardUserDefaults]setObject:petData forKey:@"pet1"];
    
}



- (IBAction)changes:(id)sender {
    NSLog(@"...");
}

@end
