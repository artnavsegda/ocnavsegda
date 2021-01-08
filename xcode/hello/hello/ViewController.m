//
//  ViewController.m
//  hello
//
//  Created by Art Navsegda on 22.12.2020.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    NSUUID *uuid = [[NSUUID alloc] initWithUUIDString:@"A77A1B68-49A7-4DBF-914C-760D07FBB87B"];
    self.myBeaconRegion = [[CLBeaconRegion alloc] initWithProximityUUID:uuid identifier:@"art.navsegda.testregion"];
    [self.locationManager startMonitoringForRegion:self.myBeaconRegion];
}


- (IBAction)myStuff:(id)sender {
    NSLog (@"Hello, World!");
}
@end
