//
//  RecipesTableViewDataSource.h
//  Recipe App
//
//  Created by Joel on 1/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RecipesTableViewDataSource : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *) tableView;
// I don't remember why we need to do this

@end
