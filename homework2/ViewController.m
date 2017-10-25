//
//  ViewController.m
//  dd_homework_3
//
//  Created by Руслан Курбангалиев on 25.10.2017.
//  Copyright © 2017 Руслан Курбангалиев. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)paint:(id)sender{
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithAttributedString:textView.attributedText];
    if ([sender tag] == 101) {
        [attrStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:textView.selectedRange];
    }
    if ([sender tag] == 102) {
            [attrStr addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:textView.selectedRange];
    }
    if ([sender tag] == 103) {
            [attrStr addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:textView.selectedRange];
    }
    if ([sender tag] == 104) {
            [attrStr addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor] range:textView.selectedRange];
    }
    if ([sender tag] == 105) {
            [attrStr removeAttribute:NSForegroundColorAttributeName range:NSRangeFromString(textView.text)];
    }
    textView.attributedText = attrStr;
}

@end
