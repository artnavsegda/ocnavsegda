#import <Foundation/Foundation.h>

int main()
{
	NSHost *host = [NSHost currentHost];
	NSLog(@"%p", host);
	NSLog(@"%@", host);

	//double seconds = [now timeIntervalSince1970];
	//NSLog(@"%f", seconds);
}
