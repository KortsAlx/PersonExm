//
//  InsertPersonView.swift
//  Personadd
//
//  Created by Brandon Alexis Martinez Cortes on 11/10/21.
//

import SwiftUI

struct InsertPersonView: View {
    
    @Environment(\.managedObjectContext) private var viewContext

    @State var name: String = ""
    @State var app: String = ""
    @State var apm: String = ""
    @State var email: String = ""
    @State var tel: String = ""
      
    private var validationData : Bool{
        !name.isEmpty && !app.isEmpty && !apm.isEmpty && !email.isEmpty && tel.isEmpty
    }
    var body: some View {
        NavigationView{
            VStack(spacing: 25){
                    
                        TextField("Ingresa nombre...", text: $name,
                            onEditingChanged: { (changed) in
                                        print("Name onEditingChanged - \(changed)")
                        }).padding()
                        
                        TextField("Ingresa apellido paterno...", text: $app,
                            onEditingChanged: { (changed) in
                                        print("Name onEditingChanged - \(changed)")
    
                        }).padding()
                        
                        TextField("Ingresa apellido materno...", text: $apm,
                            onEditingChanged: { (changed) in
                                        print("Name onEditingChanged - \(changed)")
                                    
                        }).padding()
                        
                        TextField("Ingresa correo...", text: $email,
                            onEditingChanged: { (changed) in
                                        print("Name onEditingChanged - \(changed)")
                                    
                            }).padding()
                        
                
                        TextField("Ingresa telefono...", text: $tel,
                            onEditingChanged: { (changed) in
                                        print("Name onEditingChanged - \(changed)")
                                    
                        }).padding()
                
                        
                        
                        Button(action: {
                            if validationData{
                                guard self.name != "" else {return}
                                let newPerson = Item(context: viewContext)
                                newPerson.name = name
                                newPerson.app = app
                                newPerson.apm = apm
                                newPerson.email = email
                                newPerson.telef = tel
                                newPerson.timestamp = Date()
                                do{
                                    try viewContext.save()
                                    
                                    
                                }catch{
                                    
                                }
                                
                                
                            }else{
                                print("Ingresa datos completos")
                                
                                
            



                                
                            }
                        
                        }) {
                            Text("Agregar")

                            
                        }
                

                        
                        
                    }.navigationTitle("Ingresa tus datos")
                    
                

        }
                    
            
    }
    
}

struct InsertPersonView_Previews: PreviewProvider {
    static var previews: some View {
        InsertPersonView()
    }
}
