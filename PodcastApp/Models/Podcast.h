

@interface Podcast : NSObject
// Properties in the json file
@property (nonatomic) NSNumber *collectionId;
@property (copy) NSString *artistName;
@property (copy) NSString *collectionName;
@property (copy) NSString *artworkUrl600;

- (instancetype)inWithDictionary:(NSDictionary *)dict; // Explain

@end

//NSNumber is a subclass of NSValue that offers a value as any C scalar (numeric) type. It defines a set of methods specifically for setting and accessing the value as a signed or unsigned char, short int, int, long int, long long int, float, or double or as a BOOL.
