//
//  AddOccasionViewController.h
//  GiftList
//
//  Created by Meredith Underell on 2012-12-04.
//  Copyright (c) 2012 Comp3912. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddOccasionViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITextField *occasionName;
@property (strong, nonatomic) IBOutlet UITextField *occasionDate;
@property (strong, nonatomic) IBOutlet UITextField *occasionBudget;
@property (strong, nonatomic) IBOutlet UITextField *occasionNotes;

- (IBAction)saveAddingOccasion:(id)sender;

- (IBAction)cancelAddingOccasion:(id)sender;


@end
