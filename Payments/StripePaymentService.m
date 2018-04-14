//
//  StripePaymentService.m
//  Payments
//
//  Created by Colin on 2018-04-13.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)paymentAmount { 
    NSLog(@"Stripe proccessed amount $%lu", paymentAmount);
}

- (BOOL)canProcessPayment {
    if(arc4random_uniform(2) == 1)
        return NO;
    else
        return YES;
}


@end
