//
//  FBRequestConnection+FBRequestConnection_progress.m
//  MusicFilms
//
//  Created by masafumi yoshida on 2013/10/06.
//  Copyright (c) 2013年 Masafumi Yoshida. All rights reserved.
//

#import "FBRequestConnection+FBRequestConnection_progress.h"

@implementation FBRequestConnection (FBRequestConnection_progress)

@dynamic  progress;
- (void)setProgress:(FBURLConnectionProgressBlocks)progress{
    
    objc_setAssociatedObject(self, @"progress", progress, OBJC_ASSOCIATION_RETAIN);
}

- (FBURLConnectionProgressBlocks)getProgress{
    return objc_getAssociatedObject(self, @"progress");
}

- (FBURLConnection *)newFBURLConnection {
    FBURLConnection *connection = [FBURLConnection alloc];
    if([self getProgress]){
        [connection setProgress:[self getProgress]];
    }
    return connection;
}
@end
