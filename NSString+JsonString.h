






#import <Foundation/Foundation.h>

@interface NSString (JsonString)

/**
 拼接请求参数json字符串方法
 拼接结果示例 : {"user":"111","psd":"222","yanzhengma":"333"}#
 @param paramsKeysArr 请求参数key 数组
 @param paramsValuesArr 请求参数value 数组
 @return 返回请求参数json字符串
 */
+(NSString *)paramsJsonStringWithParamsKeysArray:(NSArray *)paramsKeysArr paramsValuesArray:(NSArray *)paramsValuesArr;


+(NSString *)paramsJsonStringWithKeysAndValuesDictionary:(NSDictionary *)paramsDict;

@end
