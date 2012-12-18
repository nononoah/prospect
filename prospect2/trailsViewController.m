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

- (id) initWithTitle: (NSString *) title information: (NSInteger) i {
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
        
        NSArray *mileageInfo = [NSArray arrayWithObjects:
                                @"3.36mi",
                                @"2.44mi",
                                @"2.06mi",
                                @"3.71mi",
                                @".742mi",
                                @"empty",
                                @"empty",
                                @"empty",
                                @"empty",
                                @"empty",
                                @"empty",
                                @"empty",
                                nil
                                ];
        
        NSArray *notesInfo = [NSArray arrayWithObjects:
                                   @"Prospect Park Lake, views of Long Meadow, varied elevation",
                                   @"The Neathermead, glimpse of the Zoo, generally downhill",
                                   @"Prospect Park Lake, Concert Grove, mild course",
                                   @"A more intimate Loop, scurrying robins, horses!",
                                   @"Dogs galore, picnic grounds, glorious grass",
                                   @"empty",
                                   @"empty",
                                   @"empty",
                                   @"empty",
                                   @"empty",
                                   @"empty",
                                   @"empty",
                                   nil
                                   ];
        
        NSArray *descriptionInfo = [NSArray arrayWithObjects:
                                    @"An ideal place for running and cycling, the Loop is Prospect Park's best-used trail. Pedestrians are encouraged to follow the lane assignments that are clearly marked throughout the park, and to show caution when crossing through the outer two lanes, which are dedicated to bike and car (during rush hours) use. Cyclists are advised to ride the loop counter-clockwise.",
                                    @"For those who need a day off from the rigor of the Loop, this abbreviated jaunt offers a nice alternative. Even though the route includes a significant incline at the northeast corner of the park, it's generally downhill, and offers a bucolic respite in the half-mile of Center Drive it includes. Cyclists and pedestrians should be wary of cars on Center Drive, as both the police and park employees drive through it regularly. ",
                                    @"The East Loop and Center Drive route is the closest Prospect Park comes to a track course. It's relatively flat, with subtle variations in incline. Many run this course in the clockwise direction, though it's advisable to do so cautiously, as the general flow of traffic makes its way counter-clockwise. Be sure not to miss the Concert Grove, a singular building that plays host to a multitude of parties.",
                                    @"The twists and bends of the dirt path that roughly traces The Loop add up, making this course the park's lengthiest. Some of the aforementioned \"dirt path\" is actually part of the park's bridle path, where pedestrians must yield to those on horseback. Beware: the course is susceptible to flooding, and is often lined with horse dung. All in all, these do nothing to detract from this excellent track.",
                                    @"The Long Meadow makes for a tranquil stroll on sunny and snowy days alike. Like Sheep Meadow in Central Park, it fills with readers, picnickers, landscapists, and ball players at the slightest suggestion of good weather. Year-round, dog owners can be found in the early morning, allowing their pets a jolly frolic before the workday begins. The route around the Meadow is in good repair and is suitable for jogging.",
                                    @"empty",
                                    @"empty",
                                    @"empty",
                                    @"empty",
                                    @"empty",
                                    @"empty",
                                    @"empty",
                                    nil
                                    ];
        
        NSString *mileage = [mileageInfo objectAtIndex: information];
        NSString *notes = [notesInfo objectAtIndex: information];
        NSString *description = [descriptionInfo objectAtIndex: information];
        
        
        trailInfo = [NSArray arrayWithObjects:
        mileage,
        notes,
        description,
        nil
        ];
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
	self.view = [[trailsView alloc] initWithFrame: frame information: trailInfo mapName: self.title];
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
