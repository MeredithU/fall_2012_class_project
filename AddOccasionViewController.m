//
//  AddOccasionViewController.m
//  GiftList
//
//  Created by Meredith Underell on 2012-12-04.
//  Copyright (c) 2012 Comp3912. All rights reserved.
//

#import "AddOccasionViewController.h"
#import "OccasionListViewController.h"
#import "AppDelegate.h"

@interface AddOccasionViewController ()

@end

@implementation AddOccasionViewController

@synthesize occasionName;
@synthesize occasionDate;
@synthesize occasionBudget;
@synthesize occasionNotes;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

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


// Done Button

- (IBAction)saveAddingOccasion:(id)sender
{
    // Create a new dictionary in the plist with the information that user inputs
    NSMutableDictionary *newDictionary = [NSMutableDictionary dictionary];
    [newDictionary setValue:self.occasionName.text forKey:@"Name"];
    [newDictionary setValue:self.occasionDate.text forKey:@"Date"];
    [newDictionary setValue:self.occasionBudget.text forKey:@"Budget"];
    [newDictionary setValue:self.occasionNotes.text forKey:@"Notes"];
    
    // Replace the plist with its new array
    NSString* path = [AppDelegate occasionlistPath];
    NSMutableArray *newArray = [NSMutableArray arrayWithContentsOfFile:path];
    [newArray addObject:newDictionary];
    [newArray writeToFile:path atomically:YES];
    
    
    // Go back to OccasionListViewController
    [self.navigationController popViewControllerAnimated:YES];
}

// Cancel Button

- (IBAction)cancelAddingOccasion:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
