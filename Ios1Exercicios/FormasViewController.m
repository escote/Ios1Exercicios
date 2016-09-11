//
//  FormasViewController.m
//  Aula02
//
//  Created by Felipe Escote on 9/10/16.
//  Copyright © 2016 IESB. All rights reserved.
//

#import "FormasViewController.h"
#import "ViewEstrela.h"
#import "ViewPentagono.h"
#import "ViewCirculo.h"


@interface FormasViewController ()
@property (strong, nonatomic) IBOutlet UIPinchGestureRecognizer *dfsdf;
@property (strong, nonatomic) IBOutlet UIView *estrela;
@property (strong, nonatomic) IBOutlet UIView *pentagono;
@property (strong, nonatomic) IBOutlet UIView *circulo;

@end

@implementation FormasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)teste:(id)sender {
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
    //    MinhaView *mv = [[MinhaView alloc] initWithFrame:CGRectMake(20, 20, 250, 250)];
    //    [self.view addSubview:mv];
    //
    //    ViewDeTexto *vt = [[ViewDeTexto alloc] initWithFrame:CGRectMake(30, 30, 200, 200)];
    //    [self.view addSubview:vt];
    
    
    //    ViewDeImagem *vi = [[ViewDeImagem alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
    //    [self.view addSubview:vi];
    
    //    ViewClip *clip = [[ViewClip alloc] initWithFrame:CGRectMake(30, 30, 250, 250)];
    //    [self.view addSubview:clip];

    ViewEstrela *clip1 = [[ViewEstrela alloc] initWithFrame:CGRectMake(0, 0, self.estrela.bounds.size.width, self.estrela.bounds.size.height)];
    [self.estrela addSubview:clip1];
    
    
    ViewPentagono *clip2 = [[ViewPentagono alloc] initWithFrame:CGRectMake(0, 0, self.pentagono.bounds.size.width, self.pentagono.bounds.size.height)];
    [self.pentagono addSubview:clip2];
    
    
    ViewCirculo *clip3 = [[ViewCirculo alloc] initWithFrame:CGRectMake(0, 0, self.circulo.bounds.size.width, self.circulo.bounds.size.height)];
    [self.circulo addSubview:clip3];
    
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
