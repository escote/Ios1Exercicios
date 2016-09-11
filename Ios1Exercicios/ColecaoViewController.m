//
//  ColecaoViewController.m
//  Aula02
//
//  Created by Felipe Escote on 9/10/16.
//  Copyright © 2016 IESB. All rights reserved.
//

#import "ColecaoViewController.h"

@interface ColecaoViewController ()
@property (strong, nonatomic) IBOutlet UICollectionView *colecao;

@property (strong, nonatomic) NSArray<NSString *> *cores;

@end

@implementation ColecaoViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
//    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    
    
    [self.colecao registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
//    _colecao=[[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    [_colecao setDataSource:self];
    [_colecao setDelegate:self];
    
    [_colecao registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    [_colecao setBackgroundColor:[UIColor lightGrayColor]];
    
    [self.view addSubview:_colecao];
    
    
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    
    // Do any additional setup after loading the view, typically from a nib.
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 5 + arc4random_uniform(5);
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 2 + arc4random_uniform(8);
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    cell.backgroundColor=[UIColor colorWithRed:(1.0*((float)rand() / RAND_MAX))
                                         green:(1.0*((float)rand() / RAND_MAX))
                                          blue:(1.0*((float)rand() / RAND_MAX))
                                         alpha:1];
    return cell;
}


#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
