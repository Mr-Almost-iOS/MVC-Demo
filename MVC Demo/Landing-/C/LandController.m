//
//  LandController.m
//  MVC Demo
//
//  Created by 差不多先生 on 2021/9/7.
//

#import "LandController.h"
#import "LandView.h"
#import "LandModel.h"
#import "RegisterViewController.h"
@interface LandController ()
@property (nonatomic, strong) LandView* landView;
@property (nonatomic, strong) LandModel* landModel;
@end

@implementation LandController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _landView = [[LandView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_landView];
    _landModel = [[LandModel alloc] init];
    [_landModel landModelInit];
    [_landView.landButton addTarget:self action:@selector(SignButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [_landView.registerButton addTarget:self action:@selector(registerPress) forControlEvents:UIControlEventTouchUpInside];
}
- (void) SignButtonPress {
    if ([_landView.idTextField.text isEqualToString:@""] || [_landView.passwordTextField.text isEqualToString:@""]) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"请完整输入" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确认"  style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:sureAction];
        [self presentViewController:alertController animated:YES completion:nil];
    } else if ([_landView.idTextField.text isEqual:_landModel.idString] && [_landView.passwordTextField.text isEqual:_landModel.passwordString]) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"登录成功" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确认"  style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:sureAction];
        [self presentViewController:alertController animated:YES completion:nil];
    } else {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"账号或密码错误" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确认"  style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:sureAction];
        [self presentViewController:alertController animated:YES completion:nil];
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_landView.idTextField resignFirstResponder];
    [_landView.passwordTextField resignFirstResponder];
    
}
- (void)registerPress {
    RegisterViewController* viewController = [[RegisterViewController alloc] init];
    viewController.modalPresentationStyle = UIModalPresentationFullScreen;
    viewController.delegate = self;
    [self presentViewController:viewController animated:YES completion:nil];
}
- (void)returnId:(NSString *)ida andPass:(NSString *)password {
    _landModel.idString = ida;
    _landModel.passwordString = password;
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
