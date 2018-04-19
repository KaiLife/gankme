//
//  BaseRequestAPI.m
//  MiAiApp
//
//  Created by 徐阳 on 2017/6/28.
//  Copyright © 2017年 徐阳. All rights reserved.
//

#import "BaseRequestAPI.h"
#import <YYModel.h>
#import "AppDelegate+AppService.h"
#import "UIViewController+AlertViewAndActionSheet.h"

@implementation BaseRequestAPI

-(instancetype)init{
    self = [super init];
    return self;
}

#pragma mark ————— 自定义数据 —————

- (NSString *)message {
    if (self.error) {
        return self.error.localizedDescription;
    }
    NSString *message = [NSString stringWithFormat:@"%@",self.result[@"codemsg"]];
    return message;
}
- (NSString *)code {
    NSString *code = [NSString stringWithFormat:@"%@",self.result[@"code"]];
    return code;
}
- (BOOL)isSuccess {
    
    NSString *code = [self code];
    
    BOOL isSuccess = NO;
    
    if ([code isEqualToString:@"0"]) {
        isSuccess = YES;
    } else if ([code isEqualToString:@"1023"]) {
        //账号被顶掉
        [[kAppDelegate getCurrentUIVC] AlertWithTitle:nil message:self.message andOthers:@[@"确定"] animated:YES action:nil];
        KPostNotification(KNotificationOnKick, nil);
    }else if([code isEqualToString:@"1039"]){
        //token过期
        [[kAppDelegate getCurrentUIVC] AlertWithTitle:nil message:self.message andOthers:@[@"确定"] animated:YES action:nil];
        KPostNotification(KNotificationOnKick, nil);
    }
    
    return  isSuccess;
    
}

#pragma mark ————— 定义返回数据格式，若是加密要用HTTP接受 —————
-(YTKResponseSerializerType)responseSerializerType {
    return YTKResponseSerializerTypeJSON;
}
#pragma mark ————— 默认请求方式 POST —————
-(YTKRequestMethod)requestMethod{
    return YTKRequestMethodPOST;
}
#pragma mark ————— 默认请求体是自身转json —————
-(id)requestArgument{
    return [self yy_modelToJSONObject];
}
#pragma mark ————— 请求失败过滤器 —————
-(void)requestFailedFilter{
    //失败处理器
}
#pragma mark ————— 请求成功过滤器 —————
-(void)requestCompleteFilter{
    self.result = self.responseJSONObject;
}
@end
