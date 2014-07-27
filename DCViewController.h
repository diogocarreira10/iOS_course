//
//  DCViewController.h
//  PetCare
//
//  Created by Diogo Carreira on 06/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UITextField *name_value;
@property (weak, nonatomic) IBOutlet UITextField *type_value;
@property (weak, nonatomic) IBOutlet UITextField *race_value;
@property (weak, nonatomic) IBOutlet UITextField *gender_value;
@property (weak, nonatomic) IBOutlet UITextField *age_value;
- (IBAction)save:(id)sender;
- (IBAction)changes:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *result_string;

@end
