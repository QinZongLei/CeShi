//
//  ViewController.m
//  aa
//
//  Created by 覃 on 2020/7/9.
//  Copyright © 2020 Qin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel*myLabel=[[UILabel alloc] initWithFrame:CGRectMake(50, 100, 100, 200)];
    myLabel.text=@"Labelasa";
    myLabel.textColor=[UIColor whiteColor];
    myLabel.backgroundColor=[UIColor redColor];
    [self.view addSubview:myLabel];
}


@end
