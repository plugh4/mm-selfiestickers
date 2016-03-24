//
//  SelfieStickerViewController.m
//  mm-selfiestickers
//
//  Created by Christopher Serra on 3/24/16.
//  Copyright © 2016 plugh. All rights reserved.
//

#import "SelfieStickerViewController.h"
#import "Sticker.h"

@interface SelfieStickerViewController ()
@property Sticker *stickerView;
@end

@implementation SelfieStickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.stickerView = [[Sticker alloc] initWithImage:[UIImage imageNamed:@"glasses"]];
    [self.view addSubview:self.stickerView];
    self.stickerView.center = self.view.center;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
