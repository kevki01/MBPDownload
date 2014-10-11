//
//  MBPDownload.h
//  MBPDownload
//
//  Created by Kevin K on 10.10.14.
//  Copyright (c) 2014 kevki01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MBPDownload : NSObject <NSURLConnectionDelegate>{
    
    float download_progress;
    NSMutableDictionary *downloadDict;
    NSMutableDictionary *currentOnlineDict;
    NSURLConnection *con;
}

- (void)startWithRequestUrl:(NSURL*) url andProgressView:(UIProgressView *) pView;

@end
