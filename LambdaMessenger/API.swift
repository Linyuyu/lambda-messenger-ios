//  This file was automatically generated and should not be edited.

//import AWSAppSync

public final class NewMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription newMessage($conversationId: String!) {\n  newMessage(conversationId: $conversationId) {\n    __typename\n    ...messageFields\n  }\n}"

  public static var requestString: String { return operationString.appending(MessageFields.fragmentString) }

  public var conversationId: String

  public init(conversationId: String) {
    self.conversationId = conversationId
  }

  public var variables: GraphQLMap? {
    return ["conversationId": conversationId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("newMessage", arguments: ["conversationId": GraphQLVariable("conversationId")], type: .object(NewMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(newMessage: NewMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "newMessage": newMessage.flatMap { $0.snapshot }])
    }

    public var newMessage: NewMessage? {
      get {
        return (snapshot["newMessage"] as? Snapshot).flatMap { NewMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "newMessage")
      }
    }

    public struct NewMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("message", type: .nonNull(.scalar(String.self))),
        GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
        GraphQLField("timestamp", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversationId", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(message: String, sender: Sender, timestamp: String, conversationId: String) {
        self.init(snapshot: ["__typename": "Message", "message": message, "sender": sender.snapshot, "timestamp": timestamp, "conversationId": conversationId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return snapshot["message"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "message")
        }
      }

      public var sender: Sender {
        get {
          return Sender(snapshot: snapshot["sender"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "sender")
        }
      }

      public var timestamp: String {
        get {
          return snapshot["timestamp"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      public var conversationId: String {
        get {
          return snapshot["conversationId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversationId")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var messageFields: MessageFields {
          get {
            return MessageFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Sender: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(userId: GraphQLID, displayName: String) {
          self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var displayName: String {
          get {
            return snapshot["displayName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "displayName")
          }
        }
      }
    }
  }
}

public final class RegisterUserWithEmailMutation: GraphQLMutation {
  public static let operationString =
    "mutation registerUserWithEmail($fcmToken: String!) {\n  registerUserWithEmail(fcmToken: $fcmToken) {\n    __typename\n    userId\n    displayName\n    email\n  }\n}"

  public var fcmToken: String

  public init(fcmToken: String) {
    self.fcmToken = fcmToken
  }

  public var variables: GraphQLMap? {
    return ["fcmToken": fcmToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("registerUserWithEmail", arguments: ["fcmToken": GraphQLVariable("fcmToken")], type: .nonNull(.object(RegisterUserWithEmail.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(registerUserWithEmail: RegisterUserWithEmail) {
      self.init(snapshot: ["__typename": "Mutation", "registerUserWithEmail": registerUserWithEmail.snapshot])
    }

    public var registerUserWithEmail: RegisterUserWithEmail {
      get {
        return RegisterUserWithEmail(snapshot: snapshot["registerUserWithEmail"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "registerUserWithEmail")
      }
    }

    public struct RegisterUserWithEmail: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: GraphQLID, displayName: String, email: String? = nil) {
        self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName, "email": email])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var displayName: String {
        get {
          return snapshot["displayName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }
    }
  }
}

public final class RegisterUserWithPhoneNumberMutation: GraphQLMutation {
  public static let operationString =
    "mutation registerUserWithPhoneNumber($fcmToken: String!) {\n  registerUserWithPhoneNumber(fcmToken: $fcmToken) {\n    __typename\n    userId\n    displayName\n    phoneNumber\n  }\n}"

  public var fcmToken: String

  public init(fcmToken: String) {
    self.fcmToken = fcmToken
  }

  public var variables: GraphQLMap? {
    return ["fcmToken": fcmToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("registerUserWithPhoneNumber", arguments: ["fcmToken": GraphQLVariable("fcmToken")], type: .nonNull(.object(RegisterUserWithPhoneNumber.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(registerUserWithPhoneNumber: RegisterUserWithPhoneNumber) {
      self.init(snapshot: ["__typename": "Mutation", "registerUserWithPhoneNumber": registerUserWithPhoneNumber.snapshot])
    }

    public var registerUserWithPhoneNumber: RegisterUserWithPhoneNumber {
      get {
        return RegisterUserWithPhoneNumber(snapshot: snapshot["registerUserWithPhoneNumber"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "registerUserWithPhoneNumber")
      }
    }

    public struct RegisterUserWithPhoneNumber: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: GraphQLID, displayName: String, phoneNumber: String? = nil) {
        self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName, "phoneNumber": phoneNumber])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var displayName: String {
        get {
          return snapshot["displayName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }
    }
  }
}

public final class PostMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation postMessage($conversationId: String!, $message: String!, $sendPushNotifications: Boolean = false) {\n  postMessage(conversationId: $conversationId, message: $message, sendPushNotifications: $sendPushNotifications) {\n    __typename\n    ...messageFields\n  }\n}"

  public static var requestString: String { return operationString.appending(MessageFields.fragmentString) }

  public var conversationId: String
  public var message: String
  public var sendPushNotifications: Bool?

  public init(conversationId: String, message: String, sendPushNotifications: Bool? = nil) {
    self.conversationId = conversationId
    self.message = message
    self.sendPushNotifications = sendPushNotifications
  }

  public var variables: GraphQLMap? {
    return ["conversationId": conversationId, "message": message, "sendPushNotifications": sendPushNotifications]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("postMessage", arguments: ["conversationId": GraphQLVariable("conversationId"), "message": GraphQLVariable("message"), "sendPushNotifications": GraphQLVariable("sendPushNotifications")], type: .nonNull(.object(PostMessage.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(postMessage: PostMessage) {
      self.init(snapshot: ["__typename": "Mutation", "postMessage": postMessage.snapshot])
    }

    public var postMessage: PostMessage {
      get {
        return PostMessage(snapshot: snapshot["postMessage"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "postMessage")
      }
    }

    public struct PostMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("message", type: .nonNull(.scalar(String.self))),
        GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
        GraphQLField("timestamp", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversationId", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(message: String, sender: Sender, timestamp: String, conversationId: String) {
        self.init(snapshot: ["__typename": "Message", "message": message, "sender": sender.snapshot, "timestamp": timestamp, "conversationId": conversationId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return snapshot["message"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "message")
        }
      }

      public var sender: Sender {
        get {
          return Sender(snapshot: snapshot["sender"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "sender")
        }
      }

      public var timestamp: String {
        get {
          return snapshot["timestamp"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      public var conversationId: String {
        get {
          return snapshot["conversationId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversationId")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var messageFields: MessageFields {
          get {
            return MessageFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Sender: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(userId: GraphQLID, displayName: String) {
          self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var displayName: String {
          get {
            return snapshot["displayName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "displayName")
          }
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation updateUser($displayName: String, $fcmToken: String) {\n  updateUser(displayName: $displayName, fcmToken: $fcmToken) {\n    __typename\n    userId\n    displayName\n    phoneNumber\n    email\n  }\n}"

  public var displayName: String?
  public var fcmToken: String?

  public init(displayName: String? = nil, fcmToken: String? = nil) {
    self.displayName = displayName
    self.fcmToken = fcmToken
  }

  public var variables: GraphQLMap? {
    return ["displayName": displayName, "fcmToken": fcmToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["displayName": GraphQLVariable("displayName"), "fcmToken": GraphQLVariable("fcmToken")], type: .nonNull(.object(UpdateUser.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.snapshot])
    }

    public var updateUser: UpdateUser {
      get {
        return UpdateUser(snapshot: snapshot["updateUser"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: GraphQLID, displayName: String, phoneNumber: String? = nil, email: String? = nil) {
        self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName, "phoneNumber": phoneNumber, "email": email])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var displayName: String {
        get {
          return snapshot["displayName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }
    }
  }
}

public final class InitiateConversationMutation: GraphQLMutation {
  public static let operationString =
    "mutation initiateConversation($others: [String]) {\n  initiateConversation(others: $others)\n}"

  public var others: [String?]?

  public init(others: [String?]? = nil) {
    self.others = others
  }

  public var variables: GraphQLMap? {
    return ["others": others]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("initiateConversation", arguments: ["others": GraphQLVariable("others")], type: .nonNull(.scalar(String.self))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(initiateConversation: String) {
      self.init(snapshot: ["__typename": "Mutation", "initiateConversation": initiateConversation])
    }

    public var initiateConversation: String {
      get {
        return snapshot["initiateConversation"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "initiateConversation")
      }
    }
  }
}

public final class GetConversationQuery: GraphQLQuery {
  public static let operationString =
    "query getConversation($conversationId: String!, $since: String) {\n  getConversation(conversationId: $conversationId, since: $since) {\n    __typename\n    ...conversationFields\n  }\n}"

  public static var requestString: String { return operationString.appending(ConversationFields.fragmentString).appending(MessageFields.fragmentString) }

  public var conversationId: String
  public var since: String?

  public init(conversationId: String, since: String? = nil) {
    self.conversationId = conversationId
    self.since = since
  }

  public var variables: GraphQLMap? {
    return ["conversationId": conversationId, "since": since]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getConversation", arguments: ["conversationId": GraphQLVariable("conversationId"), "since": GraphQLVariable("since")], type: .nonNull(.object(GetConversation.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getConversation: GetConversation) {
      self.init(snapshot: ["__typename": "Query", "getConversation": getConversation.snapshot])
    }

    public var getConversation: GetConversation {
      get {
        return GetConversation(snapshot: snapshot["getConversation"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getConversation")
      }
    }

    public struct GetConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("messages", type: .nonNull(.list(.nonNull(.object(Message.selections))))),
        GraphQLField("conversationId", type: .nonNull(.scalar(String.self))),
        GraphQLField("users", type: .nonNull(.list(.nonNull(.object(User.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messages: [Message], conversationId: String, users: [User]) {
        self.init(snapshot: ["__typename": "Conversation", "messages": messages.map { $0.snapshot }, "conversationId": conversationId, "users": users.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var messages: [Message] {
        get {
          return (snapshot["messages"] as! [Snapshot]).map { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "messages")
        }
      }

      public var conversationId: String {
        get {
          return snapshot["conversationId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversationId")
        }
      }

      public var users: [User] {
        get {
          return (snapshot["users"] as! [Snapshot]).map { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "users")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var conversationFields: ConversationFields {
          get {
            return ConversationFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
          GraphQLField("timestamp", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversationId", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(message: String, sender: Sender, timestamp: String, conversationId: String) {
          self.init(snapshot: ["__typename": "Message", "message": message, "sender": sender.snapshot, "timestamp": timestamp, "conversationId": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var message: String {
          get {
            return snapshot["message"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "message")
          }
        }

        public var sender: Sender {
          get {
            return Sender(snapshot: snapshot["sender"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "sender")
          }
        }

        public var timestamp: String {
          get {
            return snapshot["timestamp"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        public var conversationId: String {
          get {
            return snapshot["conversationId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversationId")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var messageFields: MessageFields {
            get {
              return MessageFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        public struct Sender: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: GraphQLID, displayName: String) {
            self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var displayName: String {
            get {
              return snapshot["displayName"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "displayName")
            }
          }
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("phoneNumber", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(userId: GraphQLID, displayName: String, email: String? = nil, phoneNumber: String? = nil) {
          self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName, "email": email, "phoneNumber": phoneNumber])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var displayName: String {
          get {
            return snapshot["displayName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "displayName")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var phoneNumber: String? {
          get {
            return snapshot["phoneNumber"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phoneNumber")
          }
        }
      }
    }
  }
}

public final class LookupUserByPhoneNumberQuery: GraphQLQuery {
  public static let operationString =
    "query lookupUserByPhoneNumber($phoneNumber: String!) {\n  lookupUserByPhoneNumber(phoneNumber: $phoneNumber) {\n    __typename\n    userId\n    displayName\n    phoneNumber\n  }\n}"

  public var phoneNumber: String

  public init(phoneNumber: String) {
    self.phoneNumber = phoneNumber
  }

  public var variables: GraphQLMap? {
    return ["phoneNumber": phoneNumber]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("lookupUserByPhoneNumber", arguments: ["phoneNumber": GraphQLVariable("phoneNumber")], type: .object(LookupUserByPhoneNumber.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(lookupUserByPhoneNumber: LookupUserByPhoneNumber? = nil) {
      self.init(snapshot: ["__typename": "Query", "lookupUserByPhoneNumber": lookupUserByPhoneNumber.flatMap { $0.snapshot }])
    }

    public var lookupUserByPhoneNumber: LookupUserByPhoneNumber? {
      get {
        return (snapshot["lookupUserByPhoneNumber"] as? Snapshot).flatMap { LookupUserByPhoneNumber(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "lookupUserByPhoneNumber")
      }
    }

    public struct LookupUserByPhoneNumber: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: GraphQLID, displayName: String, phoneNumber: String? = nil) {
        self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName, "phoneNumber": phoneNumber])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var displayName: String {
        get {
          return snapshot["displayName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }
    }
  }
}

public final class LookupUserByEmailQuery: GraphQLQuery {
  public static let operationString =
    "query lookupUserByEmail($email: String!) {\n  lookupUserByEmail(email: $email) {\n    __typename\n    userId\n    displayName\n    email\n  }\n}"

  public var email: String

  public init(email: String) {
    self.email = email
  }

  public var variables: GraphQLMap? {
    return ["email": email]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("lookupUserByEmail", arguments: ["email": GraphQLVariable("email")], type: .object(LookupUserByEmail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(lookupUserByEmail: LookupUserByEmail? = nil) {
      self.init(snapshot: ["__typename": "Query", "lookupUserByEmail": lookupUserByEmail.flatMap { $0.snapshot }])
    }

    public var lookupUserByEmail: LookupUserByEmail? {
      get {
        return (snapshot["lookupUserByEmail"] as? Snapshot).flatMap { LookupUserByEmail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "lookupUserByEmail")
      }
    }

    public struct LookupUserByEmail: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: GraphQLID, displayName: String, email: String? = nil) {
        self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName, "email": email])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var displayName: String {
        get {
          return snapshot["displayName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }
    }
  }
}

public final class GetConversationHistoryQuery: GraphQLQuery {
  public static let operationString =
    "query getConversationHistory {\n  getConversationHistory {\n    __typename\n    ...conversationFields\n  }\n}"

  public static var requestString: String { return operationString.appending(ConversationFields.fragmentString).appending(MessageFields.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getConversationHistory", type: .list(.object(GetConversationHistory.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getConversationHistory: [GetConversationHistory?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "getConversationHistory": getConversationHistory.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
    }

    public var getConversationHistory: [GetConversationHistory?]? {
      get {
        return (snapshot["getConversationHistory"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { GetConversationHistory(snapshot: $0) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "getConversationHistory")
      }
    }

    public struct GetConversationHistory: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("messages", type: .nonNull(.list(.nonNull(.object(Message.selections))))),
        GraphQLField("conversationId", type: .nonNull(.scalar(String.self))),
        GraphQLField("users", type: .nonNull(.list(.nonNull(.object(User.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messages: [Message], conversationId: String, users: [User]) {
        self.init(snapshot: ["__typename": "Conversation", "messages": messages.map { $0.snapshot }, "conversationId": conversationId, "users": users.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var messages: [Message] {
        get {
          return (snapshot["messages"] as! [Snapshot]).map { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "messages")
        }
      }

      public var conversationId: String {
        get {
          return snapshot["conversationId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversationId")
        }
      }

      public var users: [User] {
        get {
          return (snapshot["users"] as! [Snapshot]).map { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "users")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var conversationFields: ConversationFields {
          get {
            return ConversationFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
          GraphQLField("timestamp", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversationId", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(message: String, sender: Sender, timestamp: String, conversationId: String) {
          self.init(snapshot: ["__typename": "Message", "message": message, "sender": sender.snapshot, "timestamp": timestamp, "conversationId": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var message: String {
          get {
            return snapshot["message"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "message")
          }
        }

        public var sender: Sender {
          get {
            return Sender(snapshot: snapshot["sender"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "sender")
          }
        }

        public var timestamp: String {
          get {
            return snapshot["timestamp"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        public var conversationId: String {
          get {
            return snapshot["conversationId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversationId")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var messageFields: MessageFields {
            get {
              return MessageFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        public struct Sender: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: GraphQLID, displayName: String) {
            self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var displayName: String {
            get {
              return snapshot["displayName"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "displayName")
            }
          }
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("phoneNumber", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(userId: GraphQLID, displayName: String, email: String? = nil, phoneNumber: String? = nil) {
          self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName, "email": email, "phoneNumber": phoneNumber])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var displayName: String {
          get {
            return snapshot["displayName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "displayName")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var phoneNumber: String? {
          get {
            return snapshot["phoneNumber"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phoneNumber")
          }
        }
      }
    }
  }
}

public struct MessageFields: GraphQLFragment {
  public static let fragmentString =
    "fragment messageFields on Message {\n  __typename\n  message\n  sender {\n    __typename\n    userId\n    displayName\n  }\n  timestamp\n  conversationId\n}"

  public static let possibleTypes = ["Message"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("message", type: .nonNull(.scalar(String.self))),
    GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
    GraphQLField("timestamp", type: .nonNull(.scalar(String.self))),
    GraphQLField("conversationId", type: .nonNull(.scalar(String.self))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(message: String, sender: Sender, timestamp: String, conversationId: String) {
    self.init(snapshot: ["__typename": "Message", "message": message, "sender": sender.snapshot, "timestamp": timestamp, "conversationId": conversationId])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var message: String {
    get {
      return snapshot["message"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "message")
    }
  }

  public var sender: Sender {
    get {
      return Sender(snapshot: snapshot["sender"]! as! Snapshot)
    }
    set {
      snapshot.updateValue(newValue.snapshot, forKey: "sender")
    }
  }

  public var timestamp: String {
    get {
      return snapshot["timestamp"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "timestamp")
    }
  }

  public var conversationId: String {
    get {
      return snapshot["conversationId"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "conversationId")
    }
  }

  public struct Sender: GraphQLSelectionSet {
    public static let possibleTypes = ["User"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(userId: GraphQLID, displayName: String) {
      self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var userId: GraphQLID {
      get {
        return snapshot["userId"]! as! GraphQLID
      }
      set {
        snapshot.updateValue(newValue, forKey: "userId")
      }
    }

    public var displayName: String {
      get {
        return snapshot["displayName"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "displayName")
      }
    }
  }
}

public struct ConversationFields: GraphQLFragment {
  public static let fragmentString =
    "fragment conversationFields on Conversation {\n  __typename\n  messages {\n    __typename\n    ...messageFields\n  }\n  conversationId\n  users {\n    __typename\n    userId\n    displayName\n    email\n    phoneNumber\n  }\n}"

  public static let possibleTypes = ["Conversation"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("messages", type: .nonNull(.list(.nonNull(.object(Message.selections))))),
    GraphQLField("conversationId", type: .nonNull(.scalar(String.self))),
    GraphQLField("users", type: .nonNull(.list(.nonNull(.object(User.selections))))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(messages: [Message], conversationId: String, users: [User]) {
    self.init(snapshot: ["__typename": "Conversation", "messages": messages.map { $0.snapshot }, "conversationId": conversationId, "users": users.map { $0.snapshot }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var messages: [Message] {
    get {
      return (snapshot["messages"] as! [Snapshot]).map { Message(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "messages")
    }
  }

  public var conversationId: String {
    get {
      return snapshot["conversationId"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "conversationId")
    }
  }

  public var users: [User] {
    get {
      return (snapshot["users"] as! [Snapshot]).map { User(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "users")
    }
  }

  public struct Message: GraphQLSelectionSet {
    public static let possibleTypes = ["Message"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("message", type: .nonNull(.scalar(String.self))),
      GraphQLField("sender", type: .nonNull(.object(Sender.selections))),
      GraphQLField("timestamp", type: .nonNull(.scalar(String.self))),
      GraphQLField("conversationId", type: .nonNull(.scalar(String.self))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(message: String, sender: Sender, timestamp: String, conversationId: String) {
      self.init(snapshot: ["__typename": "Message", "message": message, "sender": sender.snapshot, "timestamp": timestamp, "conversationId": conversationId])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var message: String {
      get {
        return snapshot["message"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "message")
      }
    }

    public var sender: Sender {
      get {
        return Sender(snapshot: snapshot["sender"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "sender")
      }
    }

    public var timestamp: String {
      get {
        return snapshot["timestamp"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "timestamp")
      }
    }

    public var conversationId: String {
      get {
        return snapshot["conversationId"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "conversationId")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    public struct Fragments {
      public var snapshot: Snapshot

      public var messageFields: MessageFields {
        get {
          return MessageFields(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }

    public struct Sender: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: GraphQLID, displayName: String) {
        self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var displayName: String {
        get {
          return snapshot["displayName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "displayName")
        }
      }
    }
  }

  public struct User: GraphQLSelectionSet {
    public static let possibleTypes = ["User"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
      GraphQLField("email", type: .scalar(String.self)),
      GraphQLField("phoneNumber", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(userId: GraphQLID, displayName: String, email: String? = nil, phoneNumber: String? = nil) {
      self.init(snapshot: ["__typename": "User", "userId": userId, "displayName": displayName, "email": email, "phoneNumber": phoneNumber])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var userId: GraphQLID {
      get {
        return snapshot["userId"]! as! GraphQLID
      }
      set {
        snapshot.updateValue(newValue, forKey: "userId")
      }
    }

    public var displayName: String {
      get {
        return snapshot["displayName"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "displayName")
      }
    }

    public var email: String? {
      get {
        return snapshot["email"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "email")
      }
    }

    public var phoneNumber: String? {
      get {
        return snapshot["phoneNumber"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "phoneNumber")
      }
    }
  }
}
