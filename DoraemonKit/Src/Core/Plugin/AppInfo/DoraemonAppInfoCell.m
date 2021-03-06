//
//  DoraemonAppInfoCell.m
//  Aspects
//
//  Created by yixiang on 2018/4/14.
//

#import "DoraemonAppInfoCell.h"
#import "UIView+DoraemonPositioning.h"
#import "DoraemonDefine.h"

@interface DoraemonAppInfoCell()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *valueLabel;

@end

@implementation DoraemonAppInfoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        
        self.titleLabel = [[UILabel alloc] init];
        self.titleLabel.textColor = [UIColor blackColor];
        self.titleLabel.font = [UIFont systemFontOfSize:18];
        [self.contentView addSubview:self.titleLabel];
        
        self.valueLabel = [[UILabel alloc] init];
        self.valueLabel.textColor = [UIColor blackColor];
        self.valueLabel.font = [UIFont systemFontOfSize:18];
        [self.contentView addSubview:self.valueLabel];
    }
    return self;
}

- (void)renderUIWithData:(NSDictionary *)data{
    NSString *title = data[@"title"];
    NSString *value = data[@"value"];
    
    self.titleLabel.text = title;
    self.valueLabel.text = value;
    
    [self.titleLabel sizeToFit];
    [self.valueLabel sizeToFit];
    
    self.titleLabel.frame = CGRectMake(10, 0, self.titleLabel.doraemon_width, 60);
    self.valueLabel.frame = CGRectMake(DoraemonScreenWidth-10-self.valueLabel.doraemon_width, 0, self.valueLabel.doraemon_width, 60);
}


@end
