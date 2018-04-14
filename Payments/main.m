//
//  main.m
//  Payments
//
//  Created by Colin on 2018-04-13.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        while(true){
        float randomDollarAmount = arc4random_uniform(900)+100;
        
        PaypalPaymentService *paypalPaymentService = [PaypalPaymentService new];
        StripePaymentService *stripePaymentService = [StripePaymentService new];
        AmazonPaymentService *amazonPaymentService = [AmazonPaymentService new];
        ApplePaymentService *applePaymentService = [ApplePaymentService new];
        PaymentGateway *paymentGateway = [PaymentGateway new];
        
            NSLog(@"Thank you for shopping at Acme.com. Your total today is $%0.02f, please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple >", randomDollarAmount);
        char str[100];
        fgets (str, 100, stdin);
            
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        int inputInt = [inputString intValue];
        
        NSLog(@"Entered int is: %d", inputInt);
        
        
        
        switch (inputInt) {
            case 1:
                NSLog(@"Paypal payment service was selected.");
                paymentGateway.delegate = paypalPaymentService;
                break;
            case 2:
                NSLog(@"Stripe payment service was selected.");
                paymentGateway.delegate = stripePaymentService;
                break;
            case 3:
                NSLog(@"Amazon payment service was selected.");
                paymentGateway.delegate = amazonPaymentService;
                break;
            case 4:
                NSLog(@"Apple payment service was selected.");
                paymentGateway.delegate = applePaymentService;
                break;
            default:
                break;
        }
        
        
        [paymentGateway processPaymentAmount:randomDollarAmount];
        
        }
    }
    return 0;
}
