//
//  DCLoginControllerViewController.h
//  PetCare
//
//  Created by Diogo Carreira on 19/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCLoginControllerViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)doLogin:(id)sender;

@end
