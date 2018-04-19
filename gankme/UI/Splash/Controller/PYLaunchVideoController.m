//
//  PYLaunchVideoController.m
//  gankme
//
//  Created by 童欣凯 on 2018/3/21.
//  Copyright © 2018年 com.tan66. All rights reserved.
//

#import "PYLaunchVideoController.h"
#import <MediaPlayer/MPMoviePlayerController.h>

@interface PYLaunchVideoController ()

/** 视频播放器 */
@property (nonatomic, strong) MPMoviePlayerController *moviePlayerController;

@end

@implementation PYLaunchVideoController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 添加视频播放器
    NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
    NSString *videoPath = [resourcePath stringByAppendingPathComponent:@"Launch.mov"];
    NSURL *videoURL = [NSURL fileURLWithPath:videoPath];
    MPMoviePlayerController *moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:videoURL];
    moviePlayerController.view.frame = self.view.bounds;
    moviePlayerController.controlStyle = MPMovieControlStyleNone;
    [self.view addSubview:moviePlayerController.view];
    self.moviePlayerController = moviePlayerController;
    // 开始播放
    [moviePlayerController play];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
