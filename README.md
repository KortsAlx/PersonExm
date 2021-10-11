# PersonExm

Respuesta 1
Enumeration
enum Person {
    case happy, smile, cry, angry
}

Structures
struct Person {
    var name: String
    var lastname: String
    var phone: Int
    var email: String
}

Class
class Person{
  let name : String
  var language : String
  
  init(name : String, language : String){
      self.name = name
      self.language = language
  }
  
}
Extension
extension Person {
  var name : Name{ return self }
  var app : Apellido{ return self }
  
}
Protocol
protocol Person{
  var name : String { get set }
  var tel : Int { get }
}

Inheritance 
let someperson = Person()
class otherPerson : Person{

}
let y var.
let message = " Hola "
var message : MensageClass(text: Message)


Respuesta 2.
Para el consumo de web service en rest, primero se creo un modelo de datos con las variables correspondientes a la respuesta de cada webservices, al igual que el model de datos de envio en el caso de servicios POST. Creo clases de interface para la utilizacion del endpoint del servicios, asi como la distrubucion de todas las url de cada servicio. Las librerias que uso son URL, URLSession, JSONDecoder(decodificacion json), JSONEncode(codificacion json), Dispatch para hacer una conexion asincrona.

Respuesta 3.
Actualmente con la llegada de iOS14 se creo una nueva libreria nativa llamada SwiftUI practicamente, creas Vistas heredando de la clase View y cada una con un Body. Antes de eso se ocupada storyboard como la principal vista para crear componentes visuales. XIB en su momento fue una creada para nener un archivo en cada clase, a diferencia del storyboard que puede unir todas tus clases.

Respuesta 4
Ambos, para la gestion de dependecia para un soporte correcto a lago plazo, especificando versiones de librerias utlizadas en dicho proyecto, visibilidad a la hora de actualizar.

Respuesta 5
No, Xamarinforms es el framework de microsoft que en algun momento lo utilice para agilizar el desarrollo de una app android/iOS, ya que desde el mismo codigo generas el APK o IPA.








