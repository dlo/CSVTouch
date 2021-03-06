//
//  CSVPreferencesController.h
//  CSV Touch
//
//  Created by Simon Wigzell on 14/07/2008.
//  Copyright 2008 Ozymandias. All rights reserved.
//

#import "OzyTableViewController.h"

#import <UIKit/UIKit.h>
#if defined(CSV_LITE)
#import <iAd/iAd.h>
#endif


@interface CSVPreferencesController : NSObject

+ (void) applicationDidFinishLaunching;

+ (NSString *) delimiter;
+ (OzyTableViewSize) itemsTableViewSize;
+ (OzyTableViewSize) detailsTableViewSize;
+ (NSStringEncoding) encoding;
+ (BOOL) smartDelimiter;
+ (NSUInteger) maxNumberOfItemsToSort;
+ (BOOL) useGroupingForItems;
+ (BOOL) groupNumbers;
+ (BOOL) enablePhoneLinks;
+ (BOOL) useFixedWidth;
+ (BOOL) definedFixedWidths;
+ (BOOL) showDetailsToolbar;
+ (BOOL) keepQuotes;
+ (BOOL) showDebugInfo;
+ (BOOL) safeStart;
+ (BOOL) useCorrectParsing;
+ (BOOL) useCorrectSorting;
+ (BOOL) useDetailsNavigation;
+ (BOOL) useDetailsSwipe;
+ (BOOL) useSwipeAnimation;
+ (BOOL) showInlineImages;
+ (NSUInteger) maxNumberOfItemsToLiveFilter;
+ (BOOL) clearSearchWhenQuickSelecting;
+ (BOOL) confirmLink;
+ (BOOL) alignHtml;
+ (BOOL) usePassword;
+ (void) clearSetPassword;
+ (NSDate *) nextDownload; // Returns nil if none set
+ (NSDate *) lastDownload;
+ (void) setLastDownload:(NSDate *)lastDownload;
+ (BOOL) simpleMode;
+ (BOOL) blankWordSeparator;
+ (long) maxSafeBackgroundMinutes;
+ (NSURL *) lastUsedListURL;
+ (void) setLastUsedListURL:(NSURL *)URL;
+ (BOOL) synchronizeDownloadedFiles;

// This is temporary, while downloading a file with addresses to CSV files
+ (BOOL) hideAddress;
+ (void) setHideAddress:(BOOL)hide;

+ (BOOL) hasBeenUpgradedToCustomExtension;
+ (void) setHasBeenUpgradedToCustomExtension;

+ (void) applySettings:(NSArray *)settings;

+ (BOOL) restrictedDataVersionRunning;

+ (void) toggleReverseItemSorting;
extern BOOL reverseItemSorting;

+ (BOOL) hasShownHowTo;
+ (void) setHasShownHowTo;

+ (void) updateSortingMask; // Needs to be called as part of initialization
+ (NSUInteger) sortingMask;
extern NSUInteger sortingMask; // This is available for performance-critical operations

+ (BOOL) modifyItemsTableViewSize:(BOOL)increase;

#if defined(CSV_LITE)
+ (BOOL) canUseAbstractBannerNames;
#endif

// Check if prefs have changed while in background
+ (BOOL) defaultsHaveChanged;
+ (void) resetDefaultsHaveChanges;

@end
