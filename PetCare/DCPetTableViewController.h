//
//  DCPetTableViewController.h
//  PetCare
//
//  Created by Diogo Carreira on 22/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewUserViewController.h"

@interface DCPetTableViewController : UITableViewController<DCNewUserViewControllerDelegate>

@property (nonatomic) NSMutableArray* pets;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *editarButton;
- (IBAction)editar:(id)sender;


@end
