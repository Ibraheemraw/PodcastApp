//
//  Podcast.m
//  PodcastApp
//
//  Created by Ibraheem rawlinson on 8/8/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Podcast.h"

@implementation Podcast
// creating the method defintion for the inWithDictionary
- (instancetype)inWithDictionary:(NSDictionary *)dict{
    self.collectionId = dict[@"collectId"];
    self.artistName = dict[@"artistName"];
    self.collectionName = dict[@"collectionName"];
    self.artworkUrl600 = dict[@"artworkUrl600"];
    return self; // return this dictionary
}



@end
