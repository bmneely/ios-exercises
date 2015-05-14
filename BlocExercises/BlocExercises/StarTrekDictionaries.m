//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray * mutableDrinkArray = [[NSMutableArray alloc]init];

    for (NSDictionary *characterDictionary in charactersArray) {
        [mutableDrinkArray addObject:characterDictionary[@"favorite drink"]];
    }
    
    return  [NSArray arrayWithArray:mutableDrinkArray];
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *mutableCharacterDictionary = [characterDictionary mutableCopy];

    [mutableCharacterDictionary setObject:@"Today is a good day to die" forKey:@"quote"];
    return [NSDictionary dictionaryWithDictionary:mutableCharacterDictionary];
}

@end
