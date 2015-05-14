//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSInteger lowNumber;
    NSInteger highNumber;

    if (number > otherNumber) {
        highNumber = number;
        lowNumber = otherNumber;
    } else {
        highNumber = otherNumber;
        lowNumber = number;
    }
    
    NSMutableString *result = [NSMutableString string];
    for(; lowNumber <= highNumber; lowNumber++){
        [result appendString:[@(lowNumber) stringValue]];

    }
    return result;
}

@end
