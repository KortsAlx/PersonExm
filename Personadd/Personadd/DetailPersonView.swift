//
//  DetailPersonView.swift
//  Personadd
//
//  Created by Brandon Alexis Martinez Cortes on 11/10/21.
//

import SwiftUI

struct DetailPersonView: View {
    var itemModel : Item
    var body: some View {
        NavigationView{
                    VStack{
                        Text(itemModel.name!.prefix(2))
                          .padding(50)
                          .background(
                            Circle()
                                .stroke()
                                .padding(8)
                                .accentColor(.gray))
                            
                         

                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        VStack{
                            Text(itemModel.name!).font(.largeTitle)
                            Text("Nombre")
                                .font(.caption)
                                .padding(.bottom)
                            Text(itemModel.email!)
                            Text("Correo")
                                .font(.caption)
                                .padding(.bottom)
                            
                            Text(itemModel.telef!)
                            Text("Telefono")
                                .font(.caption)
                                .padding(.bottom)
                            
                            
                            Spacer()
                            
                            
                        }
                        Spacer()
                    }

                
        }
    }
}

struct DetailPersonView_Previews: PreviewProvider {
    static var previews: some View {
        let itm = Item()
        DetailPersonView(itemModel: itm)
    }
}
