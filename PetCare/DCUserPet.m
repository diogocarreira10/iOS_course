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



@implementation DCUserPet


- (id) initWithCoder:(NSCoder*) aDecoder{
    
    self = [super init];
    
    self.name = [aDecoder decodeObjectForKey:nameKey];
    self.type = [aDecoder decodeObjectForKey:typeKey];
    self.race = [aDecoder decodeObjectForKey:raceKey];
    
    NSData *imageData = [aDecoder decodeObjectForKey:@"DCImagem"];
    if(imageData){
        self.cover = [UIImage imageWithData:imageData];
        
    }

    
    return self;
}

- (void) encodeWithCoder:(NSCoder *)aCoder{
    
    [aCoder encodeObject:self.name forKey:nameKey];
    [aCoder encodeObject:self.type forKey:typeKey];
    [aCoder encodeObject:self.race forKey:raceKey];

    
    NSData *imageData = UIImagePNGRepresentation(self.cover);
    [aCoder encodeObject:imageData forKey:@"DCImagem"];
    
}

@end
