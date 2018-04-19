//
//  FontAndColorMacros.h
//  MiAiApp
//
//  Created by 徐阳 on 2017/5/18.
//  Copyright © 2017年 徐阳. All rights reserved.
//

//字体大小和颜色配置

#ifndef FontAndColorMacros_h
#define FontAndColorMacros_h

#pragma mark -  间距区
#define KNormalSpace 12.0f

#pragma mark -  颜色区
//主题色 导航栏颜色
#define CNavBgColor  Color_Theme

#define CNavBgFontColor  UIColorFromRGB(0xffffff)

//默认页面背景色
#define CViewBgColor UIColorFromRGB(0xf2f2f2)

//分割线颜色
#define CLineColor UIColorFromRGB(0xededed)

#pragma mark -  字体区
#define Font_Navigationbar_Title                    FontBoldSystem(18.0f)

#define Font_10                                     FontSystem(10.0f)
#define Font_11                                     FontSystem(11.0f)
#define Font_12                                     FontSystem(12.0f)
#define Font_14                                     FontSystem(14.0f)
#define Font_16                                     FontSystem(16.0f)
#define Font_18                                     FontSystem(18.0f)

#endif /* FontAndColorMacros_h */
