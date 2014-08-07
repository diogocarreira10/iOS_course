//
//  VeterinaryViewController.h
//  PetCare
//
//  Created by Diogo Carreira on 07/08/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DCUserPet.h"


@protocol DCNewUserViewControllerDelegate
 
 -(void) addPet:(DCUserPet*) pet;
 
 @end

@interface VeterinaryViewController : UIViewController //<UITextFieldDelegate>
@property (nonatomic) id delegate;
@property (nonatomic) DCUserPet *pet;


@property (weak, nonatomic) IBOutlet UILabel *notificacoesEstadoLabel2;

@property (weak, nonatomic) IBOutlet UITextField *alertaTextField;

- (IBAction)saveButtonAction:(id)sender;

@property (weak, nonatomic) IBOutlet UITextView *usertext;

@end
