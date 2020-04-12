#import "ArrayCalculator.h"

@implementation ArrayCalculator
+ (NSInteger)maxProductOf:(NSInteger)numberOfItems itemsFromArray:(NSArray *)array {
    NSMutableArray *newArray = [NSMutableArray new];
    for (int i = 0; i < array.count; i++) {
        if([[array objectAtIndex:i] isKindOfClass:[NSNumber class]])
        {
            [newArray addObject:[array objectAtIndex:i]];
        }
    }
    NSSortDescriptor *highestToLowest = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
    NSArray *newArray2 = [newArray sortedArrayUsingFunction:intSort context:NULL];
    [newArray sortUsingDescriptors:[NSArray arrayWithObject:highestToLowest]];
    if (numberOfItems == 0) {
        return 0;
    } else if (numberOfItems > newArray.count) {
        numberOfItems = newArray.count;
    }
    NSNumber *n = [NSNumber new];
    n = [newArray firstObject];
    for (int i = 1; i < numberOfItems; i++) {
        n =[NSNumber numberWithInteger: [n intValue] * [[newArray objectAtIndex:i] intValue]];
    }
    NSNumber *n2 = [NSNumber new];
    n2 = [newArray2 firstObject];
    for (int i = 1; i < numberOfItems; i++) {
        int a = [n2 intValue];
        int b = [[newArray2 objectAtIndex:i] intValue];
        int c = a * b;
        n2 =[NSNumber numberWithInteger: c];
    }
    if ([n2 intValue] < [n intValue]) {
        return [n intValue];
    } else {
        return [n2 intValue];
    }
}

+(NSArray *)sort:(NSArray*)array {
    NSMutableArray *newArray = [NSMutableArray new];
    for (int i = 0; i < array.count; i++) {
        if ([[array objectAtIndex:i] intValue] < 0) {
            if ([[array objectAtIndex:i] intValue] * -1 > [newArray.firstObject intValue]) {
                [newArray insertObject:[array objectAtIndex:i] atIndex:0];
            }
        }
    }
    return array;
}

NSInteger intSort(id num1, id num2, void *context)
{
    int v1 = [num1 intValue];
    int v2 = [num2 intValue];
    if (v1 < 0) {
        v1 = v1 * -1;
    }
    if (v2 < 0) {
        v2 = v2 * -1;
    }
    if (v1 > v2)
        return NSOrderedAscending;
    else if (v1 < v2)
        return NSOrderedDescending;
    else
        return NSOrderedSame;
}


@end
