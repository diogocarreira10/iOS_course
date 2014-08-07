//
//  ExpensesViewController.h
//  PetCare
//
//  Created by Diogo Carreira on 07/08/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExpensesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *valueText;
@property (weak, nonatomic) IBOutlet UITextView *descriptionText;
- (IBAction)buttonAction:(id)sender;

@end
