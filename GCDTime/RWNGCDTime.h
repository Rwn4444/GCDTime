//
//  RWNGCDTime.h
//  GCDTime
//
//  Created by shenhua on 2018/9/3.
//  Copyright © 2018年 RWN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RWNGCDTime : NSObject


/**
 创建一个定时器

 @param task 任务
 @param start 几秒后执行
 @param interval 时间间隔
 @param async 同步异步
 @param repate 是否重复
 @return 定时器标识
 */
+(NSString *)RWNTimeDoTask:(void(^)(void))task
           startTime:(NSTimeInterval)start
           interval:(NSTimeInterval)interval
           async:(BOOL)async
           repate:(BOOL)repate;


/**
  创建一个定时器

 @param task 任务
 @param interval 时间间隔
 @return 定时器标识
 */
+(NSString *)RWNTimeDoTask:(void(^)(void))task
                  interval:(NSTimeInterval)interval;

/**
  取消定时器通过标识

 @param identifier 定时器标识
 */
+(void)cancaleTaskWithIdentifier:(NSString *)identifier;

@end
