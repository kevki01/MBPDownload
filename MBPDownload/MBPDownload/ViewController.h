//
//  ViewController.h
//  MBPDownload
//
//  Created by Kevin K on 10.10.14.
//  Copyright (c) 2014 kevki01. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBPDownload.h"

@interface ViewController : UIViewController{
    
    MBPDownload *mbpDownload;
}
@property (weak, nonatomic) IBOutlet UIProgressView *progressView1;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView2;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView3;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView4;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView5;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView6;

- (IBAction)downloadButton1:(id)sender;
- (IBAction)downloadButton2:(id)sender;
- (IBAction)downloadButton3:(id)sender;
- (IBAction)downloadButton4:(id)sender;
- (IBAction)downloadButton5:(id)sender;
- (IBAction)downloadButton6:(id)sender;


@end

