//
//  ViewController.m
//  iOSDemo
//
//  Created by aaa on 2020/4/13.
//  Copyright © 2020 aaa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) UILabel * loginToBCYLabel;
@property (nonatomic) UITextField * phoneNumberTextField;
@property (nonatomic) UIButton * verificationCodeButton;
@property (nonatomic) UILabel * vCodeSent;
@property (nonatomic) UIButton * mianMiDengLuButton;
@property (nonatomic) UIButton * miMaDengLuButton;
@property (nonatomic) UIButton * suiBianKanKanButton;
@property (nonatomic) UIButton * signInWithAppleButton;
@end

@implementation ViewController
#pragma mark - Life Circle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self buildViews];
    
    //登录半次元title
    self.loginToBCYLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,50,200,200)];
    [self.loginToBCYLabel setFont: [UIFont fontWithName:@"Arial-BoldMT" size:30]];
    self.loginToBCYLabel.text = @"登录半次元";
    [self.view addSubview:self.loginToBCYLabel];
    
    //image
    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(260, 100, 150, 130)];
    UIImage *image = [UIImage imageNamed:@"unnamed.jpg"];
    imageHolder.image = image;
    // optional:
    // [imageHolder sizeToFit];
    [self.view addSubview:imageHolder];
    
    //text field box
    self.phoneNumberTextField = [[UITextField alloc] initWithFrame:CGRectMake(50,200,150,100)];
    self.phoneNumberTextField.text = nil;
    self.phoneNumberTextField.placeholder = @"请输入手机号";
    CALayer *bottomLine = [CALayer layer];
    bottomLine.frame = CGRectMake(0, 74, 300, 1);
    bottomLine.backgroundColor = [UIColor systemGray4Color].CGColor;
    [self.phoneNumberTextField setBorderStyle:UITextBorderStyleNone];
    [self.phoneNumberTextField.layer addSublayer:bottomLine];
    [self.view addSubview:self.phoneNumberTextField];

    //获取验证码button
    self.verificationCodeButton = [UIButton buttonWithType: UIButtonTypeSystem];
    [self.verificationCodeButton addTarget:self action:@selector(getVCode) forControlEvents:UIControlEventTouchUpInside];
    [self.verificationCodeButton setTitle:@"获取验证码" forState:UIControlStateNormal];
    [self.verificationCodeButton setBackgroundColor: UIColor.systemGray6Color];
    [self.verificationCodeButton setTitleColor:[UIColor systemGray4Color] forState:UIControlStateNormal];
    self.verificationCodeButton.frame = CGRectMake(50, 300, 300, 45);
    [self.view addSubview:self.verificationCodeButton];
    
    //免密登录button
    self.mianMiDengLuButton = [UIButton buttonWithType: UIButtonTypeSystem];
    [self.mianMiDengLuButton addTarget:self action:@selector(mianMiDengLuFoo) forControlEvents:UIControlEventTouchUpInside];
    [self.mianMiDengLuButton setTitle:@"免密登录" forState:UIControlStateNormal];
    [self.mianMiDengLuButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.mianMiDengLuButton.frame = CGRectMake(70, 400, 70, 44);
    [self.view addSubview:self.mianMiDengLuButton];
    
    //密码登录button
    self.miMaDengLuButton = [UIButton buttonWithType: UIButtonTypeSystem];
    [self.miMaDengLuButton addTarget:self action:@selector(miMaDengLuFoo) forControlEvents:UIControlEventTouchUpInside];
    [self.miMaDengLuButton setTitle:@"密码登录" forState:UIControlStateNormal];
    [self.miMaDengLuButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.miMaDengLuButton.frame = CGRectMake(160, 400, 70, 44);
    [self.view addSubview:self.miMaDengLuButton];
    
    //随便看看button
    self.suiBianKanKanButton = [UIButton buttonWithType: UIButtonTypeSystem];
    [self.suiBianKanKanButton addTarget:self action:@selector(suiBianKanKanFoo) forControlEvents:UIControlEventTouchUpInside];
    [self.suiBianKanKanButton setTitle:@"随便看看 >" forState:UIControlStateNormal];
    [self.suiBianKanKanButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.suiBianKanKanButton.frame = CGRectMake(250, 400, 80, 44);
    [self.view addSubview:self.suiBianKanKanButton];
    
    //signInWithAppleButton
    self.signInWithAppleButton = [UIButton buttonWithType: UIButtonTypeSystem];
    [self.signInWithAppleButton addTarget:self action:@selector(signInWithAppleFoo) forControlEvents:UIControlEventTouchUpInside];
    [self.signInWithAppleButton setTitle:@"Sign In With Apple " forState:UIControlStateNormal];
    [self.signInWithAppleButton.titleLabel setFont: [UIFont fontWithName:@"Arial-BoldMT" size:16]];
    [self.signInWithAppleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.signInWithAppleButton setBackgroundColor: UIColor.systemGray6Color];
    self.signInWithAppleButton.frame = CGRectMake(100, 800, 200, 50);
    [self.view addSubview:self.signInWithAppleButton];
}

- (void)buildViews {
    self.view.backgroundColor = UIColor.whiteColor;
    self.navigationItem.title = @"半次元";
}

- (void) getVCode {
    self.vCodeSent = [[UILabel alloc] initWithFrame:CGRectMake(20,500,200,200)];
    self.vCodeSent.text = @"验证码成功发送！";
    [self.view addSubview:self.vCodeSent];
}

- (void) mianMiDengLuFoo {
    
}

- (void) miMaDengLuFoo {
    
}

- (void) suiBianKanKanFoo {
    
}

- (void) signInWithAppleFoo {
    
}
@end
