//
//  ViewController.m
//  KRConfetti
//
//  Created by Kieran (work account) on 04/02/2016.
//  Copyright © 2016 Robinson. All rights reserved.
//

#import "ViewController.h"
#import "KRConfettiView.h"

@interface ViewController () {
    KRConfettiView *confettiView;
    BOOL isRainingConfetti;
    IBOutlet UILabel *confettiStatus;
}

@end

@implementation ViewController


-(BOOL)prefersStatusBarHidden {
    return YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create confetti view
    confettiView = [[KRConfettiView alloc] initWithFrame:self.view.frame];
    
    // Set colors (default colors are red, green and blue)
    confettiView.colours = @[[UIColor colorWithRed:0.95 green:0.40 blue:0.27 alpha:1.0],
                [UIColor colorWithRed:1.00 green:0.78 blue:0.36 alpha:1.0],
                [UIColor colorWithRed:0.48 green:0.78 blue:0.64 alpha:1.0],
                [UIColor colorWithRed:0.30 green:0.76 blue:0.85 alpha:1.0],
                [UIColor colorWithRed:0.58 green:0.39 blue:0.55 alpha:1.0]];
    
    //Set intensity (from 0 - 1, default intensity is 0.5)
    confettiView.intensity = 0.5;
   
    //set type
    confettiView.type = Diamond;
    
    
    //For custom image
     
    //confettiView.customImage = [UIImage imageNamed:@"diamond"];
    //confettiView.type = Custom;
    
   //add subview
    [self.view addSubview:confettiView];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    isRainingConfetti =! isRainingConfetti;
    
    if (isRainingConfetti) {
        //stop raining confetti
        [confettiView stopConfetti];
        confettiStatus.text = @"it's not raining confetti 🙁";
    } else {
        //start raining confetti
        [confettiView startConfetti];
        confettiStatus.text = @"it's raining confetti 🙂";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
