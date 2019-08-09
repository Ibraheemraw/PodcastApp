//
//  PodcastAppleSearchApi.h
//  PodcastApp
//
//  Created by Ibraheem rawlinson on 8/8/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

@interface AppleSearchApi : NSObject

- (void)searchPodcast: (NSString *)keyword:(void(^)(NSArray *, NSError *))completionBlock; // Need this to be explained 


@end
