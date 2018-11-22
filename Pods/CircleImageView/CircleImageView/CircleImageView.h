//
//  CircleImageView.h
//  CircleImageView
//
//  Created by César Vilera on 8/26/15.
//  Copyright (c) 2015 18Feats. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleImageView : UIImageView
- (id)initWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor borderWidth:(float)borderWidth;
-(void)setTextViewWithText:(NSString *)text frame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor textColor:(UIColor *)textColor font:(UIFont *)font;
-(void)setTopText:(NSString *)text backgroundColor:(UIColor *)backgroundColor textColor:(UIColor *)textColor font:(UIFont *)font;
-(void)setBottomText:(NSString *)text backgroundColor:(UIColor *)backgroundColor textColor:(UIColor *)textColor font:(UIFont *)font;
-(void)centerViewHorizontally: (UIView *)view;
-(void)centerViewVertically: (UIView *)view;
-(void)addCenterView:(UIView *)view;

@end
