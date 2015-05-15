//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    NSInteger intValue = [number integerValue];
    
    NSInteger doubledIntValue = intValue * 2;
    
    return [NSNumber numberWithInteger:doubledIntValue];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray * numbers = [NSMutableArray array];
    for (; number <= otherNumber; number++) {
        [numbers addObject:[NSNumber numberWithLong:number]];
    }
    return numbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSNumber* min = [arrayOfNumbers valueForKeyPath:@"@min.self"];
    return [min intValue];
}

@end
