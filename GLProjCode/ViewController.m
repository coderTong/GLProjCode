//
//  ViewController.m
//  GLProjCode
//
//  Created by codew on 2017/8/11.
//  Copyright © 2017年 codew. All rights reserved.
//

#import "ViewController.h"

// 1. 引用头文件
#import <GLSDKCode.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *renderView;

// 2. 声明一个 mediaPlayer 对象
@property (nonatomic, strong) CTMediaPlayer * mediaPlayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 4. 调用 mediaPlayer get 方法, 实例化一个 mediaPlayer 对象
    [self mediaPlayer];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playBtnClicj:(id)sender {
    // 5. 触发播放按钮时, 调用 mediaPlayer play 方法, 开始视频播放
    [self.mediaPlayer play];
}

// 3. 创建 get set 方法
#pragma mark get set
// 3. 编写 mediaPlayer 的 get 方法, 类似构造方法
- (CTMediaPlayer *)mediaPlayer
{
    if (!_mediaPlayer) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"allTheWay" ofType:@"mp4"];
        NSURL *url = [[NSURL alloc] initFileURLWithPath:path];
        _mediaPlayer = [[CTMediaPlayer alloc] initWithRenderView:self.renderView mediaUrl:url];
    }
    return _mediaPlayer;
}

@end
