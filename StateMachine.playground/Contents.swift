import UIKit

enum TappsiStateMachine {
    case Create
    case Open
    case Booked
    case WaitingForPassenger
    case Confirmed
    case Finished
    case CanceledByPassenger
    case Canceled
    case Reoffer
    case Expired
    
    mutating func switchTo(state nextState:TappsiStateMachine) {
        switch (self, nextState) {
        case (.Create, .Open): self = .Open
        case (.Open, .Booked): self = .Booked
        case (.Open, .Expired): self = .Expired
        case (.Open, .CanceledByPassenger): self = .CanceledByPassenger
        case (.Booked, .CanceledByPassenger): self = .CanceledByPassenger
        case (.Booked, .Canceled): self = .Canceled
        case (.Booked, .WaitingForPassenger): self = .WaitingForPassenger
        case (.WaitingForPassenger, .CanceledByPassenger): self = .CanceledByPassenger
        case (.WaitingForPassenger, .Canceled): self = .Canceled
        case (.WaitingForPassenger, .Confirmed): self = .Confirmed
        case (.Confirmed, .Finished): self = .Finished
        case (.Canceled, .Reoffer): self = .Reoffer
        case (.Reoffer, .Booked): self = .Booked
        case (.Reoffer, .Expired): self = .Expired
        default:
            break
        }
    }
}

var tappsiStates = TappsiStateMachine.Open

tappsiStates.switchTo(state: .CanceledByPassenger)

