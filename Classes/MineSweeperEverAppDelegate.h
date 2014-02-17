//
//  MineSweeperEverAppDelegate.h
//  MineSweeperEver
//
//  Created by xu xhan on 12/3/09.
//  Copyright xu han 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NewGameViewController;

@interface MineSweeperEverAppDelegate : NSObject <UIApplicationDelegate>
{
}

@property (nonatomic, retain) UINavigationController *navigationC;
@property (nonatomic, retain) NewGameViewController *gameVC;
@property (nonatomic, retain) IBOutlet UIWindow *window;
 
@end




