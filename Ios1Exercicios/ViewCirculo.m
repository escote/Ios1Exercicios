//
//  ViewCirculo.m
//  Aula02
//
//  Created by Felipe Escote on 9/10/16.
//  Copyright © 2016 IESB. All rights reserved.
//

#import "ViewCirculo.h"

@implementation ViewCirculo

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
    
    CGColorRef verde =  [[UIColor colorWithRed:0.521569 green:0.768627 blue:0.254902 alpha:1] CGColor];
    
    
    int tamanho = 0.9*MIN(rect.size.width, rect.size.height);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ctx, CGRectMake((rect.size.width-tamanho)/2,(rect.size.height-tamanho)/2,tamanho,tamanho));
    CGContextSetFillColor(ctx, CGColorGetComponents(verde));
    CGContextFillPath(ctx);

    
    
}

@end
