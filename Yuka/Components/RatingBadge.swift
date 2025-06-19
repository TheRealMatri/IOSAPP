import SwiftUI

struct RatingBadge: View {
    let rating: String
    
    var backgroundColor: Color {
        switch rating {
        case "Отлично": return Color("YukaGreen")
        case "Хорошо": return Color(red: 0.6, green: 0.8, blue: 0.4)
        case "Плохо": return .red
        default: return .gray
        }
    }
    
    var body: some View {
        Text(rating)
            .font(.system(size: 12, weight: .semibold))
            .foregroundColor(.white)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(backgroundColor)
            .cornerRadius(8)
    }
}
