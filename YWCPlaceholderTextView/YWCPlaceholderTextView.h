//
//  PlaceholderTextView.h
//  GuangWu
//
//  Created by Eric on 15/10/16.
//  Copyright © 2015年 YangWeiCong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, PlaceholderTextAlignment) {
    
    PlaceholderTextAlignmentLeft,
    PlaceholderTextAlignmentCenter,
    PlaceholderTextAlignmentRight
};

/**
 *  有占位符的TextView
 */

@interface YWCPlaceholderTextView : UITextView

@property (strong, nonatomic) UILabel * placeholderLabel;
@property (copy, nonatomic) IBInspectable NSString * PHText;

@property (strong, nonatomic) UIColor * PHColor;
@property (strong, nonatomic) UIFont * placeholderFont;
@property (assign, nonatomic) PlaceholderTextAlignment placeTextAlignment;



@end
