//
//  treeIDView.h
//  prospect2
//
//  Created by Noah Blake on 11/26/12.
//
//

#import <UIKit/UIKit.h>
@class treeIDController;

@interface treeIDView : UIView
{
    UIButton *button;
   
}
- (id) initWithFrame: (CGRect) frame controller: (treeIDController *) treeIDController buttonID: (NSArray *) buttonID;


@end
