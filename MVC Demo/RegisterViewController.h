//
//  RegisterViewController.h
//  MVC Demo
//
//  Created by 差不多先生 on 2021/9/10.
//

#import <UIKit/UIKit.h>

@protocol RegisterDelegate <NSObject>

- (void) returnId:(NSString*) ida andPass:(NSString*) password;

@end
NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : UIViewController
@property (nonatomic, weak) id<RegisterDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
