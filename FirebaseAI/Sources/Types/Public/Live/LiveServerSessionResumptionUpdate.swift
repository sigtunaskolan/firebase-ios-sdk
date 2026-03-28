import Foundation

/// A session resumption update from the server.
///
/// Contains a handle that can be used to resume the session after disconnection.
@available(iOS 15.0, macOS 12.0, macCatalyst 15.0, tvOS 15.0, *)
@available(watchOS, unavailable)
public struct LiveServerSessionResumptionUpdate: Sendable {
  let update: SessionResumptionUpdate

  /// An opaque handle that can be passed back to resume this session.
  public var newHandle: String? { update.newHandle }

  /// Whether the session is currently resumable.
  public var resumable: Bool { update.resumable }

  init(_ update: SessionResumptionUpdate) {
    self.update = update
  }
}
