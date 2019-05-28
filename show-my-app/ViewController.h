//
//  ViewController.h
//  show-my-app
//
//  Created by JFC idéMobi on 19/05/2019.
//  Copyright © 2019 idéMobi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
#import "ShowMyApp.h"

@interface ViewController : NSViewController {
    
    ShowMyApp *ShowMyAppInstance;
    
    
    IBOutlet NSTextField *appNameTextField; // &n=xxxxx
    IBOutlet NSSegmentedControl *designSegmentedControl; // &d=x
    IBOutlet NSColorWell *designColor; // &c=x
    IBOutlet NSColorWell *designColorBackground; // &k=x
    
    IBOutlet NSButton *tinySwith;  // &t=0/1
    IBOutlet NSButton *oneIconOnlySwith;  // &i=0/1
    
    IBOutlet NSButton *referencedUserSwith;
    IBOutlet NSTextField *reccordID;  // &r=xxxxx
    
    IBOutlet NSTextField *iPhoneTextField; // &a=xxxxx
    IBOutlet NSTextField *iPadTextField; // &b=xxxxx
    IBOutlet NSTextField *macOSTextField; // &m=xxxxx
    IBOutlet NSTextField *tvOSTextField; // &q=xxxxx
    
    IBOutlet NSTextField *androidTextField;  // &g=xxxxx
    IBOutlet NSTextField *androidTabletTextField;  // &h=xxxxx
    
    IBOutlet NSTextField *windowsTextField;  // &w=xxxxx
    IBOutlet NSTextField *windowsPhoneTextField;  // &x=xxxxx
    
    IBOutlet NSTextField *steamTextField;  // &s=xxxxx
    
    IBOutlet NSTextField *textURL;
    IBOutlet NSTextField *textTinyURL;
    IBOutlet NSImageView *imageQRCode;
    IBOutlet NSImageView *imageTinyQRCode;
    
    IBOutlet WKWebView *webView;
    
}
-(ShowMyApp*) FormAnalyze;

-(IBAction)Preview:(id)sSender;

-(IBAction)ShareInWebBrowser:(id)sSender;

-(IBAction)ShareFull:(id)sSender;
-(IBAction)ShareTiny:(id)sSender;
-(IBAction)ShareFullQRCode:(id)sSender;
-(IBAction)ShareTinyQRCode:(id)sSender;

-(IBAction)ShareServiceTest:(id)sSender;
@end

