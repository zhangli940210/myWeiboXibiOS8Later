//
//  XMGStatusCell.m
//  12-自定义不等高的cell-frame01-
//
//  Created by xiaomage on 16/1/30.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import "XMGStatusCell.h"
#import "XMGStatus.h"


@interface XMGStatusCell ()
/** 图像*/
@property (nonatomic ,weak) IBOutlet UIImageView *iconImageView;
/** 昵称*/
@property (nonatomic ,weak) IBOutlet UILabel *nameLabel;
/** vip*/
@property (nonatomic ,weak) IBOutlet UIImageView *vipImageView;
/** 正文*/
@property (nonatomic ,weak) IBOutlet UILabel *text_Label;
/** 配图*/
@property (nonatomic ,weak)IBOutlet UIImageView *pictureImageView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pictureHLc;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pictureBottomLc;

@end

@implementation XMGStatusCell

// 设置数据
- (void)setStatus:(XMGStatus *)status
{
    _status = status;
    self.iconImageView.image = [UIImage imageNamed:status.icon];
    
    self.nameLabel.text = status.name;
    
    if (status.isVip) { // 是VIP
        self.vipImageView.hidden = NO;
        self.nameLabel.textColor = [UIColor orangeColor];
    } else {
        self.vipImageView.hidden = YES;
        self.nameLabel.textColor = [UIColor blackColor];
    }
    
    self.text_Label.text = status.text;
    
    if (status.picture) { // 有配图
        self.pictureHLc.constant = 100;
        self.pictureBottomLc.constant = 10;
        self.pictureImageView.image = [UIImage imageNamed:status.picture];
    } else {
        self.pictureHLc.constant = 0;
        self.pictureBottomLc.constant = 0;
    }
}

@end
