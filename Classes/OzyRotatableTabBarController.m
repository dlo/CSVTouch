//
//  OzyRotatableTabBarController.m
//  CSV Touch
//
//  Created by Simon Wigzell on 17/06/2008.
//  Copyright 2008 Ozymandias. All rights reserved.
//

#import "OzyRotatableTabBarController.h"
#import "OzymandiasAdditions.h"
#import "CSVPreferencesController.h"

@implementation OzyRotatableTabBarController

@synthesize viewDelegate = _viewDelegate;

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	if( [[[UIApplication sharedApplication] delegate] respondsToSelector:@selector(allowRotation)] )
		return [(id <OzymandiasApplicationDelegate>)[[UIApplication sharedApplication] delegate] allowRotation];
	else
		return YES;
}

// Ugly fix for problem where navigation bar "slips down" when rotating to landscape
// mode while statusbar not showing...
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
	if( ![CSVPreferencesController showStatusBar ] && [[UIApplication sharedApplication] isStatusBarHidden] )
		[[UIApplication sharedApplication] setStatusBarHidden:NO animated:NO];
}

- (void)viewDidAppear:(BOOL)animated
{
	[self.viewDelegate viewDidAppear:self.view controller:self];
	[super viewDidAppear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[self.viewDelegate viewDidDisappear:self.view controller:self];
	[super viewDidDisappear:animated];
}

- (void) dealloc
{
	self.viewDelegate = nil;
	[super dealloc];
}

@end
