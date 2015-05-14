//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    return [characterArray componentsJoinedByString:@";"];

}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray * mutableCharacterArray = [NSMutableArray arrayWithArray:characterArray];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:nil];
    [mutableCharacterArray sortUsingDescriptors:@[sortDescriptor]];
    
    return  [NSArray arrayWithArray:mutableCharacterArray];
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSMutableArray * mutableCharacterArray = [NSMutableArray arrayWithArray:characterArray];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS 'Worf'"];
    [mutableCharacterArray filterUsingPredicate:containsWorf];
    
    if (mutableCharacterArray.count > 0){
        return YES;
    }

    return NO;
}

@end
