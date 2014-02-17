//
//  NewGameViewController.m
//  MineSweeperEver
//
//  Created by xu xhan on 12/3/09.
//  Copyright 2009 xu han. All rights reserved.
//

#import "NewGameViewController.h"
#import "GameStageViewController.h"
#import "HighScoreViewController.h"
#import "MineSweeperEverAppDelegate.h"

@implementation NewGameViewController

//cols, rows,mines
int gameLevelDetail[4][3]={
	{10,10,14},
//	{4,4,4},
	{16,16,40},
	{18,28,88},
	{18,28,88}
};

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];

	self.title = @"MineSweeper Ever!";
	self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
}


-(IBAction)setupGameLevel:(id)sender
{
	UISegmentedControl* con = (UISegmentedControl*)sender;
	_GameLevel =  con.selectedSegmentIndex ;
	
}

-(IBAction)startGame:(id)sender
{
	GameStageViewController* gameStageVC = [[GameStageViewController alloc] initWithCols:gameLevelDetail[_GameLevel][0]
																					Rows:gameLevelDetail[_GameLevel][1]
																				   level:_GameLevel 
																				   mines:gameLevelDetail[_GameLevel][2]];
	[self presentViewController: gameStageVC
                       animated: NO
                     completion: nil];
	[gameStageVC release];
}


-(IBAction)onHighScore:(id)sender
{
	[self.navigationController pushViewController:[[HighScoreViewController new] autorelease] animated:YES];	
}

-(IBAction)onPlayMovie:(id)sender
{

}
 
@end
