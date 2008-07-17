//
//  OzyRotatableViewController.m
//  CSV Touch
//
//  Created by Simon Wigzell on 17/06/2008.
//  Copyright 2008 Ozymandias. All rights reserved.
//

#import "OzyRotatableViewController.h"
#import "CSVPreferencesController.h"

@implementation OzyRotatableViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return [CSVPreferencesController allowRotatableInterface];
}

@end
