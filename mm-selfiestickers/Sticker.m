//
//  Sticker.m
//  mm-selfiestickers
//
//  Created by Christopher Serra on 3/24/16.
//  Copyright © 2016 plugh. All rights reserved.
//

#import "Sticker.h"


@interface Sticker () <UIGestureRecognizerDelegate>
@end


@implementation Sticker

-(instancetype)initWithImage:(UIImage *)image
{
    self = [super initWithImage:image];
    if (self) {
        self.userInteractionEnabled = YES;
        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
        
        self.gestureRecognizers = @[pan];
        
        for (UIGestureRecognizer *recognizer in self.gestureRecognizers) {
            recognizer.delegate = self;
        }
    }
    return self;
}

-(void)handlePan:(UIPanGestureRecognizer *)recognizer
{
    if (recognizer.state == UIGestureRecognizerStateBegan ||
        recognizer.state == UIGestureRecognizerStateChanged)
    {
        CGPoint p = [recognizer translationInView:recognizer.view];
        [recognizer.view setTransform:CGAffineTransformTranslate(recognizer.view.transform, p.x, p.y)];
        [recognizer setTranslation:CGPointZero inView:recognizer.view];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
