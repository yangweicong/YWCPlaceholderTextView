//
//  PlaceholderTextView.m
//  GuangWu
//
//  Created by Eric on 15/10/16.
//  Copyright © 2015年 YangWeiCong. All rights reserved.
//

#import "YWCPlaceholderTextView.h"

@interface YWCPlaceholderTextView ()<UITextViewDelegate>



@end

@implementation YWCPlaceholderTextView


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    _placeholderLabel = [[UILabel alloc]init];
    _placeholderLabel.textColor = self.textColor;
    _placeholderLabel.font = self.font;
    _placeholderLabel.frame = CGRectMake(8, 0, self.frame.size.width, 30);
    _placeholderLabel.userInteractionEnabled = YES;
    [self addSubview:_placeholderLabel];
    
//    self.delegate = self;         //(此处因项目需要,先注释)
}

- (void)setPHColor:(UIColor *)PHColor
{
    if (_PHColor != PHColor) {
        _PHColor = PHColor;
        _placeholderLabel.textColor = PHColor;
    }
}

- (void)setPHText:(NSString *)PHText
{
    if (_PHText != PHText) {
        _PHText = PHText;
        _placeholderLabel.text = PHText;
    }
}

- (void)setPlaceholderFont:(UIFont *)placeholderFont
{
    if (_placeholderFont != placeholderFont) {
        _placeholderFont = placeholderFont;
        _placeholderLabel.font = placeholderFont;
    }
}

- (void)setPlaceTextAlignment:(PlaceholderTextAlignment)placeTextAlignment
{
    switch (placeTextAlignment) {
        case PlaceholderTextAlignmentLeft:
        {
            _placeholderLabel.frame = CGRectMake(0, 0, self.frame.size.width, 30);
        }
            break;
        case PlaceholderTextAlignmentCenter:
        {
            _placeholderLabel.center = self.center;
        }
            break;
        case PlaceholderTextAlignmentRight:
        {
            _placeholderLabel.frame = CGRectMake(self.frame.size.width, 0, self.frame.size.width, 30);
            _placeholderLabel.textAlignment = NSTextAlignmentRight;
        }
            break;
        default:
            break;
    }
}

#pragma mark - UITextView Delegate

- (void)textViewDidEndEditing:(UITextView *)textView
{
    if (textView.text.length > 0) {
        _placeholderLabel.hidden = YES;
    }else{
        _placeholderLabel.hidden = NO;
    }
}

- (void)textViewDidChange:(UITextView *)textView
{
    if (textView.text.length > 0) {
        _placeholderLabel.hidden = YES;
    }else{
        _placeholderLabel.hidden = NO;
    }
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//    // Drawing code
//}


@end
