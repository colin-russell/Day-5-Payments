//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Colin on 2018-04-13.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)paymentAmount { 
    NSLog(@"Paypal proccessed amount $%lu", paymentAmount);
}

- (BOOL)canProcessPayment {
    if(arc4random_uniform(2) == 1)
        return YES;
    else
        return NO;
}


@end
