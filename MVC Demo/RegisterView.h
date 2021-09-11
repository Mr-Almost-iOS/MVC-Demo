//
//  RegisterView.h
//  MVC Demo
//
//  Created by 差不多先生 on 2021/9/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisterView : UIView
@property (nonatomic, strong) UITextField* idTextField;
@property (nonatomic, strong) UITextField* passwordTextField;
@property (nonatomic, strong) UITextField* passwordSecondTextField;
@property (nonatomic, strong) UIButton* confirmButton;
@end

NS_ASSUME_NONNULL_END
