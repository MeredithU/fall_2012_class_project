//
//  OccasionDetailViewController.h
//  GiftList
//
//  Created by Meredith Underell on 2012-12-04.
//  Copyright (c) 2012 Comp3912. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OccasionDetailViewController : UITableViewController

@property (strong, nonatomic) NSDictionary *occasionData;

@property (strong, nonatomic) IBOutlet UILabel *occasionNameOnDetailView;
@property (strong, nonatomic) IBOutlet UILabel *occasionDateOnDetailView;
@property (strong, nonatomic) IBOutlet UILabel *occasionBudgetOnDetailView;
@property (strong, nonatomic) IBOutlet UILabel *occasionNotesOnDetailView;

@end
