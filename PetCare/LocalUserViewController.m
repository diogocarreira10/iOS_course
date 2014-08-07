//
//  LocalUserViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 11/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "LocalUserViewController.h"
#import "DCUserPet.h"
#import "DCPetTableViewController.h"

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

}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    if(_pet){
        
        NSString *mystring= [NSString stringWithFormat:@"%@",_pet.name];
        _label_name.text = mystring;
        
        _imageshow.image = _pet.cover;
        
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


- (IBAction)your_details:(id)sender {
    
    NSString *mystring= [NSString stringWithFormat:@"%@",_pet.name];
    _label_name.text = mystring;
    NSString *mystring2= [NSString stringWithFormat:@"Your %@ named %@ is an %@",_pet.type,_pet.name,_pet.race];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Details" message:mystring2 delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];

    
}

- (IBAction)veterinary:(id)sender {
    
    
}
@end

