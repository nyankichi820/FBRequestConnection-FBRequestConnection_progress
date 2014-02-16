//
//  FBURLConnection+FBURLConnection_progress.m
//  MusicFilms
//
//  Created by masafumi yoshida on 2013/10/06.
//  Copyright (c) 2013年 Masafumi Yoshida. All rights reserved.
//

#import "FBURLConnection+FBURLConnection_progress.h"

@implementation FBURLConnection (FBURLConnection_progress)

@dynamic progress;

- (void)setProgress:(FBURLConnectionProgressBlocks)progress{
    
    objc_setAssociatedObject(self, @"progress", progress, OBJC_ASSOCIATION_RETAIN);
}

- (FBURLConnectionProgressBlocks)getProgress{
    return objc_getAssociatedObject(self, @"progress");
}
- (void)connection:(NSURLConnection *)connection didSendBodyData:(NSInteger)bytesWritten totalBytesWritten:(NSInteger)totalBytesWritten totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite {
        if([self getProgress]){
        FBURLConnectionProgressBlocks progress = [self getProgress];
        progress((float)totalBytesWritten/(float)totalBytesExpectedToWrite);
    }
}
@end
