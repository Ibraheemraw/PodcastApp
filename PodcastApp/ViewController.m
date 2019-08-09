#import "ViewController.h"
#import "PodcastAppleSearchApi.h"
#import "Podcast.h"

@interface ViewController () <UITableViewDataSource>
// everything in here is private
@property (nonatomic) NSArray *fellows;
@property (weak, nonatomic) IBOutlet UITableView *tableView; // nonatomic thread safety
@property (nonatomic) AppleSearchApi *appleSearchApi;
@end

@implementation ViewController 

//instance method class method is plus sign
- (void)viewDidLoad {
    [super viewDidLoad]; // [instance calling a method]
    // swift = swift.viewDidload
    _fellows = @[@"Ibraheem",@"Raymond", @"Elie", @"Jamie"]; // or self.fellows _ means it is an instance vairable
    NSString *message  = @"Hello World";
    NSLog(@"%@", message);
    
    for (NSString *fellow in _fellows) {
        NSLog(@"%@", fellow);
    };
    _tableView.dataSource = self;
    if (!_appleSearchApi){
        _appleSearchApi = [[AppleSearchApi alloc]init];
    }
    [_appleSearchApi searchPodcast];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _fellows.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"fellowCell" forIndexPath:indexPath];
    NSString *fellow = _fellows[indexPath.row];
    cell.textLabel.text = fellow;
    return cell;
}

@end
