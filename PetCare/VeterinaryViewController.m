//
//  VeterinaryViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 07/08/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "VeterinaryViewController.h"
#import "DCUserPet.h"
#import "DCPetTableViewController.h"

@interface VeterinaryViewController ()

@property (nonatomic) UIDatePicker *picker;
@property (nonatomic) BOOL alertaAdicionado;

@end

@implementation VeterinaryViewController


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
    _picker = [[UIDatePicker alloc]init];
    [_alertaTextField setInputView:_picker];
    _alertaAdicionado = NO;
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

-(void) textFieldDidEndEditing:(UITextField *)textField{
 
 NSDateFormatter *formater = [[NSDateFormatter alloc]init];
 [formater setDateFormat:@"yyyy-MM-dd HH:mm"];
 
 NSString *data = [formater stringFromDate:_picker.date];
 [_alertaTextField setText:data];
 
 [_notificacoesEstadoLabel2 setText:@"On"];
 _alertaAdicionado = YES;
 
 }
-(void) addLocalNotification:(NSString *) mystring{

 UILocalNotification *localNotification = [[UILocalNotification alloc]init];
 localNotification.fireDate = _picker.date;
 localNotification.alertBody = [NSString stringWithFormat:mystring];
 localNotification.alertAction = @"Open PetCare";
 localNotification.timeZone = [NSTimeZone defaultTimeZone];
 
 localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication]applicationIconBadgeNumber]+1;
 
 [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
 
 }


- (IBAction)saveButtonAction:(id)sender {
    
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Notification accepted!" message: nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    
    
        if(_alertaAdicionado)
            [self addLocalNotification: _usertext.text];
}
@end

