//
//  DCPetTableViewController.m
//  PetCare
//
//  Created by Diogo Carreira on 22/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "DCPetTableViewController.h"
#import "NewUserViewController.h"
#import "DCUserPet.h"

@interface DCPetTableViewController ()

@end

@implementation DCPetTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self loadArrayFromUD];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
   NewUserViewController *details = segue.destinationViewController;
   details.delegate = self;
    

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_pets count];
}




-(void) addPet:(DCUserPet *)pet{
    
    [_pets addObject:pet];
    [self saveArrayToUD];
    
}

-(void) loadArrayFromUD{
    
    _pets = [[NSMutableArray alloc]init];
    NSData* petData = [[NSUserDefaults standardUserDefaults] objectForKey:@"NewUserViewController"];
    
    if (petData)
        _pets = [NSKeyedUnarchiver unarchiveObjectWithData:petData];
    
    if(!_pets)
        _pets = [[NSMutableArray alloc]init];
    
}

-(void) saveArrayToUD{
    
    NSData* petData = [NSKeyedArchiver archivedDataWithRootObject:_pets];
    [[NSUserDefaults standardUserDefaults] setObject:petData forKey:@"NewUserViewController"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self.tableView reloadData];
    
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *identifier = @"PetCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    
    if(!cell){
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }

    
    DCUserPet *pet = [_pets objectAtIndex:indexPath.row];
    cell.textLabel.text = pet.name;

    if(pet.cover)
        cell.imageView.image = pet.cover;

    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    cell.tintColor = [UIColor colorWithRed:100.0/255.0 green:220/255.0 blue:191.0/255.0 alpha:1];
    return cell;
}



-(void) tableView:(UITableView*) tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
        DCUserPet *pet = [_pets objectAtIndex:indexPath.row];
        NewUserViewController *details = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewDetailsController2"];
    
    details.pet = pet;
    details.delegate = self;
    
    
    [self.navigationController pushViewController:details animated:YES];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [_pets removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    [tableView reloadData];
    [self saveArrayToUD];
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)editar:(id)sender {
    
    if(![self.tableView isEditing]){
        _editarButton.title=@"Terminar";
        [self.tableView setEditing:YES animated:YES];
    }
    else{
        _editarButton.title=@"Editar";
        [self.tableView setEditing:NO animated:YES];
    }
    
}
@end
