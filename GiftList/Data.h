//
//  Data.h
//  GiftList
//
//  Created by Meredith Underell on 2012-12-12.
//  Copyright (c) 2012 Comp3912. All rights reserved.
//

#import <Foundation/Foundation.h>

@class occasion;

@interface Data : NSObject <NSCoding>

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *date;
@property (strong, nonatomic) NSString *budget;
@property (strong, nonatomic) NSString *notes;



@end
