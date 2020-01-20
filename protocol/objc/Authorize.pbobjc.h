// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: authorize.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class Account;
@class AuthorizeMethod;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum AccountType

typedef GPB_ENUM(AccountType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  AccountType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  AccountType_Anonymous = 0,
  AccountType_Phone = 1,
  AccountType_Email = 2,
};

GPBEnumDescriptor *AccountType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL AccountType_IsValidValue(int32_t value);

#pragma mark - Enum AuthorizeType

typedef GPB_ENUM(AuthorizeType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  AuthorizeType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  AuthorizeType_Password = 0,
  AuthorizeType_VerifyCode = 1,
  AuthorizeType_AccessToken = 2,
  AuthorizeType_AccessCode = 3,
};

GPBEnumDescriptor *AuthorizeType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL AuthorizeType_IsValidValue(int32_t value);

#pragma mark - AuthorizeRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface AuthorizeRoot : GPBRootObject
@end

#pragma mark - AuthorizeMethod

typedef GPB_ENUM(AuthorizeMethod_FieldNumber) {
  AuthorizeMethod_FieldNumber_AuthorizeType = 1,
  AuthorizeMethod_FieldNumber_SecretKey = 2,
};

@interface AuthorizeMethod : GPBMessage

@property(nonatomic, readwrite) AuthorizeType authorizeType;

/** 根据type确定是哪种登录密钥 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *secretKey;

@end

/**
 * Fetches the raw value of a @c AuthorizeMethod's @c authorizeType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t AuthorizeMethod_AuthorizeType_RawValue(AuthorizeMethod *message);
/**
 * Sets the raw value of an @c AuthorizeMethod's @c authorizeType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetAuthorizeMethod_AuthorizeType_RawValue(AuthorizeMethod *message, int32_t value);

#pragma mark - Account

typedef GPB_ENUM(Account_FieldNumber) {
  Account_FieldNumber_AccountType = 1,
  Account_FieldNumber_UserId = 2,
  Account_FieldNumber_Passport = 3,
  Account_FieldNumber_Nickname = 4,
};

@interface Account : GPBMessage

@property(nonatomic, readwrite) AccountType accountType;

@property(nonatomic, readwrite) uint64_t userId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *passport;

@property(nonatomic, readwrite, copy, null_resettable) NSString *nickname;

@end

/**
 * Fetches the raw value of a @c Account's @c accountType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Account_AccountType_RawValue(Account *message);
/**
 * Sets the raw value of an @c Account's @c accountType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetAccount_AccountType_RawValue(Account *message, int32_t value);

#pragma mark - RegisterRequest

typedef GPB_ENUM(RegisterRequest_FieldNumber) {
  RegisterRequest_FieldNumber_AccountType = 1,
  RegisterRequest_FieldNumber_Passport = 2,
  RegisterRequest_FieldNumber_AuthorizeMethod = 3,
};

@interface RegisterRequest : GPBMessage

@property(nonatomic, readwrite) AccountType accountType;

@property(nonatomic, readwrite, copy, null_resettable) NSString *passport;

@property(nonatomic, readwrite, strong, null_resettable) AuthorizeMethod *authorizeMethod;
/** Test to see if @c authorizeMethod has been set. */
@property(nonatomic, readwrite) BOOL hasAuthorizeMethod;

@end

/**
 * Fetches the raw value of a @c RegisterRequest's @c accountType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t RegisterRequest_AccountType_RawValue(RegisterRequest *message);
/**
 * Sets the raw value of an @c RegisterRequest's @c accountType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetRegisterRequest_AccountType_RawValue(RegisterRequest *message, int32_t value);

#pragma mark - RegisterResponse

typedef GPB_ENUM(RegisterResponse_FieldNumber) {
  RegisterResponse_FieldNumber_Account = 1,
};

@interface RegisterResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Account *account;
/** Test to see if @c account has been set. */
@property(nonatomic, readwrite) BOOL hasAccount;

@end

#pragma mark - LoginReqeust

typedef GPB_ENUM(LoginReqeust_FieldNumber) {
  LoginReqeust_FieldNumber_AccountType = 1,
  LoginReqeust_FieldNumber_Passport = 2,
  LoginReqeust_FieldNumber_AuthorizeMethod = 3,
};

@interface LoginReqeust : GPBMessage

@property(nonatomic, readwrite) AccountType accountType;

@property(nonatomic, readwrite, copy, null_resettable) NSString *passport;

@property(nonatomic, readwrite, strong, null_resettable) AuthorizeMethod *authorizeMethod;
/** Test to see if @c authorizeMethod has been set. */
@property(nonatomic, readwrite) BOOL hasAuthorizeMethod;

@end

/**
 * Fetches the raw value of a @c LoginReqeust's @c accountType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t LoginReqeust_AccountType_RawValue(LoginReqeust *message);
/**
 * Sets the raw value of an @c LoginReqeust's @c accountType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetLoginReqeust_AccountType_RawValue(LoginReqeust *message, int32_t value);

#pragma mark - LoginResponse

typedef GPB_ENUM(LoginResponse_FieldNumber) {
  LoginResponse_FieldNumber_Account = 1,
};

@interface LoginResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Account *account;
/** Test to see if @c account has been set. */
@property(nonatomic, readwrite) BOOL hasAccount;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
