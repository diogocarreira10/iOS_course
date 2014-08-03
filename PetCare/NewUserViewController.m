//
//  NewUserViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 10/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "NewUserViewController.h"
#import "DCUserPet.h"
#import "DCPetTableViewController.h"

@interface NewUserViewController ()

@property (nonatomic) UIImage* imagem;
@property (nonatomic) UIDatePicker *picker;
@property (nonatomic) BOOL alertaAdicionado;


@end

@implementation NewUserViewController

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
    
    _picker = [[UIDatePicker alloc]init];
    [_alertaTextField setInputView:_picker];
    
    if(_pet){
        
        self.name_value.text = _pet.name;
        self.type_value.text = _pet.type;
        self.race_value.text = _pet.race;
        
        
        if(_pet.cover) {
            [_inserirNovaimagemButton setHidden:YES];
            [_petImageView setImage:_pet.cover];
            
        }
        self.navigationItem.title = [_pet.name uppercaseString];

    }
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


- (IBAction)save:(id)sender {
    
    DCUserPet *mypet= [[DCUserPet alloc]init];
    mypet.name=_name_value.text;
    mypet.type=_type_value.text;
    mypet.race=_race_value.text;
    
    
    if(_imagem)
        mypet.cover=_petImageView.image;
    
    
    
    if(_alertaAdicionado)
        [self addLocalNotification:mypet];
    
    
    if([[self delegate] respondsToSelector:@selector(addPet:)])
        [[self delegate] addPet:mypet];

}



- (IBAction)adicionarImagem:(id)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.allowsEditing = YES;
    imagePicker.delegate = self;
    
    [self presentViewController:imagePicker animated: YES completion:nil];
    
}



- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage * img = info[UIImagePickerControllerEditedImage];
    
    if(!img){
        img =  info[UIImagePickerControllerEditedImage];
    }
    
    self.imagem = img;
    
    [_inserirNovaimagemButton setHidden:YES];
    [_petImageView setImage:self.imagem];
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    

    
}


-(void) textFieldDidEndEditing:(UITextField *)textField{
    
    NSDateFormatter *formater = [[NSDateFormatter alloc]init];
    [formater setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    NSString *data = [formater stringFromDate:_picker.date];
    [_alertaTextField setText:data];

    [_notificacoesEstadoLabel setText:@"On"];
     _alertaAdicionado = YES;
    
}

-(void) addLocalNotification: (DCUserPet*) pet {
    
    UILocalNotification *localNotification = [[UILocalNotification alloc]init];
    localNotification.fireDate = pet.data;
    localNotification.alertBody = [NSString stringWithFormat:@"Alert for the pet %@", pet.name];
    localNotification.alertAction = @"Open Pets";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    
    localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication]applicationIconBadgeNumber]+1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    
    
}
    

@end
