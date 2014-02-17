//
//  HighScoreViewController.m
//  MineSweeperEver
//
//  Created by xu xhan on 12/8/09.
//  Copyright 2009 xu han. All rights reserved.
//

#import "HighScoreViewController.h"
#import "StorageCenter.h"

@implementation HighScoreViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.title = @"High Scores";
    if ([self respondsToSelector: @selector(setEdgesForExtendedLayout:)])
    {
        [self setEdgesForExtendedLayout: UIRectEdgeNone];
    }
}

-(IBAction)changeIndex:(id)sender
{
	[tableView reloadData];
	_level = [(UISegmentedControl*)sender selectedSegmentIndex];
}


#pragma mark -
#pragma mark  tableView dataSourUITableView *)atableView {

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)atableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)atableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString* CELL_identify = @"xhanGodLike";
	NSArray* array = [[StorageCenter singleton].defaults objectForKey:[NSString stringWithFormat:@"level%d",_level]];
	NSDictionary* dic = [array objectAtIndex:[indexPath row]];
	
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_identify];
    if (cell == nil) {
		cell = [[[UITableViewCell alloc ] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CELL_identify] autorelease];		
	}
	cell.textLabel.text = [dic objectForKey:@"name"];
	cell.detailTextLabel.text = [NSString stringWithFormat:@"Time costs:%.1f",[[dic objectForKey:@"time"] intValue]/10.0] ;
	
	return cell;
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end


