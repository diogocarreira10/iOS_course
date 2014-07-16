//
//  pet.h
//  PetCare
//
//  Created by Diogo Carreira on 06/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface pet : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *type;
@property (nonatomic) NSString *race;
@property (nonatomic) NSString *gender;
@property (nonatomic) NSString *age;
@property (nonatomic) NSString *string;


-(id)init;

+(pet *) print: (pet*) pet1;
@end
