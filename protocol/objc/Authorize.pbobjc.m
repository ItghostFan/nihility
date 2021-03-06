// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: authorize.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import <stdatomic.h>

#import "Authorize.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - AuthorizeRoot

@implementation AuthorizeRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - AuthorizeRoot_FileDescriptor

static GPBFileDescriptor *AuthorizeRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"Authorize"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum AccountType

GPBEnumDescriptor *AccountType_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Anonymous\000Phone\000Email\000";
    static const int32_t values[] = {
        AccountType_Anonymous,
        AccountType_Phone,
        AccountType_Email,
    };
    static const char *extraTextFormatInfo = "\003\000\t\000\001\005\000\002\005\000";
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(AccountType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:AccountType_IsValidValue
                              extraTextFormatInfo:extraTextFormatInfo];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL AccountType_IsValidValue(int32_t value__) {
  switch (value__) {
    case AccountType_Anonymous:
    case AccountType_Phone:
    case AccountType_Email:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum AuthorizeType

GPBEnumDescriptor *AuthorizeType_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Password\000VerifyCode\000AccessToken\000AccessCo"
        "de\000";
    static const int32_t values[] = {
        AuthorizeType_Password,
        AuthorizeType_VerifyCode,
        AuthorizeType_AccessToken,
        AuthorizeType_AccessCode,
    };
    static const char *extraTextFormatInfo = "\004\000\010\000\001\n\000\002\013\000\003\n\000";
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(AuthorizeType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:AuthorizeType_IsValidValue
                              extraTextFormatInfo:extraTextFormatInfo];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL AuthorizeType_IsValidValue(int32_t value__) {
  switch (value__) {
    case AuthorizeType_Password:
    case AuthorizeType_VerifyCode:
    case AuthorizeType_AccessToken:
    case AuthorizeType_AccessCode:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - AuthorizeMethod

@implementation AuthorizeMethod

@dynamic authorizeType;
@dynamic secretKey;

typedef struct AuthorizeMethod__storage_ {
  uint32_t _has_storage_[1];
  AuthorizeType authorizeType;
  NSString *secretKey;
} AuthorizeMethod__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "authorizeType",
        .dataTypeSpecific.enumDescFunc = AuthorizeType_EnumDescriptor,
        .number = AuthorizeMethod_FieldNumber_AuthorizeType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AuthorizeMethod__storage_, authorizeType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "secretKey",
        .dataTypeSpecific.className = NULL,
        .number = AuthorizeMethod_FieldNumber_SecretKey,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AuthorizeMethod__storage_, secretKey),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AuthorizeMethod class]
                                     rootClass:[AuthorizeRoot class]
                                          file:AuthorizeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AuthorizeMethod__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\r\000\002\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t AuthorizeMethod_AuthorizeType_RawValue(AuthorizeMethod *message) {
  GPBDescriptor *descriptor = [AuthorizeMethod descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:AuthorizeMethod_FieldNumber_AuthorizeType];
  return GPBGetMessageInt32Field(message, field);
}

void SetAuthorizeMethod_AuthorizeType_RawValue(AuthorizeMethod *message, int32_t value) {
  GPBDescriptor *descriptor = [AuthorizeMethod descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:AuthorizeMethod_FieldNumber_AuthorizeType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Account

@implementation Account

@dynamic accountType;
@dynamic userId;
@dynamic passport;
@dynamic nickname;

typedef struct Account__storage_ {
  uint32_t _has_storage_[1];
  AccountType accountType;
  NSString *passport;
  NSString *nickname;
  uint64_t userId;
} Account__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountType",
        .dataTypeSpecific.enumDescFunc = AccountType_EnumDescriptor,
        .number = Account_FieldNumber_AccountType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Account__storage_, accountType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "userId",
        .dataTypeSpecific.className = NULL,
        .number = Account_FieldNumber_UserId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Account__storage_, userId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "passport",
        .dataTypeSpecific.className = NULL,
        .number = Account_FieldNumber_Passport,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Account__storage_, passport),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "nickname",
        .dataTypeSpecific.className = NULL,
        .number = Account_FieldNumber_Nickname,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Account__storage_, nickname),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Account class]
                                     rootClass:[AuthorizeRoot class]
                                          file:AuthorizeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Account__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\013\000\002\006\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Account_AccountType_RawValue(Account *message) {
  GPBDescriptor *descriptor = [Account descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Account_FieldNumber_AccountType];
  return GPBGetMessageInt32Field(message, field);
}

void SetAccount_AccountType_RawValue(Account *message, int32_t value) {
  GPBDescriptor *descriptor = [Account descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Account_FieldNumber_AccountType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - RegisterRequest

@implementation RegisterRequest

@dynamic accountType;
@dynamic passport;
@dynamic hasAuthorizeMethod, authorizeMethod;

typedef struct RegisterRequest__storage_ {
  uint32_t _has_storage_[1];
  AccountType accountType;
  NSString *passport;
  AuthorizeMethod *authorizeMethod;
} RegisterRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountType",
        .dataTypeSpecific.enumDescFunc = AccountType_EnumDescriptor,
        .number = RegisterRequest_FieldNumber_AccountType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RegisterRequest__storage_, accountType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "passport",
        .dataTypeSpecific.className = NULL,
        .number = RegisterRequest_FieldNumber_Passport,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(RegisterRequest__storage_, passport),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "authorizeMethod",
        .dataTypeSpecific.className = GPBStringifySymbol(AuthorizeMethod),
        .number = RegisterRequest_FieldNumber_AuthorizeMethod,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(RegisterRequest__storage_, authorizeMethod),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RegisterRequest class]
                                     rootClass:[AuthorizeRoot class]
                                          file:AuthorizeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RegisterRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\013\000\003\017\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t RegisterRequest_AccountType_RawValue(RegisterRequest *message) {
  GPBDescriptor *descriptor = [RegisterRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:RegisterRequest_FieldNumber_AccountType];
  return GPBGetMessageInt32Field(message, field);
}

void SetRegisterRequest_AccountType_RawValue(RegisterRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [RegisterRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:RegisterRequest_FieldNumber_AccountType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - RegisterResponse

@implementation RegisterResponse

@dynamic hasAccount, account;

typedef struct RegisterResponse__storage_ {
  uint32_t _has_storage_[1];
  Account *account;
} RegisterResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "account",
        .dataTypeSpecific.className = GPBStringifySymbol(Account),
        .number = RegisterResponse_FieldNumber_Account,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RegisterResponse__storage_, account),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RegisterResponse class]
                                     rootClass:[AuthorizeRoot class]
                                          file:AuthorizeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RegisterResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - LoginReqeust

@implementation LoginReqeust

@dynamic accountType;
@dynamic passport;
@dynamic hasAuthorizeMethod, authorizeMethod;

typedef struct LoginReqeust__storage_ {
  uint32_t _has_storage_[1];
  AccountType accountType;
  NSString *passport;
  AuthorizeMethod *authorizeMethod;
} LoginReqeust__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountType",
        .dataTypeSpecific.enumDescFunc = AccountType_EnumDescriptor,
        .number = LoginReqeust_FieldNumber_AccountType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(LoginReqeust__storage_, accountType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "passport",
        .dataTypeSpecific.className = NULL,
        .number = LoginReqeust_FieldNumber_Passport,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(LoginReqeust__storage_, passport),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "authorizeMethod",
        .dataTypeSpecific.className = GPBStringifySymbol(AuthorizeMethod),
        .number = LoginReqeust_FieldNumber_AuthorizeMethod,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(LoginReqeust__storage_, authorizeMethod),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[LoginReqeust class]
                                     rootClass:[AuthorizeRoot class]
                                          file:AuthorizeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(LoginReqeust__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\013\000\003\017\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t LoginReqeust_AccountType_RawValue(LoginReqeust *message) {
  GPBDescriptor *descriptor = [LoginReqeust descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:LoginReqeust_FieldNumber_AccountType];
  return GPBGetMessageInt32Field(message, field);
}

void SetLoginReqeust_AccountType_RawValue(LoginReqeust *message, int32_t value) {
  GPBDescriptor *descriptor = [LoginReqeust descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:LoginReqeust_FieldNumber_AccountType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - LoginResponse

@implementation LoginResponse

@dynamic hasAccount, account;

typedef struct LoginResponse__storage_ {
  uint32_t _has_storage_[1];
  Account *account;
} LoginResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "account",
        .dataTypeSpecific.className = GPBStringifySymbol(Account),
        .number = LoginResponse_FieldNumber_Account,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(LoginResponse__storage_, account),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[LoginResponse class]
                                     rootClass:[AuthorizeRoot class]
                                          file:AuthorizeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(LoginResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
