//
//  ViewController.m
//  02UIButton
//
//  Created by lingdian on 17/9/1.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(void)createUIButton{
    //圆角类型的按钮  其他的type 包括了 dark light custom system 是不是很相似
    UIButton* button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    //不可以使用，因为[[UIButton alloc]init];之后 无法在设置buttonType了 他是只读模式的
//    UIButton* button2=[[UIButton alloc]init];
//    button2.buttonType=UIButtonTypeRoundedRect;
    //设置控件的位置 以及宽高
    button.frame=CGRectMake(100, 100, 100, 40);
    
    //p1 设置按钮的文字内容  p2 设置按钮的状态
    [button setTitle:@"按钮常态" forState:UIControlStateNormal];//常态下的文字
    [button setTitle:@"按钮按下" forState:UIControlStateHighlighted];//高亮按下状态的文字
    
    
    //设置字体颜色 第一个是颜色值  第二个是状态值  与设置文本是一样的
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    
    //tintcolor字体颜色设置的优先级 没有 settitlecolor高
    [button setTintColor:[UIColor whiteColor]];
    
    //设置字体的类型 以及字体大小  button中有一个Label类型的属性 所以设置字体可以设置titleLabel属性来设置
    button.titleLabel.font=[UIFont systemFontOfSize:20];
    //设置背景颜色
    button.backgroundColor=[UIColor grayColor];
    
    [self.view addSubview:button];
}

//使用带图片的按钮
-(void)createImgButton{
    //必须使用UIButtonTypeCustom 类型
    UIButton* imgBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    
    imgBtn.frame=CGRectMake(100, 200, 100, 100);
    
    //获取图片的对象  图片资源 可以拖拽过来  文件名 写入进去 必须带文件后缀
    UIImage* icon01=[UIImage imageNamed:@"publish_photo_icon.png"];
    UIImage* icon02=[UIImage imageNamed:@"publish_rijian_icon.png"];
    
    //设置不同状态的图片 相当于 android总的selector
    [imgBtn setImage:icon01 forState:UIControlStateNormal];
    [imgBtn setImage:icon02 forState:UIControlStateHighlighted];
    
    [self.view addSubview:imgBtn];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUIButton];
    [self createImgButton];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
