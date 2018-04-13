//
//  main.m
//  Payments
//
//  Created by Colin on 2018-04-13.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double randomDollarAmount = arc4random_uniform(900)+100;
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%f Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", randomDollarAmount);
        char str[100];
        fgets (str, 100, stdin);
            
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        int inputInt = [inputString intValue];
        
        NSLog(@"Entered int is: %d", inputInt);
        
    }
    return 0;
}
