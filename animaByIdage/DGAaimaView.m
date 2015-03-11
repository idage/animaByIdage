//
//  DGAaimaView.m
//  animaByIdage
//
//  Created by chuangye on 15-3-11.
//  Copyright (c) 2015年 chuangye. All rights reserved.
//

#import "DGAaimaView.h"
#import "DGEarthView.h"
#import <math.h>
@implementation DGAaimaView
{
    
    CGFloat  itemCloudY;
    CGFloat itemBigCloudY;
    CGFloat itemletterY;
}
-(void)DGAaimaView:(DGAaimaView*)animView BigCloudSpeed:(CGFloat)BigCS smallCloudSpeed:(CGFloat)SmaCS earthSepped:(CGFloat)eCS huojianSepped:(CGFloat)hCS littleSpeed:(CGFloat)LCS
{
    itemCloudY=SmaCS;
    itemBigCloudY =BigCS;
    itemletterY=LCS;
    _ainmeView.EarthSepped=eCS;
    _ainmeView.huojiansepped=hCS;
    
}
- (void)awakeFromNib
{
    [self animaInit];
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self animaInit];
    }
    return self;
}
-(void)animaInit
{
    itemBigCloudY=1.5;
    itemCloudY=1;
    itemletterY=2;
    self.backgroundColor =[UIColor blueColor];
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    
    DGEarthView * ainmeView =[[DGEarthView alloc]initWithFrame:self.bounds];
    [self addSubview:ainmeView];
    
    
    _CloudY=72;
    
   // if (_animaType==1) {
        _BigCloudY=79;
     //   _CloudY=62;
        _letterY=70;

    


}

- (void)drawRect:(CGRect)rect
{
    
    if (_animaType==UIClouldAnimaFromLeft) {
    //大云
    self.BigCloudY-=itemBigCloudY;
    if (self.BigCloudY <=-150 ) {
        self.BigCloudY = 320;
    }
    UIImage *imageBigYun = [UIImage imageNamed:@"ream@3x"];
    [imageBigYun drawAtPoint:CGPointMake(self.BigCloudY,55 )];
    
    //D
    self.letterY-=itemletterY;
    if (self.letterY <=-150 ) {
        self.letterY = 320;
    }
    UIImage *imageD = [UIImage imageNamed:@"D@3X"];
    [imageD drawAtPoint:CGPointMake(self.letterY,85 )];
        //小云
    self.CloudY-=itemCloudY;
    
    if (self.CloudY <= -50) {
        self.CloudY = 320;
    }
    
    UIImage *image = [UIImage imageNamed:@"yun"];
    [image drawAtPoint:CGPointMake(self.CloudY,130 )];
    }else
    {
        
        //大云
        self.BigCloudY-=itemBigCloudY/10;
        if (self.BigCloudY <=60 ) {
         CGFloat item =   fabsf(itemBigCloudY);
            itemBigCloudY=-item;
            
        }else if (self.BigCloudY>=80)
        {
            CGFloat item =   fabsf(itemBigCloudY);
            itemBigCloudY=item;
        }
        UIImage *imageBigYun = [UIImage imageNamed:@"ream@3x"];
        [imageBigYun drawAtPoint:CGPointMake(150,self.BigCloudY )];
        
        //D
        self.letterY-=itemletterY/10;
        if (self.letterY <=65 ) {
            CGFloat item =   fabsf(itemletterY);
            itemletterY=-item;
            
        }else if (self.letterY>=75)
        {
            CGFloat item =   fabsf(itemletterY);
            itemletterY=item;
        }
        UIImage *imageD = [UIImage imageNamed:@"D@3X"];
        [imageD drawAtPoint:CGPointMake(85,self.letterY )];
        //小云
        self.CloudY-=itemCloudY/10;
        
        if (self.CloudY <=70 ) {
            CGFloat item =   fabsf(itemCloudY);
            itemCloudY=-item;
            
        }else if (self.CloudY>=85)
        {
            CGFloat item =   fabsf(itemCloudY);
            itemCloudY=item;
        }
        UIImage *image = [UIImage imageNamed:@"yun"];
        [image drawAtPoint:CGPointMake(30,self.CloudY )];
        
    }
    
}


@end
