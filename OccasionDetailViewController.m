//
//  OccasionDetailViewController.m
//  GiftList
//
//  Created by Meredith Underell on 2012-12-04.
//  Copyright (c) 2012 Comp3912. All rights reserved.
//

#import "OccasionDetailViewController.h"
#import "AppDelegate.h"

@interface OccasionDetailViewController ()

@end

@implementation OccasionDetailViewController

@synthesize occasionData = _occasionData;

@synthesize occasionNameOnDetailView;
@synthesize occasionDateOnDetailView;
@synthesize occasionBudgetOnDetailView;
@synthesize occasionNotesOnDetailView;

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
    
    occasionNameOnDetailView.text = [_occasionData objectForKey:@"Name"];
    occasionDateOnDetailView.text = [_occasionData objectForKey:@"Date"];
    occasionBudgetOnDetailView.text = [_occasionData objectForKey:@"Budget"];
    occasionNotesOnDetailView.text = [_occasionData objectForKey:@"Notes"];

    // Edit Button
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
