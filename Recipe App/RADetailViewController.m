//
//  RADetailViewController.m
//  Recipe App
//
//  Created by Joel on 1/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RADetailViewController.h"
#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"

static CGFloat margin = 15;

@interface RADetailViewController ()

@end

@implementation RADetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGFloat widthMinusMargin = self.view.frame.size.width - 2 * margin;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height *2);
    // Recipe Name
    UILabel *raName = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
        raName.text = [[RARecipes class] titleAtIndex:self.recipeIndex];
        raName.textAlignment = NSTextAlignmentCenter;
        raName.font = [UIFont boldSystemFontOfSize:18];
        [scrollView addSubview:raName];
    // Recipe Description
    UILabel *raDescription = [[UILabel alloc] initWithFrame:CGRectMake(margin, 44, widthMinusMargin, 100)];
        raDescription.lineBreakMode = NSLineBreakByWordWrapping;
        raDescription.textAlignment = NSTextAlignmentCenter;
        raDescription.text = [[RARecipes class] descriptionAtIndex:self.recipeIndex];
        raDescription.numberOfLines = 0;
        [scrollView addSubview:raDescription];
    // Ingredient List
    UILabel *raIngredient = [[UILabel alloc] initWithFrame:CGRectMake(0, 88, self.view.frame.size.width, 200)];
        raIngredient.backgroundColor = [UIColor magentaColor];
        //raIngredient.text = [[RARecipes class] ingredientTypeAtIndex:self.recipeIndex inRecipeAtIndex:self.recipeIndex];
        [scrollView addSubview:raIngredient];
    // Directions
    UILabel *raDirections = [[UILabel alloc] initWithFrame:CGRectMake(0, 244, self.view.frame.size.width, 800)];
        raDirections.backgroundColor = [UIColor purpleColor];
        //raDirections.text = [[RARecipes class] recipes];
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
