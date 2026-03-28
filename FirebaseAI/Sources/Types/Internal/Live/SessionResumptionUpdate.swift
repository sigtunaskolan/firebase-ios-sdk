import Foundation

/// Server update containing a session resumption handle.
@available(iOS 15.0, macOS 12.0, macCatalyst 15.0, tvOS 15.0, *)
@available(watchOS, unavailable)
struct SessionResumptionUpdate: Decodable, Sendable {
  /// An opaque handle that can be passed back to resume this session.
  let newHandle: String?

  /// Whether the session is currently resumable.
  let resumable: Bool
}
