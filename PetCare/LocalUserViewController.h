//
//  LocalUserViewController.h
//  PetCare
//
//  Created by Diogo Carreira on 11/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DCUserPet.h"

@protocol DCNewUserViewControllerDelegate

-(void) addPet:(DCUserPet*) pet;

@end

@interface LocalUserViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label_name;
@property (weak, nonatomic) IBOutlet UIImageView *imageshow;




@property (nonatomic) id delegate;
@property (nonatomic) DCUserPet *pet;
- (IBAction)your_details:(id)sender;

- (IBAction)veterinary:(id)sender;

@end
