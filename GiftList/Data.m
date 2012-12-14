//
//  Data.m
//  GiftList
//
//  Created by Meredith Underell on 2012-12-12.
//  Copyright (c) 2012 Comp3912. All rights reserved.
//

#import "Data.h"

@implementation Data
-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.budget = [aDecoder decodeObjectForKey:@"budget"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_budget forKey:@"budget"];
    
}

@end
