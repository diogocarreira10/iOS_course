//
//  pet.m
//  PetCare
//
//  Created by Diogo Carreira on 06/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "pet.h"

@implementation pet

@synthesize name;
@synthesize type;
@synthesize race;
@synthesize gender;
@synthesize age;
@synthesize string;



-(id)init{
    
    self = [super init];
    
    if(self){
        // extras
    }
    return self;
    
}
+(pet *) print: (pet*) pet1{
	
pet* res = [[pet alloc] init];
    

    
     NSString *mystring= [NSString stringWithFormat:@"Your %@ named %@ is an %@ %@ with %@ years old",pet1.type,pet1.name,pet1.race,pet1.gender, pet1.age];
    res.string = mystring;
    
    return res;
}
@end
