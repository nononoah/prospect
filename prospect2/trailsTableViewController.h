//
//  prospectViewController.h
//  prospect2
//
//  Created by Noah Blake on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class trailsViewController;

@interface trailsTableViewController : UITableViewController
{
	NSArray *trails;   
    trailsViewController *trailsVC;
}

@end
