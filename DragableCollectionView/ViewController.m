//
//  ViewController.m
//  DragableCollectionView
//
//  Created by Ankit on 09/06/14.
//  Copyright (c) 2014 Ankit. All rights reserved.
//

#import "ViewController.h"
#import "Option.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.collectionView setDragEnableCollectionDatasource:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - dedatasource
-(NSMutableArray*) optionsArrayForCollectionView:(DECollectionView *)deCollectionView{
    NSMutableArray *optionsArr = [NSMutableArray new];
    for (int i=1; i<=15; i++) {
        Option *anOption = [[Option alloc] init];
        anOption.optionImage = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]];
        anOption.optionTitle = [NSString stringWithFormat:@"%d",i];
        [optionsArr addObject:anOption];
    }
    
    return [NSMutableArray arrayWithArray:optionsArr];
}
@end
