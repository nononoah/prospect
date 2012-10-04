//
//  trailsView.m
//  prospect2
//
//  Created by Noah Blake on 8/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//



#import "trailsView.h"

@implementation trailsView

/*
 - (id) initWithFrame: (CGRect) frame
 {
 self = [super initWithFrame: frame];
 if (self) {
 // Initialization code
 }
 return self;
 }
 */

- (id) initWithFrame: (CGRect) frame information: (NSString *) information
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor orangeColor];
		self.font = [UIFont systemFontOfSize: 24];
		self.text = information;
		self.editable = NO;
	}
	return self;
}



/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code
 }
 */

@end