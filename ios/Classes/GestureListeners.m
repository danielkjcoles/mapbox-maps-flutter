// Autogenerated from Pigeon (v16.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "GestureListeners.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static FlutterError *createConnectionError(NSString *channelName) {
  return [FlutterError errorWithCode:@"channel-error" message:[NSString stringWithFormat:@"%@/%@/%@", @"Unable to establish connection on channel: '", channelName, @"'."] details:@""];
}

static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@interface FLT_GESTURESScreenCoordinate ()
+ (FLT_GESTURESScreenCoordinate *)fromList:(NSArray *)list;
+ (nullable FLT_GESTURESScreenCoordinate *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation FLT_GESTURESScreenCoordinate
+ (instancetype)makeWithX:(double )x
    y:(double )y {
  FLT_GESTURESScreenCoordinate* pigeonResult = [[FLT_GESTURESScreenCoordinate alloc] init];
  pigeonResult.x = x;
  pigeonResult.y = y;
  return pigeonResult;
}
+ (FLT_GESTURESScreenCoordinate *)fromList:(NSArray *)list {
  FLT_GESTURESScreenCoordinate *pigeonResult = [[FLT_GESTURESScreenCoordinate alloc] init];
  pigeonResult.x = [GetNullableObjectAtIndex(list, 0) doubleValue];
  pigeonResult.y = [GetNullableObjectAtIndex(list, 1) doubleValue];
  return pigeonResult;
}
+ (nullable FLT_GESTURESScreenCoordinate *)nullableFromList:(NSArray *)list {
  return (list) ? [FLT_GESTURESScreenCoordinate fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    @(self.x),
    @(self.y),
  ];
}
@end

@interface FLT_GESTURESGestureListenerCodecReader : FlutterStandardReader
@end
@implementation FLT_GESTURESGestureListenerCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [FLT_GESTURESScreenCoordinate fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface FLT_GESTURESGestureListenerCodecWriter : FlutterStandardWriter
@end
@implementation FLT_GESTURESGestureListenerCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[FLT_GESTURESScreenCoordinate class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface FLT_GESTURESGestureListenerCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLT_GESTURESGestureListenerCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLT_GESTURESGestureListenerCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLT_GESTURESGestureListenerCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FLT_GESTURESGestureListenerGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FLT_GESTURESGestureListenerCodecReaderWriter *readerWriter = [[FLT_GESTURESGestureListenerCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

@interface FLT_GESTURESGestureListener ()
@property(nonatomic, strong) NSObject<FlutterBinaryMessenger> *binaryMessenger;
@end

@implementation FLT_GESTURESGestureListener

- (instancetype)initWithBinaryMessenger:(NSObject<FlutterBinaryMessenger> *)binaryMessenger {
  self = [super init];
  if (self) {
    _binaryMessenger = binaryMessenger;
  }
  return self;
}
- (void)onTapCoordinate:(FLT_GESTURESScreenCoordinate *)arg_coordinate completion:(void (^)(FlutterError *_Nullable))completion {
  NSString *channelName = @"dev.flutter.pigeon.mapbox_maps_flutter.GestureListener.onTap";
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:channelName
      binaryMessenger:self.binaryMessenger
      codec:FLT_GESTURESGestureListenerGetCodec()];
  [channel sendMessage:@[arg_coordinate ?: [NSNull null]] reply:^(NSArray<id> *reply) {
    if (reply != nil) {
      if (reply.count > 1) {
        completion([FlutterError errorWithCode:reply[0] message:reply[1] details:reply[2]]);
      } else {
        completion(nil);
      }
    } else {
      completion(createConnectionError(channelName));
    } 
  }];
}
- (void)onLongTapCoordinate:(FLT_GESTURESScreenCoordinate *)arg_coordinate completion:(void (^)(FlutterError *_Nullable))completion {
  NSString *channelName = @"dev.flutter.pigeon.mapbox_maps_flutter.GestureListener.onLongTap";
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:channelName
      binaryMessenger:self.binaryMessenger
      codec:FLT_GESTURESGestureListenerGetCodec()];
  [channel sendMessage:@[arg_coordinate ?: [NSNull null]] reply:^(NSArray<id> *reply) {
    if (reply != nil) {
      if (reply.count > 1) {
        completion([FlutterError errorWithCode:reply[0] message:reply[1] details:reply[2]]);
      } else {
        completion(nil);
      }
    } else {
      completion(createConnectionError(channelName));
    } 
  }];
}
- (void)onScrollCoordinate:(FLT_GESTURESScreenCoordinate *)arg_coordinate completion:(void (^)(FlutterError *_Nullable))completion {
  NSString *channelName = @"dev.flutter.pigeon.mapbox_maps_flutter.GestureListener.onScroll";
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:channelName
      binaryMessenger:self.binaryMessenger
      codec:FLT_GESTURESGestureListenerGetCodec()];
  [channel sendMessage:@[arg_coordinate ?: [NSNull null]] reply:^(NSArray<id> *reply) {
    if (reply != nil) {
      if (reply.count > 1) {
        completion([FlutterError errorWithCode:reply[0] message:reply[1] details:reply[2]]);
      } else {
        completion(nil);
      }
    } else {
      completion(createConnectionError(channelName));
    } 
  }];
}
@end

