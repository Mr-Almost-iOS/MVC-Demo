//
//  RegisterModel.h
//  MVC Demo
//
//  Created by 差不多先生 on 2021/9/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisterModel : NSObject
@property (nonatomic, strong) NSMutableString* idString;
@property (nonatomic, strong) NSMutableString* passwordString;
- (void) registerModelInit;
@end

NS_ASSUME_NONNULL_END
