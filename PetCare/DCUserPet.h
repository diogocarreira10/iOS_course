//
//  DCUserPet.h
//  PetCare
//
//  Created by Diogo Carreira on 17/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCUserPet : NSObject <NSCoding>

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* race;
@property (nonatomic) NSString* type;
@property (nonatomic) UIImage *cover;
@property (nonatomic) NSDate *data;

@end