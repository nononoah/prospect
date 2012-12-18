//
//  trailsViewController.h
//  prospect2
//
//  Created by Noah Blake on 8/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface trailsViewController: UIViewController {
	NSInteger information;
    NSArray *trailInfo;
}

- (id) initWithTitle: (NSString *) title information: (NSInteger) i;
@end