//
//  MineSweeperEverAppDelegate.m
//  MineSweeperEver
//
//  Created by xu xhan on 12/3/09.
//  Copyright xu han 2009. All rights reserved.
//

#import "MineSweeperEverAppDelegate.h"
#import "NewGameViewController.h"
#import "StorageCenter.h"

@implementation MineSweeperEverAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    CGRect bounds = [[UIScreen mainScreen] bounds];
    _window = [[UIWindow alloc] initWithFrame: bounds];
    
    [_window makeKeyAndVisible];
    
	if ([[StorageCenter singleton] checkDefault])
    {
        _gameVC = [[NewGameViewController alloc] init];
        _navigationC = [[UINavigationController alloc] initWithRootViewController: _gameVC];
        
        [_window setRootViewController: _navigationC];
	}else
    {
        
	}
    
	NSLog(@"%@",[[StorageCenter singleton].defaults objectForKey:@"level0"]);
}


- (void)dealloc
{
    [_navigationC release];
    [_gameVC release];
    [_window release];
	
    [super dealloc];
}

@end



