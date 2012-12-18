//
//  treeIDControllerViewController.m
//  prospect2
//
//  Created by Noah Blake on 11/26/12.
//
//

#import "treeIDController.h"
#import "treeIDView.h"

@implementation treeIDController

- (id) initWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil
{
	self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
	if (self) {
		// Custom initialization
        
        buttonList = [NSDictionary dictionaryWithObjectsAndKeys:
                      @"CONIFEROUS, NEEDLES", @"none",
                      @"CONIFEROUS, BERRIES", @"none",
                      @"DECIDUOUS", @"none",
                      
                      //coniferous needles leg
                      [NSArray arrayWithObjects:@"NEEDLES SINGLY",@"NEEDLES 2-5", @"DECIDUOUS",nil], @"CONIFEROUS, NEEDLES",
                      
                       [NSArray arrayWithObjects:@"EASILY ROLLED",@"DIFFICULT TO ROLL", nil], @"NEEDLES SINGLY",
                      
                         [NSArray arrayWithObjects:@"CONES OVER 2IN",@"CONES UNDER 2IN", nil], @"EASILY ROLLED",
                      		[NSArray arrayWithObjects:@"BLUNT NEEDLES",@"SHARP NEEDLES", nil], @"CONES OVER 2IN",
                      			[NSArray arrayWithObject: @"NORWAY SPRUCE"], @"BLUNT NEEDLES",
                                [NSArray arrayWithObject: @"COLORADO SPRUCE"], @"SHARP NEEDLES",
                      		[NSArray arrayWithObjects:@"SHARP-TIPPED NEEDLES",@"BLUNT BLUE-GREEN NEEDLES",nil], @"CONES UNDER 2IN",
                         		[NSArray arrayWithObjects:@"SHINY, DARK YELLOW-GREEN NEEDLES",@"BLUE-GREEN OR SILVERY NEEDLES",nil], @"SHARP-TIPPED NEEDLES",
                      				[NSArray arrayWithObject:@"RED SPRUCE"], @"SHINY, DARK YELLOW-GREEN NEEDLES",
                      				[NSArray arrayWithObject:@"WHITE SPRUCE"], @"BLUE-GREEN OR SILVERY NEEDLES",
                      			[NSArray arrayWithObject:@"BLACK SPRUCE"], @"BLUNT BLUE-GREEN NEEDLES",
                      
                        [NSArray arrayWithObjects:@"NEEDLES 5, THIN SCALES",@"NEEDLES 2-3, SPINY CONES", nil], @"NEEDLES 2-5",
                      		[NSArray arrayWithObject:@"EASTERN WHITE PINE"], @"NEEDLES 5, THIN SCALES",
                      		[NSArray arrayWithObjects:@"NEEDLES 2", @"NEEDLES 3", @"NEEDLES 2 AND 3", nil], @"NEEDLES 2-3, SPINY CONES",
                      			[NSArray arrayWithObjects:@"NEEDLES 3-6IN",@"NEEDLES 3/4-4IN", nil], @"NEEDLES 2",
                                	[NSArray arrayWithObjects:@"NEEDLES FLEXIBLE",@"NEEDLES STOUT, TRUNK GRAY-BROWN, SILVER", nil], @"NEEDLES 3-6IN",
                                    	[NSArray arrayWithObject:@"RED PINE"], @"NEEDLES FLEXIBLE",
                                        [NSArray arrayWithObject:@"AUSTRIAN PINE"], @"NEEDLES STOUT, TRUNK GRAY-BROWN, SILVER",
                                    [NSArray arrayWithObjects:@"TWISTED NEEDLES, ORANGE-RED BARK",@"YELLOW-GREEN NEEDLES, LONG-CLOSED CONES", nil], @"NEEDLES 3/4-4IN",
                      					[NSArray arrayWithObject:@"SCOTCH PINE"], @"TWISTED NEEDLES, ORANGE-RED BARK",
                      					[NSArray arrayWithObject:@"SCRUB PINE"], @"YELLOW-GREEN NEEDLES, LONG-CLOSED CONES",
                                [NSArray arrayWithObjects:@"NEEDLES 3-5IN, TWISTED ON TRUNK",@"NEEDLES 8-18IN, 6-10IN CONES",@"NEEDLES 6-9IN, 3-6IN CONES", nil], @"NEEDLES 3",
                      				[NSArray arrayWithObject:@"PITCH PINE"], @"NEEDLES 3-5IN, TWISTED ON TRUNK",
                      				[NSArray arrayWithObject:@"LONGLEAF PINE"], @"NEEDLES 8-18IN, 6-10IN CONES",
                      				[NSArray arrayWithObject:@"LOLBOLLY PINE"], @"NEEDLES 6-9IN, 3-6IN CONES",
                            	[NSArray arrayWithObjects:@"NEEDLES 5-10IN, CONES 3-6IN",@"NEEDLES 9-10IN, CONES 3-6IN",@"NEEDLES 3-5IN, CONES 1.5-2.5IN", nil], @"NEEDLES 2 AND 3",
                      				[NSArray arrayWithObject:@"PONDEROSA PINE"], @"NEEDLES 5-10IN, CONES 3-6IN",
                      				[NSArray arrayWithObject:@"SLASH PINE"], @"NEEDLES 9-10IN, CONES 3-6IN",
                      				[NSArray arrayWithObject:@"SHORTLEAF PINE"], @"NEEDLES 3-5IN, CONES 1.5-2.5IN",
                      nil
                      ];
        
        
      
	}
	return self;
}

/*
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
*/

- (void) loadView
{
    CGRect frame = CGRectMake(0, 0, 320, 480);
    oldView = [[UIView alloc] initWithFrame: frame];
    
    oldView.backgroundColor = [UIColor greenColor];
    
    self.view = oldView;
    buttonInfo = [NSArray arrayWithObjects:
                  @"CONIFEROUS, NEEDLES",
                  @"CONIFEROUS, BERRIES",
                  @"DECIDUOUS",
                  nil
                  ];
   	newView = [[treeIDView alloc] initWithFrame: frame controller: self buttonID: buttonInfo];
    [self.view addSubview: newView];
}

- (void) nextButton: (id) sender
{

    	NSString *title = [sender currentTitle];
    	//NSLog(@"%@", title);
   		oldView = self.view;
        buttonInfo = [buttonList objectForKey: title];
//this NSLog shows that the object isn't easily accessible when it's found within an array
//NSLog(@"%@", [buttonList allKeysForObject: title]);
        CGRect frame = CGRectMake(0, 0, 320, 480);
        [newView removeFromSuperview];
        newView = [[treeIDView alloc] initWithFrame: frame controller: self buttonID: buttonInfo];
        [self.view addSubview: newView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
