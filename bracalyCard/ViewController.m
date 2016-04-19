//
//  ViewController.m
//  bracalyCard
//
//  Created by Vijit Munjal on 7/25/15.
//  Copyright (c) 2015 Vijit Munjal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NSString * strRightToLeft;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.strRightToLeft = [[NSString alloc]init];
    [self rightToLeft:@"aabbccddeeffgg"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)rightToLeft:(NSString*)str {
    
    if (str.length != 0) {
        self.strRightToLeft = [self.strRightToLeft stringByAppendingFormat:@"%c",[str characterAtIndex: str.length - 1]];
        [self rightToLeft:[str substringToIndex:str.length - 1]];
        
    }else{
        
        NSLog(@"Right To Left: %@", self.strRightToLeft);
        
    }
    
    
}


@end
