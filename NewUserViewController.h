//
//  NewUserViewController.h
//  PetCare
//
//  Created by Diogo Carreira on 10/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DCUserPet.h"

@protocol DCNewUserViewControllerDelegate

-(void) addPet:(DCUserPet*) pet;

@end



@interface NewUserViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *name_value;
@property (weak, nonatomic) IBOutlet UITextField *type_value;
@property (weak, nonatomic) IBOutlet UITextField *race_value;
@property (weak, nonatomic) IBOutlet UITextField *gender_value;
@property (weak, nonatomic) IBOutlet UITextField *age_value;


- (IBAction)save:(id)sender;

@property (nonatomic) id delegate;
@property (nonatomic) DCUserPet *pet;


@end
