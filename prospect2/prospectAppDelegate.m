//
//  prospectAppDelegate.m
//  prospect2
//
//  Created by Noah Blake on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "prospectAppDelegate.h"
#import "trailsTableViewController.h"

@implementation prospectAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

            UIScreen *screen = [UIScreen mainScreen];
            self.window = [[UIWindow alloc] initWithFrame: screen.bounds];
            // Override point for customization after application launch.
            
           
            
            NSArray *controllers = [NSArray arrayWithObjects:
                                    [[trailsTableViewController alloc] initWithStyle: UITableViewStylePlain], 
                                    [[UIViewController alloc] initWithNibName: nil bundle: nil],
                                    [[UIViewController alloc] initWithNibName: nil bundle: nil],
                                    [[UIViewController alloc] initWithNibName: nil bundle: nil],
                                    [[UIViewController alloc] initWithNibName: nil bundle: nil],                                            nil
                                    ];
            
            //Trails
            
            UITableViewController *viewController = [controllers objectAtIndex: 0];
            viewController.title = @"Trails";
            viewController.tabBarItem.image = [UIImage imageNamed: @"TrailsIcon.png"];
            viewController.view = trailsTVC.view;
            viewController.view.backgroundColor = [UIColor whiteColor];
            

            
            //Events
            
            viewController = [controllers objectAtIndex: 1];
            viewController.title = @"Events";
            viewController.tabBarItem.image = [UIImage imageNamed: @"EventsIcon.png"];
            //viewController.view = [[UIImageView alloc] initWithImage: [UIImage imageNamed: @"cotton.png"]];
            viewController.view.contentMode = UIViewContentModeCenter;
            
    		UIWebView *webView = [[UIWebView alloc] initWithFrame: screen.applicationFrame];
			viewController.view = webView;
			webView.scalesPageToFit = YES;
    
			NSURL *webUrl = [NSURL URLWithString: @"http://www.prospectpark.org/calendar"];
			NSData *data = [NSData dataWithContentsOfURL: webUrl];
	
			if (data == nil) {
				NSLog(@"could not load URL %@", webUrl);
				return YES;
			}
			[webView loadData: data MIMEType: @"text/html" textEncodingName: @"NSUTF8StringEncoding" baseURL: webUrl];
            
    		//Nature
    
    		viewController = [controllers objectAtIndex: 2];
    		viewController.title = @"Nature";
    		viewController.tabBarItem.image = [UIImage imageNamed: @"NatureIcon.png"];
    		//viewController.view = [[UIImageView alloc] initWithImage: [UIImage imageNamed: @"cotton.png"]];
    		viewController.view.contentMode = UIViewContentModeCenter;
    
    
   			webView = [[UIWebView alloc] initWithFrame: screen.applicationFrame];
    		viewController.view = webView;
    		webView.scalesPageToFit = YES;
    
    		webUrl = [NSURL URLWithString: @"http://www.prospectpark.org/environment"];
    		data = [NSData dataWithContentsOfURL: webUrl];
		
    		if (data == nil) {
       			NSLog(@"could not load URL %@", webUrl);
        			return YES;
    		}
    		[webView loadData: data MIMEType: @"text/html" textEncodingName: @"NSUTF8StringEncoding" baseURL: webUrl];
	    	
            
            //Visit
    
    		viewController = [controllers objectAtIndex: 3];
		    viewController.title = @"Visit";
		    viewController.tabBarItem.image = [UIImage imageNamed: @"VisitIcon.png"];
		    //viewController.view = [[UIImageView alloc] initWithImage: [UIImage imageNamed: @"cotton.png"]];
		    viewController.view.contentMode = UIViewContentModeCenter;
            
    
    		webView = [[UIWebView alloc] initWithFrame: screen.applicationFrame];
    		viewController.view = webView;
    		webView.scalesPageToFit = YES;
    
    		webUrl = [NSURL URLWithString: @"http://www.prospectpark.org/visit"];
    		data = [NSData dataWithContentsOfURL: webUrl];
    
    		if (data == nil) {
        		NSLog(@"could not load URL %@", webUrl);
        		return YES;
    		}
    		[webView loadData: data MIMEType: @"text/html" textEncodingName: @"NSUTF8StringEncoding" baseURL: webUrl];
    
            
            http://www.prospectpark.org/visit
            
            //Volunteer
            
    		viewController = [controllers objectAtIndex: 4];
    		viewController.title = @"Volunteer";
		    viewController.tabBarItem.image = [UIImage imageNamed: @"VolunteerIcon.png"];
		    viewController.view = [[UIImageView alloc] initWithImage: [UIImage imageNamed: @"cotton.png"]];
		    viewController.view.contentMode = UIViewContentModeCenter;
            
    
    		webView = [[UIWebView alloc] initWithFrame: screen.applicationFrame];
    		viewController.view = webView;
    		webView.scalesPageToFit = YES;
    
    		webUrl = [NSURL URLWithString: @"http://www.prospectpark.org/volunteer"];
    		data = [NSData dataWithContentsOfURL: webUrl];
    
    		if (data == nil) {
        		NSLog(@"could not load URL %@", webUrl);
        		return YES;
    		}
    		[webView loadData: data MIMEType: @"text/html" textEncodingName: @"NSUTF8StringEncoding" baseURL: webUrl];
    
            
                       
            UITabBarController *tabBarController = [[UITabBarController alloc] init];
            self.window.rootViewController = tabBarController;
            tabBarController.viewControllers = controllers;
            tabBarController.delegate = self;
            [self.window makeKeyAndVisible];
            return YES;

}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
