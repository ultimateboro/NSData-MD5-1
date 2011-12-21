//
//  NSData+MD5.m
//  NSDataMD5
//
//  Created by Guilherme Andrade on 12/21/11.
//  Copyright (c) 2011 2thinkers. All rights reserved.
//

#import "NSData+MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (MD5)

+ (NSString *)MD5Hash:(NSData *)input {
    
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(input.bytes, input.length, result);

    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH*2];
    for (int i = 0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [ret appendFormat:@"%02x",result[i]];
    }
    return ret;
}

- (NSString *)MD5Hash {
    return [NSData MD5Hash:self];
}

@end
