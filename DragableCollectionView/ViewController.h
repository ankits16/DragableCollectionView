//
//  ViewController.h
//  DragableCollectionView
//
//  Created by Ankit on 09/06/14.
//  Copyright (c) 2014 Ankit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DECollectionView.h"

@interface ViewController : UIViewController<DECollectionViewDelegate, DECollectionViewDatasource>

@property (nonatomic, strong) IBOutlet DECollectionView *collectionView;

@end
