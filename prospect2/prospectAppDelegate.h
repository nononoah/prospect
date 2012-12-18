//
//  prospectAppDelegate.h
//  prospect2
//
//  Created by Noah Blake on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class trailsTableViewController;
@class treeIDController;

@interface prospectAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    trailsTableViewController *trailsTVC;
    treeIDController *treeIDVC;
}

@property (strong, nonatomic) UIWindow *window;

@end
