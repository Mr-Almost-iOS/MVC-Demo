//
//  RegisterViewController.m
//  MVC Demo
//
//  Created by 差不多先生 on 2021/9/10.
//

#import "RegisterViewController.h"
#import "RegisterView.h"
#import "RegisterModel.h"
@interface RegisterViewController ()
@property (nonatomic, strong) RegisterView* registerView;
@property (nonatomic, strong) RegisterModel* registerModel;
@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _registerView = [[RegisterView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    [self.view addSubview:_registerView];
    _registerModel = [[RegisterModel alloc] init];
}
- (void) PressChange {
    if ([_registerView.idTextField.text isEqual:@""] == NO && [_registerView.passwordTextField.text isEqual:_registerView.passwordSecondTextField.text]) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"注册成功" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确认"  style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:sureAction];
        [self presentViewController:alertController animated:YES completion:nil];
        [_delegate returnId:_registerView.idTextField.text andPass:_registerView.passwordSecondTextField.text];
    } else {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"注册失败" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确认"  style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:sureAction];
        [self presentViewController:alertController animated:YES completion:nil];
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
