//
//  treeIDView.m
//  prospect2
//
//  Created by Noah Blake on 11/26/12.
//
//

#import "treeIDView.h"

@implementation treeIDView

- (id) initWithFrame: (CGRect) frame controller: (treeIDController *) treeIDController buttonID: (NSArray *) buttonID
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor whiteColor];
        
    	
        
        NSInteger buttonCount = buttonID.count;       
        NSInteger i = 0;
        
   
        while (i < buttonCount)
            {
                button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
                NSString *title = [buttonID objectAtIndex:i];
                [button setTitle: title forState: UIControlStateNormal];
                //s can be used to size the button, eventually it will need to count the characters in the array to determine height
                CGSize s = [title sizeWithFont: button.titleLabel.font];
                button.frame = CGRectMake(self.frame.size.width / 2 - (s.width + 20) / 2, self.frame.size.height / 5 + 100 * i, s.width + 20, s.height + 10);
                [self addSubview: button];
                if (buttonCount != 1)
                {
                    [button	 addTarget: treeIDController
                                action: @selector(nextButton:)
                      forControlEvents: UIControlEventTouchUpInside];
                }
                
                else
                {
                    [button	 addTarget: treeIDController
                                action: @selector(loadView)
                      forControlEvents: UIControlEventTouchUpInside];
                }
  
                i++;
            }

        
/*
        NSLog(@"%i", buttonArray.count);
        NSLog(@"%@", [[buttonArray objectAtIndex: 0] currentTitle]);
        NSLog(@"%@", [[buttonArray objectAtIndex: 1] currentTitle]);
        NSLog(@"%@", [[buttonArray objectAtIndex: 2] currentTitle]);
  */      
   
         
	}
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
