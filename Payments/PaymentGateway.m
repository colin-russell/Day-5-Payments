//
//  PaymentGateway.m
//  Payments
//
//  Created by Colin on 2018-04-13.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount : (NSInteger)paymentAmount {
    if ([self.delegate canProcessPayment] == YES){
        [self.delegate processPaymentAmount:paymentAmount];
    }
    else{
        NSLog(@"Sorry, your payment cannot be processed!");
    }
}

@end
