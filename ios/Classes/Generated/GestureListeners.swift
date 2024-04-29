// Autogenerated from Pigeon (v18.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation

#if os(iOS)
  import Flutter
#elseif os(macOS)
  import FlutterMacOS
#else
  #error("Unsupported platform.")
#endif
import struct Turf.Point

private func createConnectionError(withChannelName channelName: String) -> FlutterError {
  return FlutterError(code: "channel-error", message: "Unable to establish connection on channel: '\(channelName)'.", details: "")
}

private func isNullish(_ value: Any?) -> Bool {
  return value is NSNull || value == nil
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

/// A structure that defines additional information about map content gesture.
///
/// Generated class from Pigeon that represents data sent in messages.
struct MapContentGestureContext {
  /// The location of gesture in Map view bounds.
  var touchPosition: ScreenCoordinate
  /// Geographical coordinate of the map gesture.
  var point: Point

  static func fromList(_ list: [Any?]) -> MapContentGestureContext? {
    let touchPosition = ScreenCoordinate.fromList(list[0] as! [Any?])!
    let point = Point.fromList(list[1] as! [Any?])!

    return MapContentGestureContext(
      touchPosition: touchPosition,
      point: point
    )
  }
  func toList() -> [Any?] {
    return [
      touchPosition.toList(),
      point.toList(),
    ]
  }
}
private class GestureListenerCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
    case 128:
      return MapContentGestureContext.fromList(self.readValue() as! [Any?])
    case 129:
      return Point.fromList(self.readValue() as! [Any?])
    case 130:
      return ScreenCoordinate.fromList(self.readValue() as! [Any?])
    default:
      return super.readValue(ofType: type)
    }
  }
}

private class GestureListenerCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? MapContentGestureContext {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else if let value = value as? Point {
      super.writeByte(129)
      super.writeValue(value.toList())
    } else if let value = value as? ScreenCoordinate {
      super.writeByte(130)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class GestureListenerCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return GestureListenerCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return GestureListenerCodecWriter(data: data)
  }
}

class GestureListenerCodec: FlutterStandardMessageCodec {
  static let shared = GestureListenerCodec(readerWriter: GestureListenerCodecReaderWriter())
}

/// Generated protocol from Pigeon that represents Flutter messages that can be called from Swift.
protocol GestureListenerProtocol {
  func onTap(context contextArg: MapContentGestureContext, completion: @escaping (Result<Void, FlutterError>) -> Void)
  func onLongTap(context contextArg: MapContentGestureContext, completion: @escaping (Result<Void, FlutterError>) -> Void)
  func onScroll(context contextArg: MapContentGestureContext, completion: @escaping (Result<Void, FlutterError>) -> Void)
}
class GestureListener: GestureListenerProtocol {
  private let binaryMessenger: FlutterBinaryMessenger
  private let messageChannelSuffix: String
  init(binaryMessenger: FlutterBinaryMessenger, messageChannelSuffix: String = "") {
    self.binaryMessenger = binaryMessenger
    self.messageChannelSuffix = messageChannelSuffix.count > 0 ? ".\(messageChannelSuffix)" : ""
  }
  var codec: FlutterStandardMessageCodec {
    return GestureListenerCodec.shared
  }
  func onTap(context contextArg: MapContentGestureContext, completion: @escaping (Result<Void, FlutterError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.mapbox_maps_flutter.GestureListener.onTap\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([contextArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(FlutterError(code: code, message: message, details: details)))
      } else {
        completion(.success(Void()))
      }
    }
  }
  func onLongTap(context contextArg: MapContentGestureContext, completion: @escaping (Result<Void, FlutterError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.mapbox_maps_flutter.GestureListener.onLongTap\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([contextArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(FlutterError(code: code, message: message, details: details)))
      } else {
        completion(.success(Void()))
      }
    }
  }
  func onScroll(context contextArg: MapContentGestureContext, completion: @escaping (Result<Void, FlutterError>) -> Void) {
    let channelName: String = "dev.flutter.pigeon.mapbox_maps_flutter.GestureListener.onScroll\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(name: channelName, binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([contextArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(FlutterError(code: code, message: message, details: details)))
      } else {
        completion(.success(Void()))
      }
    }
  }
}