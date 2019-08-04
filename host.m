#import <Foundation/Foundation.h>

int main()
{
	NSHost *host = [NSHost currentHost];
	NSLog(@"%p", host);
	NSLog(@"%@", host);

	NSString *hostname = [host localizedName];
	NSLog(@"%@", hostname);
}
