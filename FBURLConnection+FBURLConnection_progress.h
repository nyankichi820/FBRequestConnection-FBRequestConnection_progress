//
//  FBURLConnection+FBURLConnection_progress.h
//  MusicFilms
//
//  Created by masafumi yoshida on 2013/10/06.
//  Copyright (c) 2013年 Masafumi Yoshida. All rights reserved.
//
#import <objc/runtime.h>
#import "FBURLConnection.h"
typedef void (^FBURLConnectionProgressBlocks)(float progress);

@interface FBURLConnection (FBURLConnection_progress)
@property(nonatomic,strong) FBURLConnectionProgressBlocks progress;
- (void)setProgress:(FBURLConnectionProgressBlocks)progress;
- (FBURLConnectionProgressBlocks)getProgress;
@end
