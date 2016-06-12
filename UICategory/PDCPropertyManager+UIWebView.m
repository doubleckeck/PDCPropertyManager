//
//  PDCPropertyManager+UIWebView.m
//  UICategory
//
//  Created by KH on 16/6/6.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "PDCPropertyManager+UIWebView.h"

@implementation PDCPropertyManager (UIWebView)

-(pdc_web_delegate )web_delegate
{
    return ^PDCPropertyManager *(id<UIWebViewDelegate > delegate){
        self.pdc_webView.delegate = delegate;
        return self;
    };
}

-(pdc_web_URLRequest )web_loadRequest
{
    return ^PDCPropertyManager *(NSURLRequest *request){
        [self.pdc_webView loadRequest:request];
        return self;
    };
}


-(pdc_bool )web_scalesPageToFit
{
    return ^PDCPropertyManager *(BOOL scalesPageToFit){
        self.pdc_webView.scalesPageToFit = scalesPageToFit;
        return self;
    };
}


-(pdc_web_dataDetectorTypes )web_dataDetectorTypes
{
    return ^PDCPropertyManager *(UIDataDetectorTypes dataDetectorTypes){
        self.pdc_webView.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}

-(pdc_bool )web_allowsInlineMediaPlayback
{
    return ^PDCPropertyManager *(BOOL allowsInlineMediaPlayback){
        self.pdc_webView.allowsInlineMediaPlayback = allowsInlineMediaPlayback;
        return self;
    };
}

-(pdc_bool )web_mediaPlaybackRequiresUserAction
{
    return ^PDCPropertyManager *(BOOL mediaPlaybackRequiresUserAction){
        self.pdc_webView.mediaPlaybackRequiresUserAction = mediaPlaybackRequiresUserAction;
        return self;
    };
}

-(pdc_bool )web_mediaPlaybackAllowsAirPlay
{
    return ^PDCPropertyManager *(BOOL mediaPlaybackAllowsAirPlay){
        self.pdc_webView.mediaPlaybackAllowsAirPlay = mediaPlaybackAllowsAirPlay;
        return self;
    };
}

-(pdc_bool )web_suppressesIncrementalRendering
{
    return ^PDCPropertyManager *(BOOL suppressesIncrementalRendering){
        self.pdc_webView.suppressesIncrementalRendering = suppressesIncrementalRendering;
        return self;
    };
}

-(pdc_bool )web_keyboardDisplayRequiresUserAction
{
    return ^PDCPropertyManager *(BOOL keyboardDisplayRequiresUserAction){
        self.pdc_webView.keyboardDisplayRequiresUserAction = keyboardDisplayRequiresUserAction;
        return self;
    };
}

-(pdc_web_webPaginationMode )web_paginationMode
{
    return ^PDCPropertyManager *(UIWebPaginationMode paginationMode){
        self.pdc_webView.paginationMode = paginationMode;
        return self;
    };
}

-(pdc_web_webPaginationBreakingMode )web_paginationBreakingMode
{
    return ^PDCPropertyManager *(UIWebPaginationBreakingMode paginationBreakingMode){
        self.pdc_webView.paginationBreakingMode = paginationBreakingMode;
        return self;
    };
}

-(pdc_float )web_pageLength
{
    return ^PDCPropertyManager *(CGFloat pageLength){
        self.pdc_webView.pageLength = pageLength;
        return self;
    };
}

-(pdc_float )web_gapBetweenPages
{
    return ^PDCPropertyManager *(CGFloat gapBetweenPages){
        self.pdc_webView.gapBetweenPages = gapBetweenPages;
        return self;
    };
}

-(pdc_bool )web_allowsPictureInPictureMediaPlayback
{
    return ^PDCPropertyManager *(BOOL allowsPictureInPictureMediaPlayback){
        self.pdc_webView.allowsPictureInPictureMediaPlayback = allowsPictureInPictureMediaPlayback;
        return self;
    };
}

-(pdc_bool )web_allowsLinkPreview
{
    return ^PDCPropertyManager *(BOOL allowsLinkPreview){
        self.pdc_webView.allowsLinkPreview = allowsLinkPreview;
        return self;
    };
}

@end
