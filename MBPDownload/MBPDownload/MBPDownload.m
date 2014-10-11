//
//  MBPDownload.m
//  MBPDownload
//
//  Created by Kevin K on 10.10.14.
//  Copyright (c) 2014 kevki01. All rights reserved.
//

#import "MBPDownload.h"

@implementation MBPDownload

-(id)init{
    if (self) {
        downloadDict = [[NSMutableDictionary alloc]init];
        currentOnlineDict = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)startWithRequestUrl:(NSURL*) url andProgressView:(UIProgressView*) pView{
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    con = [[NSURLConnection alloc]initWithRequest:request delegate:self];
    NSMutableDictionary *fileDict = [[NSMutableDictionary alloc]init];
    [fileDict setObject:pView forKey:@"pview"];
    [downloadDict setObject:fileDict forKey:[url lastPathComponent]];
}


- (void)connection: (NSURLConnection*) connection didReceiveResponse: (NSHTTPURLResponse*) response
{
    NSMutableDictionary *fileDict = [downloadDict objectForKey:[[[connection currentRequest] URL]lastPathComponent]];
    NSMutableData *data = [[NSMutableData alloc]init];
    NSInteger statusCode_ = [response statusCode];
    if (statusCode_ == 200) {
        NSInteger download_size = [response expectedContentLength];
        NSString *nameToReplace = [[[connection currentRequest] URL]lastPathComponent];
        [fileDict setObject:data forKey:@"data"];
        [fileDict setObject:[NSNumber numberWithInt:download_size] forKey:@"size"];
        [downloadDict setObject:fileDict forKey:nameToReplace];
    }
}

- (void) connection: (NSURLConnection*) connection didReceiveData: (NSData*) data
{
    NSMutableDictionary *fileDict = [downloadDict objectForKey:[[[connection currentRequest] URL]lastPathComponent]];
    NSMutableData *_data = [fileDict objectForKey:@"data"];
    
    [_data appendData: data];
    
    NSInteger download_size = [[fileDict objectForKey:@"size"]integerValue];
    download_progress = ((float) [_data length] / (float) download_size);
    
    UIProgressView *pView = [fileDict objectForKey:@"pview"];
    [pView setProgress:download_progress];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"finished");

    NSMutableDictionary *fileDict = [downloadDict objectForKey:[[[connection currentRequest] URL]lastPathComponent]];
    NSMutableData *_data = [fileDict objectForKey:@"data"];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    int rand = arc4random_uniform(74);
    NSString *randfileName = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%i%@",rand,[[[connection currentRequest] URL]lastPathComponent]]];
    
    [_data writeToFile:randfileName atomically:YES];
}

@end
