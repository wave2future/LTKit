//
//  Copyright 2010 Michael Shannon Potter
//
//  LucasTizma
//  www.lucastizma.com
//  lucastizma@lucastizma.com (E-mail/AIM)
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "RootViewController.h"
#import "LTKit/LTKit.h"
#import "FastTableViewCell.h"

@implementation RootViewController

#pragma mark -
#pragma mark UIViewController Methods

- (void)viewDidLoad
{
	[super viewDidLoad];

	self.title = @"Fast Table View Cells";
    self.navigationItem.backBarButtonItem = [UIBarButtonItem barButtonItemWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil
    	action:nil];
	self.tableView.rowHeight = 61.0;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

#pragma mark -
#pragma mark UITableViewDataSource Methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * tableViewCellIdentifier = @"FastTableViewCell";

    FastTableViewCell * cell = (FastTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableViewCellIdentifier];

    if (cell == nil)
    {
        cell = (FastTableViewCell *)[[[NSBundle mainBundle] loadNibNamed:tableViewCellIdentifier owner:self options:nil] objectAtIndex:0];
    }

	if ((indexPath.row % 3) == 0)
	{
		cell.imageView.image = [UIImage imageNamed:@"ninten_sprite"];
		cell.firstLabel.text = @"Ninten (MOTHER 1)";
		cell.secondLabel.text = @"Unique PSI: 4th-D Slip";
		cell.thirdLabel.text = @"Hometown: Mother's Day";
	}
	else if ((indexPath.row % 3) == 1)
	{
		cell.imageView.image = [UIImage imageNamed:@"ness_sprite"];
		cell.firstLabel.text = @"Ness (MOTHER 2)";
		cell.secondLabel.text = @"Unique PSI: PK Rockin'";
		cell.thirdLabel.text = @"Hometown: Onett";
	}
	else
	{
		cell.imageView.image = [UIImage imageNamed:@"lucas_sprite"];
		cell.firstLabel.text = @"Lucas (MOTHER 3)";
		cell.secondLabel.text = @"Unique PSI: PK Love";
		cell.thirdLabel.text = @"Hometown: Tazmily Village";
	}

	//[cell drawCompositeView];

    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 10000;
}

#pragma mark -
#pragma mark UITableViewDelegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController * viewController = [[[RootViewController alloc] initWithStyle:UITableViewStylePlain] autorelease];
    
    [self.navigationController pushViewController:viewController animated:YES];
}

@end