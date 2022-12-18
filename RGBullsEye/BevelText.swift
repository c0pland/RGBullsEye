import SwiftUI

struct BevelText: View {
	let text: String
	let width: CGFloat
	let height: CGFloat
	
	var body: some View {
		Text(text)
			.frame(width: width, height: height)
			.background(
				ZStack {
					Capsule()
					.fill(Color.element)
				.northWestShadow()
					Capsule()
						.inset(by: 3)
						.fill(Color.element)
						.southEastShadow()
				}
			)
	}
}

struct BevelText_Previews: PreviewProvider {
	static var previews: some View {
		ZStack {
		  Color.element
		  BevelText(
			text: "R: ??? G: ??? B: ???", width: 200, height: 48)
		}
		.frame(width: 300, height: 100)
		.previewLayout(.sizeThatFits)
	}
}
