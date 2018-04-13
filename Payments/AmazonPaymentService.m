//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Colin on 2018-04-13.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService



- (void)processPaymentAmount:(NSInteger)paymentAmount { 
    
}

- (BOOL)canProcessPayment { 
    if(arc4random_uniform(1) == 1)
        return YES;
    else
        return NO;
}


@end
