//
//  ViewController.m
//  PageCurlAnimationExample
//
//  Created by Maitrayee Ghosh on 27/04/15.
//  Copyright (c) 2015 Maitrayee Ghosh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tempUIView=[[UIView alloc]initWithFrame:self.animatedUIView.bounds];
    tempUIView.backgroundColor=[UIColor whiteColor];
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Full Horizontal Curl

- (IBAction)didTapFullCurlLeftBtn:(id)sender
{
    [UIView animateWithDuration:1.0
                     animations:^{
                         CATransition  * animation = [CATransition animation];
                         [animation setDelegate:self];
                         [animation setDuration:1.2f];
                         animation.startProgress = 0.0;
                         animation.endProgress   = 1;
                         [animation setTimingFunction:UIViewAnimationCurveEaseInOut];
                         [animation setType:@"pageCurl"];
                         [animation setSubtype:@"fromRight"];
                         [animation setRemovedOnCompletion:NO];
                         [animation setFillMode: @"extended"];
                         [animation setRemovedOnCompletion: NO];
                         [[self.animatedUIView layer] addAnimation:animation
                                                  forKey:@"pageFlipAnimation"];
                         [self.animatedUIView addSubview:tempUIView];
                         }
     ];
}
- (IBAction)didtapFullCurlRightBtn:(id)sender
{
  
    [UIView animateWithDuration:1.0
                     animations:^{
                         CATransition  * animation = [CATransition animation];
                         [animation setDelegate:self];
                         [animation setDuration:1.2f];
                         animation.startProgress = 0.0;
                         animation.endProgress   = 1;
                         [animation setTimingFunction:UIViewAnimationCurveEaseInOut];
                         [animation setType:@"pageCurl"];
                         [animation setSubtype:@"fromLeft"];
                         [animation setRemovedOnCompletion:NO];
                         [animation setFillMode: @"extended"];
                         [animation setRemovedOnCompletion: NO];
                         [[self.animatedUIView layer] addAnimation:animation
                                                  forKey:@"pageFlipAnimation"];
                         [self.animatedUIView addSubview:tempUIView];
                         
                     }
     ];
}

- (void)animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag
{
    [tempUIView removeFromSuperview];
}

#pragma mark - Half Horizontal Curl

- (IBAction)didTapHalfCurlLeftBtn:(id)sender
{
    [UIView animateWithDuration:1.0
                     animations:^{
                         CATransition  * animation = [CATransition animation];
                         [animation setDuration:1.2f];
                         animation.startProgress = 0.0;
                         animation.endProgress   = 0.6;
                         [animation setTimingFunction:UIViewAnimationCurveEaseInOut];
                         [animation setType:@"pageCurl"];
                         [animation setSubtype:@"fromRight"];
                         [animation setRemovedOnCompletion:NO];
                         [animation setFillMode: @"extended"];
                         [animation setRemovedOnCompletion: NO];
                         [[self.animatedUIView layer] addAnimation:animation
                                                            forKey:@"pageFlipAnimation"];
                          [self.animatedUIView addSubview:tempUIView];
                         
                     }
     ];

}
- (IBAction)didTapHalfCurlRightBtn:(id)sender
{
       [UIView animateWithDuration:1.0
                     animations:^{
                         CATransition  * animation = [CATransition animation];
                         [animation setDuration:1.2f];
                         animation.startProgress = 0.4;
                         animation.endProgress   = 1.0;
                         [animation setTimingFunction:UIViewAnimationCurveEaseInOut];
                         [animation setType:@"pageUnCurl"];
                         [animation setSubtype:@"fromRight"];
                         [animation setRemovedOnCompletion:NO];
                         [animation setFillMode: @"extended"];
                         [animation setRemovedOnCompletion: NO];
                         [[self.animatedUIView layer] addAnimation:animation
                                                            forKey:@"pageUnCurlAnimation"];
                         [tempUIView removeFromSuperview];
                         
                     }
     ];

}

#pragma mark - Half Vertical Curl

- (IBAction)didTapHalfCurlUpBtn:(id)sender
{
    [UIView animateWithDuration:1.0
                     animations:^{
                         CATransition *animation = [CATransition animation];
                         [animation setDuration:1.2];
                         [animation setTimingFunction:[CAMediaTimingFunction functionWithName:@"default"]];
                         animation.fillMode = kCAFillModeForwards;
                         [animation setRemovedOnCompletion:NO];
                         animation.endProgress = 0.65;
                         animation.type = @"pageCurl";
                         [self.animatedUIView.layer addAnimation:animation forKey:@"pageCurlAnimation"];
                         [self.animatedUIView addSubview:tempUIView];
                         
                     }
     ];
}

- (IBAction)didTapCurlDownBtn:(id)sender
{
    [UIView animateWithDuration:1.0
                     animations:^{
                         CATransition *animation = [CATransition animation];
                         [animation setDuration:1.2];
                         [animation setTimingFunction:[CAMediaTimingFunction functionWithName:@"default"]];
                         animation.fillMode = kCAFillModeForwards;
                         [animation setRemovedOnCompletion:NO];
                         animation.startProgress = 0.35;
                         animation.type = @"pageUnCurl";
                         [self.animatedUIView.layer addAnimation:animation forKey:@"pageUnCurlAnimation"];
                         [tempUIView removeFromSuperview];
                         
                     }
     ];

}
@end
