//
//  NewUserViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 10/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "NewUserViewController.h"
#import "pet.h"

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
    
    pet *mypet= [[pet alloc]init];
    mypet.name=_name_value.text;
    mypet.type=_type_value.text;
    mypet.race=_race_value.text;
    mypet.gender=_gender_value.text;
    mypet.age=_age_value.text;

    
}



- (IBAction)changes:(id)sender {
    NSLog(@"WORKS");

    pet *mypet= [[pet alloc]init];
    
    if(_name_value.text.length != 0)
        mypet.name=_name_value.text;
    else
        NSLog(@"error 404, missing name value");
    
    if(_type_value.text.length != 0)
        mypet.type=_type_value.text;
    else
        NSLog(@"error 404, missing type value");
    
    if(_race_value.text.length != 0)
        mypet.race=_race_value.text;
    else
        NSLog(@"error 404, missing race value");
    
    if(_gender_value.text.length != 0)
        mypet.gender=_gender_value.text;
    else
        NSLog(@"error 404, missing gender value");
    
    if(_age_value.text.length != 0)
        mypet.age=_age_value.text;
    else
        NSLog(@"error 404, missing age value");
    
    pet *mypet2 = [pet print:mypet];
    
    
    _result_string.text = mypet2.string;
    NSLog(@"%@",mypet2.string);
}

@end
