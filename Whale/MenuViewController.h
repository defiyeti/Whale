//
//  MenuViewController.h
//  Whäle
//
//  Created by Kunz Mainali on 11/1/14.
//  Copyright (c) 2014 North Hills Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MenuViewController;

@interface MenuViewController : UIViewController {

    IBOutlet UIView* sponser1;
    IBOutlet UIView* donate1;
    IBOutlet UIView* about;
    IBOutlet UIView* apply1;
    IBOutlet UIView* apply2;
    IBOutlet UIView* apply3;
    IBOutlet UIView* apply4;
    
    IBOutlet UIView* paymentType;
    
    IBOutlet UIView* bitcoin;
    
    IBOutlet UILabel* address;
    
    IBOutlet UIView* approved;
    
    IBOutlet UIView* approved2;
    
    IBOutlet UIView* denied;
    
    
    IBOutlet UIView* sponser2;
    IBOutlet UIView* sponser3;
    IBOutlet UIView* sponser4;
    IBOutlet UIView* sponser5;
    
    IBOutlet UIView* sponserHome;
    
    IBOutlet UIView* applicantHome1;
    
    IBOutlet UIView* applicantHome2;
    
    
    CGFloat amountNeeded;
    
    CGFloat amountToPay;
    
    CGFloat timeNeeded;
    
    CGFloat loanTime;
    
    IBOutlet UITextField* reason;
    IBOutlet UITextField* reason1;
    IBOutlet UITextField* reason2;
    IBOutlet UITextField* reason3;
    IBOutlet UITextField* reason4;
    IBOutlet UITextField* reason5;
    IBOutlet UITextField* reason6;
    IBOutlet UITextField* reason7;
    IBOutlet UITextField* reason8;
    IBOutlet UITextField* reason9;
    IBOutlet UITextField* reason10;
    IBOutlet UITextField* reason11;
    
    IBOutlet UILabel* soutstanding;
    
    IBOutlet UILabel* sduedate;
    
    IBOutlet UILabel* aoutstanding;
    
    IBOutlet UILabel* aduedate;
    
    NSString* merchantID;
    
    NSString* base64String;
    
    NSString* merchantPassword;
    
    CGFloat pay3yesno;
    
    NSString* string5;
    
    IBOutlet UIScrollView* scroller;
    
}

-(IBAction)Sponser;

-(IBAction)Donate;

-(IBAction)About;

-(IBAction)Apply;

-(IBAction)pay2;

-(IBAction)pay3;

-(IBAction)pay4;

-(IBAction)n100;
-(IBAction)n200;
-(IBAction)n300;
-(IBAction)n400;
-(IBAction)n500;

-(IBAction)m7;
-(IBAction)m14;
-(IBAction)m30;
-(IBAction)m60;
-(IBAction)m120;

-(IBAction)p100;
-(IBAction)p200;
-(IBAction)p300;
-(IBAction)p400;
-(IBAction)p500;

-(IBAction)p7;
-(IBAction)p14;
-(IBAction)p30;
-(IBAction)p60;
-(IBAction)p120;

-(IBAction)vic;

-(IBAction)applicantpay;

-(IBAction)applicantHomeNext;

-(IBAction)applicantHome;

-(IBAction)sponserHome;

-(IBAction)moreinfo;

-(IBAction)menu;

-(IBAction)bitcoin;

-(IBAction)credit;

-(IBAction)back;

-(IBAction)clipboard;

@end
