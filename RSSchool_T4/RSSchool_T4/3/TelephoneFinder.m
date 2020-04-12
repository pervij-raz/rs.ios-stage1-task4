#import "TelephoneFinder.h"

@implementation TelephoneFinder
- (NSArray <NSString*>*)findAllNumbersFromGivenNumber:(NSString*)number {
    if ([number intValue] < 0 ) {
        return nil;
    }
    NSMutableArray *result = [NSMutableArray new];
    NSArray *array1 = @[@2, @4];
    NSArray *array2 = @[@1, @5, @3];
    NSArray *array3 = @[@6, @2];
    NSArray *array4 = @[@1, @5, @7];
    NSArray *array5 = @[@2, @6, @4, @8];
    NSArray *array6 = @[@3, @5, @9];
    NSArray *array7 = @[@4, @8];
    NSArray *array8 = @[@9, @5, @7, @0];
    NSArray *array9 = @[@8, @6];
    NSArray *array0 = @[@8];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 0; i < number.length; i ++) {
        [array addObject:[NSString stringWithFormat:@"%c", [number characterAtIndex:i]]];
    }
    for (int i = 0; i < array.count; i ++) {
        NSString *num = array[i];
        switch ([num intValue]) {
          case 0:
            for (int a = 0; a < array0.count; a ++) {
                array[i] = [NSString stringWithString:array0[a]];
                NSString *str = [array componentsJoinedByString:@""];
                [result addObject:str];
            }
            array[i] = [NSString stringWithString:num];
            break;
            case 1:
            for (int a = 0; a < array1.count; a ++) {
                array[i] = [NSString stringWithString:array1[a]];
                NSString *str = [array componentsJoinedByString:@""];
                [result addObject:str];
            }
            array[i] = [NSString stringWithString:num];
            break;
            case 2:
            for (int a = 0; a < array2.count; a ++) {
                array[i] = [NSString stringWithString:array2[a]];
                NSString *str = [array componentsJoinedByString:@""];
                [result addObject:str];
            }
            array[i] = [NSString stringWithString:num];
            break;
            case 3:
            for (int a = 0; a < array3.count; a ++) {
                array[i] = [NSString stringWithString:array3[a]];
                NSString *str = [array componentsJoinedByString:@""];
                [result addObject:str];
            }
            array[i] = [NSString stringWithString:num];
            break;
            case 4:
            for (int a = 0; a < array4.count; a ++) {
                array[i] = [NSString stringWithString:array4[a]];
                NSString *str = [array componentsJoinedByString:@""];
                [result addObject:str];
            }
            array[i] = [NSString stringWithString:num];
            break;
            case 5:
            for (int a = 0; a < array5.count; a ++) {
                array[i] = [NSString stringWithString:array5[a]];
                NSString *str = [array componentsJoinedByString:@""];
                [result addObject:str];
            }
            array[i] = [NSString stringWithString:num];
            break;
            case 6:
            for (int a = 0; a < array6.count; a ++) {
                array[i] = [NSString stringWithString:array6[a]];
                NSString *str = [array componentsJoinedByString:@""];
                [result addObject:str];
            }
            array[i] = [NSString stringWithString:num];
            break;
            case 7:
            for (int a = 0; a < array7.count; a ++) {
                array[i] = [NSString stringWithString:array7[a]];
                NSString *str = [array componentsJoinedByString:@""];
                [result addObject:str];
            }
            array[i] = [NSString stringWithString:num];
            break;
            case 8:
            for (int a = 0; a < array8.count; a ++) {
                array[i] = [NSString stringWithString:array8[a]];
                NSString *str = [array componentsJoinedByString:@""];
                [result addObject:str];
            }
            array[i] = [NSString stringWithString:num];
            break;
            case 9:
            for (int a = 0; a < array9.count; a ++) {
                array[i] = [NSString stringWithString:array9[a]];
                NSString *str = [array componentsJoinedByString:@""];
                [result addObject:str];
            }
            array[i] = [NSString stringWithString:num];
            break;
          default:
            break;
        }
    }
    return result;
}

@end
