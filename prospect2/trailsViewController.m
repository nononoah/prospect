//
//  trailsViewController.m
//  prospect2
//
//  Created by Noah Blake on 8/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "trailsViewController.h"
#import "trailsView.h"

@implementation trailsViewController

- (id) initWithTitle: (NSString *) title information: (NSString *) i {
	self = [super initWithNibName: nil bundle: nil];
	if (self) {
		// Custom initialization
		self.title = title;
		
		self.navigationItem.leftBarButtonItem =
		[[UIBarButtonItem alloc] initWithTitle: @"Back"
                                         style: UIBarButtonItemStylePlain
                                        target: self
                                        action: @selector(back)
         ];
		information = i;
	}
	return self;
}

- (void) back {
	[self dismissModalViewControllerAnimated: YES];
}

- (void) didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[trailsView alloc] initWithFrame: frame information: @"ho ho"];
}


/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void) viewDidLoad
 {
 [super viewDidLoad];
 }
 */

- (void) viewDidUnload
{
	[super viewDidUnload];
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) interfaceOrientation
{
	// Return YES for supported orientations
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

@end
