//
//  DCUserPet.m
//  PetCare
//
//  Created by Diogo Carreira on 17/07/14.
//  Copyright (c) 2014 Diogo Carreira. All rights reserved.
//

#import "DCUserPet.h"

static NSString* nameKey = @"DCUnameKey";
static NSString* typeKey = @"DCUtypeKey";
static NSString* raceKey = @"DCUraceKey";
static NSString* genderKey = @"DCUgenderKey";
static NSString* ageKey = @"DCUageKey";


@implementation DCUserPet


- (id) initWithCoder:(NSCoder*) aDecoder{
    
    self = [super init];
    
    self.name = [aDecoder decodeObjectForKey:nameKey];
    self.type = [aDecoder decodeObjectForKey:typeKey];
    self.race = [aDecoder decodeObjectForKey:raceKey];
    self.gender = [aDecoder decodeObjectForKey:genderKey];
    self.age = [aDecoder decodeObjectForKey:ageKey];
    
    return self;
}

- (void) encodeWithCoder:(NSCoder *)aCoder{
    
    [aCoder encodeObject:self.name forKey:nameKey];
    [aCoder encodeObject:self.type forKey:typeKey];
    [aCoder encodeObject:self.race forKey:raceKey];
    [aCoder encodeObject:self.gender forKey:genderKey];
    [aCoder encodeObject:self.age forKey:ageKey];
    
}

@end
