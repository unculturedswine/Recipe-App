//
//  RADetailViewController.m
//  Recipe App
//
//  Created by Joel on 1/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RADetailViewController.h"

@interface RADetailViewController ()

@end

@implementation RADetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height *2);
    // Recipe Description
    UILabel *raDescription = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 375, 44)];
    raDescription.textColor = [UIColor purpleColor];
    raDescription.backgroundColor = [UIColor cyanColor];
    [scrollView addSubview:raDescription];
    // Ingredient List
    UILabel *raIngredient = [[UILabel alloc] initWithFrame:CGRectMake(0, 44, 375, 200)];
    raIngredient.backgroundColor = [UIColor magentaColor];
    [scrollView addSubview:raIngredient];
    // Directions
    UILabel *raDirections = [[UILabel alloc] initWithFrame:CGRectMake(0, 244, 375, 800)];
    raDirections.backgroundColor = [UIColor purpleColor];
    [scrollView addSubview:raDirections];
    
    
    [self.view addSubview:scrollView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
