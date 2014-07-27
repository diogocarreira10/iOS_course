//
//  NewUserViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 10/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "NewUserViewController.h"
#import "DCUserPet.h"
#import "DCPetTableViewController.h"

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

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    if(_pet){
        
        self.name_value.text = _pet.name;
        self.gender_value.text = _pet.gender;
        self.type_value.text = _pet.type;
        
    }
        
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
    
    if([[self delegate] respondsToSelector:@selector(addPet:)])
        [[self delegate] addPet:mypet];

}



@end
