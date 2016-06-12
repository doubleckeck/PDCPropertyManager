//
//  PDCPropertyManager+UIWebView.h
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager.h"

typedef PDCPropertyManager *(^pdc_web_delegate)(id<UIWebViewDelegate >);
typedef PDCPropertyManager *(^pdc_web_dataDetectorTypes)(UIDataDetectorTypes);
typedef PDCPropertyManager *(^pdc_web_webPaginationMode)(UIWebPaginationMode);
typedef PDCPropertyManager *(^pdc_web_webPaginationBreakingMode)(UIWebPaginationBreakingMode);
typedef PDCPropertyManager *(^pdc_web_URLRequest)(NSURLRequest *);

@interface PDCPropertyManager (UIWebView)
//@property (strong, nonatomic) UIWebView *webView;
@property (nonatomic, readonly, copy) pdc_web_delegate web_delegate;

@property (nonatomic, readonly, copy) pdc_web_URLRequest web_loadRequest;

@property (nonatomic, readonly, copy) pdc_bool web_scalesPageToFit;
@property (nonatomic, readonly, copy) pdc_web_dataDetectorTypes web_dataDetectorTypes NS_AVAILABLE_IOS(3_0);

@property (nonatomic, readonly, copy) pdc_bool web_allowsInlineMediaPlayback;
@property (nonatomic, readonly, copy) pdc_bool web_mediaPlaybackRequiresUserAction;
@property (nonatomic, readonly, copy) pdc_bool web_mediaPlaybackAllowsAirPlay;
@property (nonatomic, readonly, copy) pdc_bool web_suppressesIncrementalRendering;
@property (nonatomic, readonly, copy) pdc_bool web_keyboardDisplayRequiresUserAction;

@property (nonatomic, readonly, copy) pdc_web_webPaginationMode web_paginationMode NS_AVAILABLE_IOS(7_0);
@property (nonatomic, readonly, copy) pdc_web_webPaginationBreakingMode web_paginationBreakingMode NS_AVAILABLE_IOS(7_0);
@property (nonatomic, readonly, copy) pdc_float web_pageLength NS_AVAILABLE_IOS(7_0);
@property (nonatomic, readonly, copy) pdc_float web_gapBetweenPages NS_AVAILABLE_IOS(7_0);

@property (nonatomic, readonly, copy) pdc_bool web_allowsPictureInPictureMediaPlayback NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, copy) pdc_bool web_allowsLinkPreview NS_AVAILABLE_IOS(9_0); // default is NO

@end
