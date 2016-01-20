//
//  ViewController.m
//  ZCFileDataCacheDome
//
//  Created by t_zc on 16/1/20.
//  Copyright © 2016年 t_zc. All rights reserved.
//

#import "ViewController.h"
#import "ZCFileDataCache.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Do any additional setup after loading the view, typically from a nib.
    if (![[ZCFileDataCache sharedInstance] objectForKey:@"testDict"]) {
        [[ZCFileDataCache sharedInstance] setObject:@{@"test":@"123"} forKey:@"testDict"];
    }else{
        NSLog(@"testDict=%@", [[ZCFileDataCache sharedInstance] objectForKey:@"testDict"]);
    }
    
    if (![[ZCFileDataCache sharedInstance] objectForKey:@"testArray"]) {
        [[ZCFileDataCache sharedInstance] setObject:@[@"1", @"2", @"3"] forKey:@"testArray"];
    }else{
        NSLog(@"testArray=%@", [[ZCFileDataCache sharedInstance] objectForKey:@"testArray"]);
    }
    
    if (![[ZCFileDataCache sharedInstance] objectForKey:@"testString"]) {
        [[ZCFileDataCache sharedInstance] setObject:@"hello world" forKey:@"testString"];
    }else{
        NSLog(@"testString=%@", [[ZCFileDataCache sharedInstance] objectForKey:@"testString"]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
