//
//  MenuRow.swift
//  RiveAnimation
//
//  Created by NaheedPK on 01/07/2022.
//

import SwiftUI

struct MenuRow: View {
    var item: MenuItem
    @Binding var selectedMenu: SelectedMenu
    var body: some View {
        HStack(spacing: 14) {
            item.icon.view()
                .frame(width:32, height: 32)
                .opacity(0.7)
            Text(item.text)
                .customFont(.headline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(12)
        .background(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(Color.blue)
                .frame(maxWidth: selectedMenu == item.menu ? .infinity : 0)
                .frame(maxWidth: .infinity, alignment: .leading)
        )
        .onTapGesture {
            try? item.icon.setInput("active", value: true)
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                try? item.icon.setInput("active", value: false)
            }
            withAnimation(.timingCurve(0.2, 0.8, 0.2, 1.0)) {
                selectedMenu = item.menu
            }
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(item: menuItems[0], selectedMenu: .constant(.home))
    }
}
