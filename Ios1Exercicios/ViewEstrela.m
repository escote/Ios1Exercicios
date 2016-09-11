//
//  ViewEstrela.m
//  Aula05
//
//  Created by ADMINISTRADOR on 24/08/16.
//  Copyright © 2016 IESB. All rights reserved.
//

#import "ViewEstrela.h"

@implementation ViewEstrela

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configurar];
    }
    return self;
}

- (void) configurar {
    [self setBackgroundColor:[UIColor colorWithWhite:1.0 alpha:0.1]];

}



-(void)drawRect:(CGRect)rect
{
    
    
    
    
    int tamanho = MIN(rect.size.width, rect.size.height);

    CGColorRef verde =  [[UIColor colorWithRed:0.521569 green:0.768627 blue:0.254902 alpha:1] CGColor];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, tamanho);
    CGFloat xCenter = rect.size.width/2.0;
    CGFloat yCenter = rect.size.height/2.0;
    
    float  w = tamanho;
    double r = w / 2.0;
    float flip = -1.0;
    
    CGContextSetFillColorWithColor(context, verde);
    
    
    CGContextSetStrokeColorWithColor(context, verde);
    
    double theta = 2.0 * M_PI * (2.0 / 5.0); // 144 degrees
    
    CGContextMoveToPoint(context, xCenter, r*flip+yCenter);
    
    for (NSUInteger k=1; k<6; k++)
    {
        float x = r * sin(k * theta);
        float y = r * cos(k * theta);
        CGContextAddLineToPoint(context, x+xCenter, y*flip+yCenter);
    }
    
    CGContextClosePath(context);
    CGContextFillPath(context);
}


@end
