//
//  ViewController.m
//  GLProjCode
//
//  Created by codew on 2017/8/11.
//  Copyright © 2017年 codew. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *renderView;

@property (nonatomic, strong) CTMediaPlayer * mediaPlayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self mediaPlayer];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playBtnClicj:(id)sender {
    [self.mediaPlayer play];
}

#pragma mark get set

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
