//
//  trailsTableViewController.m
//  prospect2
//
//  Created by Noah Blake on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "trailsTableViewController.h"
#import "trailsViewController.h"
#import "prospectAppDelegate.h"


@implementation trailsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle: style];
	if (self) {
		// Custom initialization
        trails = [NSArray arrayWithObjects:
                  @"Loop",
                  @"East Loop and Center Drive",
                  @"West Loop and Center Drive",
                  @"The Grassy Loop",
                  @"Long Meadow",
                  @"Lakeside",
                  @"Above Flatbush",
                  @"Bandshell, Audobon, Zoo",
                  @"Midwood",
                  @"Peninsula",
                  @"Lullwater",
                  @"Waterfall",
                  nil
                  ];
                  
		self.tableView.bounces = YES;
		self.tableView.scrollsToTop = YES;
		self.tableView.decelerationRate = UIScrollViewDecelerationRateNormal;
        self.tableView.backgroundColor = [UIColor grayColor];
        self.tableView.tableFooterView = [UIView new];
		
	}
	return self;
}


#pragma mark - View lifecycle

- (void) viewDidLoad
{
	[super viewDidLoad];

    
	// Uncomment the following line to preserve selection between presentations.
	// self.clearsSelectionOnViewWillAppear = NO;
    
	// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
	// self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) viewDidUnload
{
	[super viewDidUnload];
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void) viewWillAppear: (BOOL) animated
{
	[super viewWillAppear: animated];
}

- (void) viewDidAppear: (BOOL) animated
{
	[super viewDidAppear:animated];
}

- (void) viewWillDisappear: (BOOL) animated
{
	[super viewWillDisappear: animated];
}

- (void) viewDidDisappear: (BOOL) animated
{
	[super viewDidDisappear: animated];
}

- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) interfaceOrientation
{
	// Return YES for supported orientations
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

#pragma mark - Table view data source

- (NSInteger) numberOfSectionsInTableView: (UITableView *) tableView
{
	// Return the number of sections.
	return 3;
}

- (NSInteger) tableView: (UITableView *) tableView numberOfRowsInSection: (NSInteger) section
{
	switch (section){
            case 0:                                 
            	return 3;
            	break;
            case 1:
            	return 4;
                break;
            case 2:
            	return 4;
                break;
    }
    return 0;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	switch (section){
        case 0:
            return @"Running and Cycling";
            break;
        case 1:
            return @"Strolling";
            break;
        case 2:
            return @"Hiking";
            break;
    }
    return @"";
}

/* For indexing if necessary
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
	NSMutableArray *index = [[NSMutableArray alloc] initWithObjects:@"A",@"B",@"C",@"D",nil];
	return index;
}
*/

- (UITableViewCell *) tableView: (UITableView *) tableView cellForRowAtIndexPath: (NSIndexPath *) indexPath
{
	static NSString *identifier = @"trails";
    
    
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: identifier];
	while (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: identifier];
	}

	// Configure the cell...
	//The .textLabel and .detailTextLabel properties are UILabels.
	//The .imageView property is a UIImage.
    if (indexPath.section == 0){
        NSInteger correctCell = indexPath.row;
        cell.textLabel.text = [trails objectAtIndex: correctCell];
    }
    	else if (indexPath.section == 1){
        NSInteger correctCell = indexPath.row + 3;
        cell.textLabel.text = [trails objectAtIndex: correctCell];
        }
    else{
        NSInteger correctCell = indexPath.row  + 7;
        cell.textLabel.text = [trails objectAtIndex: correctCell];
    }    

	NSString *fileName = [cell.textLabel.text stringByAppendingString: @".png"];
	cell.imageView.image = [UIImage imageNamed: fileName];	//nil if .jpg file doesn't exist
	return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL) tableView: (UITableView *) tableView canEditRowAtIndexPath: (NSIndexPath *) indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void) tableView: (UITableView *) tableView commitEditingStyle: (UITableViewCellEditingStyle) editingStyle forRowAtIndexPath: (NSIndexPath *) indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths: [NSArray arrayWithObject:indexPath] withRowAnimationUITableViewRowAnimationFade];
 }   
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void) tableView: (UITableView *) tableView moveRowAtIndexPath: (NSIndexPath *) fromIndexPath toIndexPath:(NSIndexPath *) toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL) tableView: (UITableView *) tableView canMoveRowAtIndexPath: (NSIndexPath *) indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath
{

    //prospectAppDelegate *applicationDelegate = [UIApplication sharedApplication].delegate;
	
    //this is the spot where I can pass the trailViewController information
    //NSString *information = [applicationDelegate.information objectForKey: self.title];
	
    NSInteger correctCell = 0;
    
    if (indexPath.section == 0){
        correctCell = indexPath.row;
    }
    else if (indexPath.section == 1){
        correctCell = indexPath.row + 3;
    }
    else{
        correctCell = indexPath.row + 7;
    }
    

    trailsVC = [[trailsViewController alloc] initWithTitle: [trails objectAtIndex: correctCell] information: @"hi"];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController: trailsVC];
    
	[self presentModalViewController: navigationController animated: YES];
}
@end
