//
//  MovieCenter.m
//  MovieList
//
//  Created by T on 2014. 1. 14..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "MovieCenter.h"

@implementation MovieCenter

static MovieCenter *_instance = nil;
// DB 연결은 어디서 하나요?

+ (id)sharedMovieCenter
{
    if (nil == _instance) {
        _instance = [[MovieCenter alloc] init];
    }
    return _instance;
}

// DB 작업 모두 여기서 한다
- (NSInteger)getNumberOfMovies {
    return 3;
}

- (NSString *)getNameOfMovieAtIndex:(NSInteger)index {
    return @"어벤져스";
}

- (NSInteger)getNumberOfActorsInMovie:(NSInteger)movieIndex {
    return 3;
}

- (NSString *)getNameOfActorAtIndex:(NSInteger)index inMovie:(NSInteger)movieIndex {
    return @"스칼렛요한슨";
}

- (void)addActorWithName:(NSString *)name inMovie:(NSInteger)movieIndex {
    
}

@end
