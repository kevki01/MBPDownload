//
//  ViewController.m
//  MBPDownload
//
//  Created by Kevin K on 10.10.14.
//  Copyright (c) 2014 kevki01. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    mbpDownload = [[MBPDownload alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)downloadButton1:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://github.com/kevki01/MBPDownload/blob/master/Download.pdf?raw=true"];
    [mbpDownload startWithRequestUrl:url andProgressView:_progressView1];
}

- (IBAction)downloadButton2:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://github.com/kevki01/MBPDownload/blob/master/Download.pdf?raw=true"];
    [mbpDownload startWithRequestUrl:url andProgressView:_progressView2];
}

- (IBAction)downloadButton3:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://github.com/kevki01/MBPDownload/blob/master/Download.pdf?raw=true"];
    [mbpDownload startWithRequestUrl:url andProgressView:_progressView3];
}

- (IBAction)downloadButton4:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://github.com/kevki01/MBPDownload/blob/master/Download.pdf?raw=true"];
    [mbpDownload startWithRequestUrl:url andProgressView:_progressView4];
}

- (IBAction)downloadButton5:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://github.com/kevki01/MBPDownload/blob/master/Download.pdf?raw=true"];
    [mbpDownload startWithRequestUrl:url andProgressView:_progressView5];
}

- (IBAction)downloadButton6:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://github.com/kevki01/MBPDownload/blob/master/Download.pdf?raw=true"];
    [mbpDownload startWithRequestUrl:url andProgressView:_progressView6];
}
@end
