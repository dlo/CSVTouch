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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
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
