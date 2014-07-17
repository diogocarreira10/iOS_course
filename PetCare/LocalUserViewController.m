//
//  LocalUserViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 11/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "LocalUserViewController.h"
#import "DCUserPet.h"

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
    
    NSData *petData = [[NSUserDefaults standardUserDefaults]objectForKey:@"pet1"];
    DCUserPet *mypet;
    if(petData)
    {
    mypet = [NSKeyedUnarchiver unarchiveObjectWithData:petData];
    
    NSString *mystring= [NSString stringWithFormat:@"Your %@ named %@",mypet.type,mypet.name];
    
    NSString *mystring2= [NSString stringWithFormat:@"is an %@ %@ with %@ years old",mypet.race,mypet.gender, mypet.age];
        
        
    NSLog(@"%@",mystring);
    NSLog(@"%@",mystring2);
        
    _output.text = mystring;
    _output2.text = mystring2;
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


@end

