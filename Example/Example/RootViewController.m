//
//  RootViewController.m
//  Created by Devin Ross on 9/16/15.
//
/*
 
 Google Contacts || https://github.com/devinross/googlecontacts
 
 Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without
 restriction, including without limitation the rights to use,
 copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following
 conditions:
 
 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 OTHER DEALINGS IN THE SOFTWARE.
 
 */

#import "RootViewController.h"


@interface RootViewController () <GoogleContactsSessionDelegate>

@end

@implementation RootViewController

- (void) viewDidLoad {
    [super viewDidLoad];
	
	self.view.backgroundColor = [UIColor whiteColor];
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Login" style:UIBarButtonItemStylePlain target:self action:@selector(login)];
}

- (void) login{
	
	
	if([GoogleContactsSession sharedSession].isLoggedIn){
		
		UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[GOContactsViewController alloc] init]];
		
		[self presentViewController:nav animated:YES completion:nil];
		return;
		
	}
	[GoogleContactsSession sharedSession].delegate = self;
	[[GoogleContactsSession sharedSession] authenticate];
	
	
}

#pragma mark - GoogleContactsSessionDelegate
- (void) didSignInWithGoogleContactsSession:(GoogleContactsSession*)session{
	
	[self login];
	
}
- (void) googleContactsSession:(GoogleContactsSession*)session signInDidFailWithError:(NSError*)error{
	
}
- (void) didSignOutOfSession:(GoogleContactsSession*)session{
	
}

- (void) presentGoogleContactAuthenticationViewController:(UIViewController*)controller{
	[self presentViewController:controller animated:YES completion:nil];
}
- (void) dismissGoogleContactAuthenticationViewController:(UIViewController*)controller{
	[controller dismissViewControllerAnimated:YES completion:nil];
}



@end
