//
//  ApplePaymentService.m
//  Payments
//
//  Created by Colin on 2018-04-14.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(NSInteger)paymentAmount {
    NSLog(@"Apple processed amount $%lu", paymentAmount);
}

- (BOOL)canProcessPayment {
    if(arc4random_uniform(2) == 1)
        return YES;
    else
        return NO;
}

@end

