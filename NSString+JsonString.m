






#import "NSString+JsonString.h"

@implementation NSString (JsonString)


+(NSString *)paramsJsonStringWithKeysAndValuesDictionary:(NSDictionary *)paramsDict{
    
    NSArray *keysArray = [paramsDict allKeys];
    NSArray *valuesArray = [paramsDict allValues];
    
    //参数头部字符串
    NSString *headString = @"{";
    //逗号
    NSString *commaString = @",";
    //参数尾部字符串
    NSString *footString = @"}#";
    
    //参数中间部分
    NSString *paramBodyString = @"";
    
    //遍历传入的参数key数组
    for (NSInteger i = 0; i < keysArray.count; i++) {
        
        //一个键值对字符串
        NSString *keyVauleString = [NSString stringWithFormat:@"\"key\":\"value%zd\"",i];
        
        //替换key
        NSString *temp = [keyVauleString stringByReplacingOccurrencesOfString:@"key" withString:keysArray[i]];
        
        //定义一个替换结果字符串
        NSString *resultString;
        
        //如果是数组中最后一个key
        if (i == keysArray.count-1) {
            //不拼接逗号
            resultString = [paramBodyString stringByAppendingFormat:@"%@",temp];
        }else{
            //拼接逗号
            resultString = [paramBodyString stringByAppendingFormat:@"%@%@",temp,commaString];
            
        }
        //赋值给参数中间部分
        paramBodyString = resultString;
    }
    
    
    NSString *paramString = [headString stringByAppendingFormat:@"%@%@",paramBodyString,footString];
    
    
    //遍历传入的参数value数组
    for (NSInteger i = 0; i < valuesArray.count; i++) {
        
        //将要替换的字符串
        NSString *willReplaceStr = [NSString stringWithFormat:@"value%zd",i];
        
        //替换value
        paramString = [paramString stringByReplacingOccurrencesOfString:willReplaceStr withString:valuesArray[i]];
    }
    
    return paramString;
    
}


/**
 拼接请求参数json字符串方法
 
 @param paramsKeysArr 请求参数key 数组
 @param paramsValuesArr 请求参数value 数组
 @return 返回请求参数json字符串
 */
+(NSString *)paramsJsonStringWithParamsKeysArray:(NSArray *)paramsKeysArr paramsValuesArray:(NSArray *)paramsValuesArr{
    
    //参数头部字符串
    NSString *headString = @"{";
    //逗号
    NSString *commaString = @",";
    //参数尾部字符串
    NSString *footString = @"}#";
    
    //参数中间部分
    NSString *paramBodyString = @"";
    
    //遍历传入的参数key数组
    for (NSInteger i = 0; i < paramsKeysArr.count; i++) {
        
        //一个键值对字符串
        NSString *keyVauleString = [NSString stringWithFormat:@"\"key\":\"value%zd\"",i];
        
        //替换key
        NSString *temp = [keyVauleString stringByReplacingOccurrencesOfString:@"key" withString:paramsKeysArr[i]];
        
        //定义一个替换结果字符串
        NSString *resultString;
        
        //如果是数组中最后一个key
        if (i == paramsKeysArr.count-1) {
            //不拼接逗号
            resultString = [paramBodyString stringByAppendingFormat:@"%@",temp];
        }else{
            //拼接逗号
            resultString = [paramBodyString stringByAppendingFormat:@"%@%@",temp,commaString];
            
        }
        //赋值给参数中间部分
        paramBodyString = resultString;
    }
    
    
    NSString *paramString = [headString stringByAppendingFormat:@"%@%@",paramBodyString,footString];
    
    
    //遍历传入的参数value数组
    for (NSInteger i = 0; i < paramsValuesArr.count; i++) {
        
        //将要替换的字符串
        NSString *willReplaceStr = [NSString stringWithFormat:@"value%zd",i];
        
        //替换value
        paramString = [paramString stringByReplacingOccurrencesOfString:willReplaceStr withString:paramsValuesArr[i]];
    }
    
    
    NSLog(@"paramBodyString - %@",paramString);
    
    //返回参数字符串
    return paramString;
    
    
}



@end
