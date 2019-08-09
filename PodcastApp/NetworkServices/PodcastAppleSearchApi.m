//
//  PodcastAppleSearchApi.m
//  PodcastApp
//
//  Created by Ibraheem rawlinson on 8/8/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PodcastAppleSearchApi.h"
#import "Podcast.h"

@implementation AppleSearchApi
// : (NSString *)keyword :(void (^)(NSArray *, NSError *))completionBlock
- (void)searchPodcast: (NSString *)keyword :(void (^)(NSArray *, NSError *))completionBlock{
    NSLog(@"Searing Podcast...");
    
    NSString *endpoint = [NSString stringWithFormat:   @"https://itunes.apple.com/search?media=podcast&limit=200&term=%@", keyword];
    
    NSURL *url = [[NSURL alloc] initWithString: endpoint];
    
    NSURLRequest * request = [[NSURLRequest alloc] initWithURL:url];
    
    
    NSURLSessionDataTask * task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error != nil) {
            //            NSLog(@"error: %@", error);
            completionBlock(nil, error);
        } else {
            //            NSLog(@"data: %@", data);
            NSError *error;
            NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error: &error]; // &error
            if (!jsonDict){
                completionBlock(nil, error);
            } else {
                NSArray *results = jsonDict[@"results"];
                NSMutableArray *podcasts = [[NSMutableArray alloc]init];
                for (NSDictionary *podcastDict in results){
                    Podcast *podcast = [[Podcast alloc] initWithDictionary: podcastDict];
                    [podcasts addObject:podcast];
                }
                completionBlock(podcasts,nil);
            }
        };
    }];
    [task resume];
}


@end
