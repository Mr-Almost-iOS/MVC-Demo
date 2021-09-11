//
//  LandModel.h
//  MVC Demo
//
//  Created by 差不多先生 on 2021/9/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LandModel : NSObject
@property (nonatomic, strong) NSString* idString;
@property (nonatomic, strong) NSString* passwordString;
- (void) landModelInit;
@end

NS_ASSUME_NONNULL_END
