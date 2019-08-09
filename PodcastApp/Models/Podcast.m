// creating the method defintion for the inWithDictionary

#import <Foundation/Foundation.h>
#import "Podcast.h"

@implementation Podcast

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self.collectionId = dict[@"collectionId"];
    self.artistName = dict[@"artistName"];
    self.collectionName = dict[@"collectionName"];
    self.artworkUrl600 = dict[@"artworkUrl600"];
    return self;
}

@end
