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
    NSUUID *uuid = [[NSUUID alloc] initWithUUIDString:@"c7c1a1bf-bb00-4cad-8704-9f2d2917ded2"];
    self.myBeaconRegion = [[CLBeaconRegion alloc] initWithProximityUUID:uuid identifier:@"art.navsegda.testregion"];
    [self.locationManager startMonitoringForRegion:self.myBeaconRegion];
}

- (void)locationManager:(CLLocationManager*)manager didEnterRegion:(CLRegion*)region
{
    [self.locationManager startRangingBeaconsInRegion:self.myBeaconRegion];
}
 
-(void)locationManager:(CLLocationManager*)manager didExitRegion:(CLRegion*)region
{
    [self.locationManager stopRangingBeaconsInRegion:self.myBeaconRegion];
}
 
-(void)locationManager:(CLLocationManager*)manager
       didRangeBeacons:(NSArray*)beacons
              inRegion:(CLBeaconRegion*)region
{
    NSLog (@"Beacon found !!!");
    
    CLBeacon *foundBeacon = [beacons firstObject];
    
    // You can retrieve the beacon data from its properties
    //NSString *uuid = foundBeacon.proximityUUID.UUIDString;
    //NSString *major = [NSString stringWithFormat:@"%@", foundBeacon.major];
    //NSString *minor = [NSString stringWithFormat:@"%@", foundBeacon.minor];
}

- (IBAction)myStuff:(id)sender {
    NSLog (@"Hello, World!");
}
@end
