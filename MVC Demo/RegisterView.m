//
//  RegisterView.m
//  MVC Demo
//
//  Created by 差不多先生 on 2021/9/10.
//

#import "RegisterView.h"

@implementation RegisterView
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
    _passwordSecondTextField = [[UITextField alloc] init];
    _passwordSecondTextField.frame = CGRectMake(80, 350, 250, 40);
    _passwordSecondTextField.placeholder = @"input your password again";
    _passwordSecondTextField.backgroundColor = [UIColor whiteColor];
    _passwordSecondTextField.secureTextEntry = YES;
    [self addSubview:_passwordSecondTextField];
    _confirmButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _confirmButton.frame = CGRectMake(160, 420, 100, 30);
    
    [_confirmButton setTitle:@"Confirm" forState:UIControlStateNormal];
    
    [self addSubview:_confirmButton];
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
