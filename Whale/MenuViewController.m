//
//  MenuViewController.m
//  Whäle
//
//  Created by Kunz Mainali on 11/1/14.
//  Copyright (c) 2014 North Hills Inc. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController () <UITextFieldDelegate, UIScrollViewDelegate>

@end

@implementation MenuViewController 

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [scroller setContentSize:CGSizeMake(320, 1005)];
    
}


-(void)Sponser {
    [self.view addSubview:sponser1];
}

-(void)Apply {
    [self.view addSubview:apply1];
}

-(void)about {
    [self.view addSubview:about];
}

-(void)donate {
    [self.view addSubview:donate1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)n100 {
    amountNeeded = 100;
    [self.view addSubview:apply2];
}


- (void)n200 {
    amountNeeded = 200;
    [self.view addSubview:apply2];
}

- (void)n300 {
    amountNeeded = 300;
    [self.view addSubview:apply2];
}

- (void)n400 {
    amountNeeded = 400;
    [self.view addSubview:apply2];
}

- (void)n500 {
    amountNeeded = 500;
    [self.view addSubview:apply2];
}

- (void)m7 {
    timeNeeded = 7;
    [self.view addSubview:apply3];
}

- (void)m14 {
    timeNeeded = 14;
    [self.view addSubview:apply3];

}

- (void)m30 {
    timeNeeded = 30;
    [self.view addSubview:apply3];

}

- (void)m60 {
    timeNeeded = 60;
    [self.view addSubview:apply3];

}

- (void)m120 {
    timeNeeded = 120;
    [self.view addSubview:apply3];

}


- (void)p100 {
    amountToPay = 100;
    [self.view addSubview:sponser2];
}

- (void)p200 {
    amountToPay = 200;
    [self.view addSubview:sponser2];
}
- (void)p300 {
    amountToPay = 300;
    [self.view addSubview:sponser2];
}
- (void)p400 {
    amountToPay = 400;
    [self.view addSubview:sponser2];
}
- (void)p500 {
    amountToPay = 500;
    [self.view addSubview:sponser2];
}


- (void)p7 {
    loanTime = 7;
    [self.view addSubview:sponser3];
}
- (void)p14 {
    loanTime = 14;
    [self.view addSubview:sponser3];
}
- (void)p30 {
    loanTime = 30;
    [self.view addSubview:sponser3];
}
- (void)p60 {
    loanTime = 60;
    [self.view addSubview:sponser3];
}
- (void)p120 {
    loanTime = 120;
    [self.view addSubview:sponser3];
}

-(void)vic {
    [self.view addSubview:paymentType];
}

-(void)applicantpay{
    [self.view addSubview:apply4];
}

-(void)sponserHome {
    [self.view addSubview:sponserHome];
    soutstanding.text = [NSString stringWithFormat:(@"$%.0f.00"),amountToPay];
}

-(void)applicantHome {
    [self.view addSubview:applicantHome1];
}

-(void)applicantHomeNext {
    [self.view addSubview:applicantHome2];
    aoutstanding.text = [NSString stringWithFormat:(@"$%.0f.00"),amountNeeded];
}

-(void)moreinfo {
    [self.view addSubview:sponser5];
}

-(void)pay3 {
    [self pay2];
    pay3yesno = 1;
}

-(void)back {
    [self.view addSubview:paymentType];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    if ([reason isFirstResponder] && [touch view] != reason) {
        [reason resignFirstResponder];
    } else if ([reason1 isFirstResponder] && [touch view] != reason1) {
        [reason1 resignFirstResponder];
    } else if ([reason2 isFirstResponder] && [touch view] != reason2) {
        [reason2 resignFirstResponder];
    } else if ([reason3 isFirstResponder] && [touch view] != reason3) {
        [reason3 resignFirstResponder];
    } else if ([reason4 isFirstResponder] && [touch view] != reason4) {
        [reason4 resignFirstResponder];
    } else if ([reason5 isFirstResponder] && [touch view] != reason5) {
        [reason5 resignFirstResponder];
    } else if ([reason6 isFirstResponder] && [touch view] != reason6) {
        [reason6 resignFirstResponder];
    } else if ([reason7 isFirstResponder] && [touch view] != reason7) {
        [reason7 resignFirstResponder];
    } else if ([reason8 isFirstResponder] && [touch view] != reason8) {
        [reason8 resignFirstResponder];
    } else if ([reason9 isFirstResponder] && [touch view] != reason9) {
        [reason9 resignFirstResponder];
    } else if ([reason10 isFirstResponder] && [touch view] != reason10) {
        [reason10 resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}

/*-(void)pay {
    //string for the URL request
    NSString *myUrlString = @"https://w1.mercurycert.net/PaymentsAPI/Credit/Sale";
    //create string for parameters that we need to send in the HTTP POST body
    NSString *body = [NSString stringWithFormat:@"countryCode=%@", json.txt];
    //create a NSURL object from the string data
    NSURL *myUrl = [NSURL URLWithString:myUrlString];
    
    //create a mutable HTTP request
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:myUrl];
    //sets the receiver’s timeout interval, in seconds
    [urlRequest setTimeoutInterval:30.0f];
    //sets the receiver’s HTTP request method
    [urlRequest setHTTPMethod:@"POST"];
    //sets the request body of the receiver to the specified data.
    [urlRequest setHTTPBody:[body dataUsingEncoding:NSUTF8StringEncoding]];
    
    //allocate a new operation queue
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    //Loads the data for a URL request and executes a handler block on an
    //operation queue when the request completes or fails.
    [NSURLConnection
     sendAsynchronousRequest:urlRequest
     queue:queue
     completionHandler:^(NSURLResponse *response,
                         NSData *data,
                         NSError *error) {
         if ([data length] >0 && error == nil){
             //process the JSON response
             //use the main queue so that we can interact with the screen
             dispatch_async(dispatch_get_main_queue(), ^{
                 [self parseResponse:data];
             });
         }
         else if ([data length] == 0 && error == nil){
             NSLog(@"Empty Response, not sure why?");
         }
         else if (error != nil){
             NSLog(@"Not again, what is the error = %@", error);
         }
     }];

}

- (void) parseResponse:(NSData *) data {
    
    NSString *myData = [[NSString alloc] initWithData:data
                                             encoding:NSUTF8StringEncoding];
    NSLog(@"JSON data = %@", myData);
    NSError *error = nil;
    
    //parsing the JSON response
    id jsonObject = [NSJSONSerialization
                     JSONObjectWithData:data
                     options:NSJSONReadingAllowFragments
                     error:&error];
    if (jsonObject != nil && error == nil){
        NSLog(@"Successfully deserialized...");
        
        //check if the country code was valid
        NSNumber *success = [jsonObject objectForKey:@"success"];
        if([success boolValue] == YES){
            
        }
    }
    
}

 */

-(void)menu {
    MenuViewController* choose =  [[MenuViewController alloc] initWithNibName:@"MenuViewController" bundle:nil];
    NSLog(@"go");
    [self presentViewController:choose animated:NO completion:nil];
}

-(void)pay2 {
    
    pay3yesno = 0;
    
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    [dictionary setObject:@"1001" forKey:@"InvoiceNo"];
    [dictionary setObject:@"1001" forKey:@"RefNo"];
    [dictionary setObject:@"GitHub REST.Obj" forKey:@"Memo"];
    [dictionary setObject:@"1.00" forKey:@"Purchase"];
    [dictionary setObject:@"02" forKey:@"LaneID"];
    [dictionary setObject:@"OneTime" forKey:@"Frequency"];
    [dictionary setObject:@"RecordNumberRequested" forKey:@"RecordNo"];
    //[dictionary setObject:@"MagneSafe" forKey:@"EncryptedFormat"];
    [dictionary setObject:@"Swiped" forKey:@"AccountSource"];
    //[dictionary setObject:@"2F8248964608156B2B1745287B44CA90A349905F905514ABE3979D7957F13804705684B1C9D5641C" forKey:@"EncryptedBlock"];
    //[dictionary setObject:@"9500030000040C200026" forKey:@"EncryptedKey"];
    [dictionary setObject:@"5499990123456781" forKey:@"AcctNo"];
    [dictionary setObject:@"0816" forKey:@"ExpDate"];
    [dictionary setObject:@"money2020" forKey:@"OperatorID"];
    
    /*{
        "InvoiceNo":"1",
        "RefNo":"1",
        "Memo":"Team2 Money2020",
        "Purchase":"1.00",
        "Frequency":"OneTime",
        "RecordNo":"RecordNumberRequested",
        "AccountSource":"Swiped",
        "AcctNo":"5499990123456781",
        "ExpDate":"0816",
        "OperatorID":"money2020",
    }*/
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://w1.mercurycert.net/PaymentsAPI/Credit/Sale"]];
    [request setTimeoutInterval:30];
    [request setHTTPMethod:@"POST"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    merchantID = @"023358150511666";
    
    merchantPassword = @"xyz";

    
    // Add Authorization header
    //NSString *credentials = [NSString stringWithFormat:@"%@:%@", merchantID, merchantPassword];
    NSString *base64Credentials = @"MDIzMzU4MTUwNTExNjY2Onh5eg==";
    [request addValue:[@"Basic " stringByAppendingString:base64Credentials] forHTTPHeaderField:@"Authorization"];
    
    // Serialize NSDictionary to JSON data
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:nil];
    
    // Add JSON data to request body
    [request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[jsonData length]] forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody: jsonData];
    
    // Process request async
    [NSURLConnection connectionWithRequest:request delegate:self];
}

- (void) pay4 {
    //NSMutableDictionary *dictionary = [NSMutableDictionary new];
    //[dictionary setObject:@"1A8JiWcwvpY7tAopUkSnGuEYHmzGYfZPiq" forKey:@"receiving_address"];
    //[dictionary setObject:@"https%3A%2F%2Fwww.facebook.com" forKey:@"callback_url"];
    
    pay3yesno = 2;
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://blockchain.info/api/receive?method=create&address=1A8JiWcwvpY7tAopUkSnGuEYHmzGYfZPiq&callback=https%3A%2F%2Fwww.facebook.com"]];
    //[request setTimeoutInterval:30];
    //[request setHTTPMethod:@"POST"];
    //[request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    //[request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    merchantID = @"023358150511666";
    
    merchantPassword = @"xyz";
    
    
    // Add Authorization header
    //NSString *credentials = [NSString stringWithFormat:@"%@:%@", merchantID, merchantPassword];
    //NSString *base64Credentials = @"MDIzMzU4MTUwNTExNjY2Onh5eg==";
    //[request addValue:[@"Basic " stringByAppendingString:base64Credentials] forHTTPHeaderField:@"Authorization"];
    
    // Serialize NSDictionary to JSON data
    //NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:nil];
    
    // Add JSON data to request body
    //[request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[jsonData length]] forHTTPHeaderField:@"Content-Length"];
    //[request setHTTPBody: jsonData];
    
    // Process request async
    [NSURLConnection connectionWithRequest:request delegate:self];

}

-(void)credit {
    [self.view addSubview:sponser4];
}

-(void)clipboard {
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = [NSString stringWithFormat:(@"%@"), string5];
}

- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    
    // Deserialize response from REST service
    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    if (pay3yesno == 2) {
        
        [self.view addSubview:bitcoin];
    
    string5 = [result objectForKey:@"input_address"];
        
        address.text = string5;
    
    NSLog([NSString stringWithFormat:(@"%@"), string5]);
        
    } else {
    
    if ([result objectForKey:@"CmdStatus"]
        && [[result objectForKey:@"CmdStatus"] isEqualToString:@"Approved"]) {
        
        NSLog(@"yayyyy");
        if (pay3yesno == 1) {
            [self.view addSubview:approved2];
        } else {
        [self.view addSubview:approved];
        }
                
        NSString* token = [result objectForKey:@"RecordNo"];
        
        NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:token forKey:@"token"];
        
        NSLog([NSString stringWithFormat:(@"%@"), token]);
        
        // Approved logic here
        
    } else {
        
        [self.view addSubview:denied];
        
         NSLog(@"boooo");
        // Declined logic here
        
    }
    }
}

@end
