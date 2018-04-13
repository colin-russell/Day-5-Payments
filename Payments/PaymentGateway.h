//
//  PaymentGateway.h
//  Payments
//
//  Created by Colin on 2018-04-13.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount : (NSInteger)paymentAmount;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;

- (void)processPaymentAmount : (NSInteger)paymentAmount;

@end
