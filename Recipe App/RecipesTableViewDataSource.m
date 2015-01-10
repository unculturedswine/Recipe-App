//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Joel on 1/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"

@implementation RecipesTableViewDataSource

- (void)registerTableView:(UITableView *) tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Recipe"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [RARecipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Recipe"];
    cell.textLabel.text = [[RARecipes class] titleAtIndex:indexPath.row];
    return cell;
}

@end
