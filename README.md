MBPDownload
===========

Multi-Background-Progress-Downloader


This is a Demo for the Multi-Background-Progress-Downloader. You can use it to download files on your iOS-Device in background, with progressstatus and this for multiple jobs.

In demoproject you can see how to use it:

Just init the MBPDownload:

MBPDownload *mbpDownload = [[MBPDownload alloc]init];

And then use it:

NSURL *url = [NSURL URLWithString:@"https://github.com/kevki01/MBPDownload/blob/master/Download.pdf?raw=true"];
    [mbpDownload startWithRequestUrl:url andProgressView:_progressView1];
    
Its just easy a 1,2,3

Note this is not the final Verison. I am still working on this.
