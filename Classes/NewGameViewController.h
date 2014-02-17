//
//  NewGameViewController.h
//  MineSweeperEver
//
//  Created by xu xhan on 12/3/09.
//  Copyright 2009 xu han. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
	GameLevelBeginner,
	GameLevelMedium,
	GameLevelExpect,
	GameLevelCustom
}GameLevelType;

@interface NewGameViewController : UIViewController
{
	GameLevelType _GameLevel;
}

-(IBAction)setupGameLevel:(id)sender;

-(IBAction)startGame:(id)sender;

-(IBAction)onHighScore:(id)sender;

-(IBAction)onPlayMovie:(id)sender;

@end
