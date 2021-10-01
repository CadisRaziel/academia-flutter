void main(){
  // List<Tipando a lista> listNumeros = [];

  //*Declaração normal, atribuindo valor (não precisamos tipar com <int>, veja abaixo como o dart ja tipa quando adicionamos 1 unico valor)
  List<int> listNumero = [1, 2];
  //*Declaração correta para tipagem simples(Forma Correta)
  var listNumero2 = [1,2];


  //*Declaração normal, sem atribuir valor (ai sim precisamos tipar, mesmo o dart reclamando que não precisa)
  List<int> listNumero3 = [];
  //*Porém podemos fazer com o var dessa forma(Foma Correta)
  var listNumero4 = <int>[];
}


