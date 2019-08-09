//
//  PodcastAppleSearchApi.m
//  PodcastApp
//
//  Created by Ibraheem rawlinson on 8/8/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PodcastAppleSearchApi.h"

@implementation AppleSearchApi

- (void)searchPodcast {
    NSLog(@"Searing Podcast...");
    
    NSString *endpoint = @"https://itunes.apple.com/search?media=podcast&limit=200&term=swift";
    
    NSURL *url = [NSURL URLWithString:endpoint];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSURLSessionDataTask * task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error != nil) {
            NSLog(@"error: %@", error);
        } else {
            NSLog(@"data: %@", data);
        };
    }];
    [task resume];
}


@end
