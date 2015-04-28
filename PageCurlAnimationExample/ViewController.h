//
//  ViewController.h
//  PageCurlAnimationExample
//
//  Created by Maitrayee Ghosh on 27/04/15.
//  Copyright (c) 2015 Maitrayee Ghosh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIView *tempUIView;
}

- (IBAction)didTapFullCurlLeftBtn:(id)sender;
- (IBAction)didtapFullCurlRightBtn:(id)sender;
- (IBAction)didTapHalfCurlLeftBtn:(id)sender;
- (IBAction)didTapHalfCurlRightBtn:(id)sender;
- (IBAction)didTapHalfCurlUpBtn:(id)sender;
- (IBAction)didTapCurlDownBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *animatedUIView;

@end

