//
//  LandView.m
//  MVC Demo
//
//  Created by 差不多先生 on 2021/9/7.
//

#import "LandView.h"

@implementation LandView
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor orangeColor];
    _idTextField = [[UITextField alloc] init];
    _idTextField.frame = CGRectMake(80, 150, 250, 40);
    _idTextField.backgroundColor = [UIColor whiteColor];
    [self addSubview:_idTextField];
    _idTextField.placeholder = @"please input your id";
    _passwordTextField = [[UITextField alloc] init];
    _passwordTextField.frame = CGRectMake(80, 250, 250, 40);
    _passwordTextField.placeholder = @"please input your password";
    _passwordTextField.backgroundColor = [UIColor whiteColor];
    _passwordTextField.secureTextEntry = YES;
    [self addSubview:_passwordTextField];
    _landButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_landButton setTitle:@"Land" forState:UIControlStateNormal];
    _landButton.frame = CGRectMake(120, 350, 70, 30);
    _registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_registerButton setTitle:@"register" forState:UIControlStateNormal];
    _registerButton.frame = CGRectMake(210, 350, 70, 30);
    [self addSubview:_landButton];
    [self addSubview:_registerButton];
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
