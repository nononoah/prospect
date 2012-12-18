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

- (id) initWithFrame: (CGRect) frame information: (NSArray *) information mapName: (NSString *) mapName;
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
       
        self.scrollEnabled = YES;
        NSLog(@"I've received the array %@", [information objectAtIndex: 0]);
		//self.backgroundColor = [UIColor orangeColor];
        
        
        NSString *fileName = [mapName stringByAppendingString: @"1.png"];
        UIImageView *map = [[UIImageView alloc] initWithImage: [UIImage imageNamed: fileName]];
        NSInteger bumpDown = map.frame.size.height;
        NSLog(@"%i", bumpDown);
        
        UIWebView *text = [[UIWebView alloc] initWithFrame: CGRectMake(0, bumpDown, frame.size.width, frame.size.height)];
		//text.font = [UIFont systemFontOfSize: 16];
		//text.text = [NSString stringWithFormat: @"Mileage: %@ \nNotables: %@ \nDescription: %@ \n",[information objectAtIndex: 0], [information objectAtIndex: 1], [information objectAtIndex: 2]];
		//text.editable = NO;
        
        NSLog(@"text height %f", text.frame.size.height);
        
       	CGFloat totalHeight = bumpDown + text.frame.size.height /2;
        NSLog(@"total height %f", totalHeight);
        
        
        NSString *html = [NSString stringWithFormat:
                          @"<HTML>"
                          "<HEAD>"
                          "<META NAME = \"viewport\" CONTENT = \"width = device-width\">"
                          "<STYLE TYPE = \"text/css\">"
                          "</STYLE>"
                          "</HEAD>"
                          
                          "<BODY STYLE = \"background-color: white; margin: 0px;\">"
                          
                          "<p>"
                          "<b>Mileage:</b> %@"
                          "</p>"
                          
                          "<p>"
                          "<b>Notables:</b> %@"
                          "</p>"
                          
                          "<p>"
                          "<b>Description:</b> %@"
                          "</p>"
                          ""
                          "</BODY>"
                          "</HTML>", [information objectAtIndex: 0], [information objectAtIndex: 1], [information objectAtIndex: 2]];
        
		[text loadHTMLString: html baseURL: nil];
      
        
        
        
        [self setContentSize: CGSizeMake(320, 765)];
        [self addSubview: map];
        [self addSubview: text];
        
        //[view addSubview:text];
        //[self addSubview:view];

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