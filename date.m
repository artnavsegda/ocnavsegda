#import <Foundation/Foundation.h>

int main()
{
	NSDate *now = [NSDate date];
	NSLog(@"%p", now);
	NSLog(@"%@", now);

	double seconds = [now timeIntervalSince1970];
	NSLog(@"%f", seconds);
}