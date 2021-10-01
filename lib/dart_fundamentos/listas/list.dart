
void main(){
  final numeros = [1,2,3,4];
  print(numeros);

  //*Adicionando itens no array (vai adicionar no final)
  numeros.add(5);
  print(numeros);


  final nomes = ['Vitor', 'Giovanna', 'Ariella', 'Rosana', 'Monique', 'Michele'];
  print(nomes);

  //*Pegando por indice
  print(nomes[2]);

  //*Vai adicionar um novo item no indice 0
  nomes.insert(0, 'Dog');

  //*Podemos adicionar um array dentro de outro array
  nomes.addAll(['Vitor2', 'Giovanna2', 'Ariella2', 'Rosana2', 'Monique2', 'Michele2']);
  print(nomes);

  //*Removendo um item da lista (o nome tem que ser exatamente igual)
  nomes.remove('Dog');

  //*faz um looping na lista e traz todos os elementos (vai remover somente o 'Vitor')
  // nomes.removeWhere((nome) => nome == 'Vitor');

  //*Pegando o primeiro e o ultimo nome da lista (sem indice)
  print(nomes.first);
  print(nomes.last);

  //*Vai buscar o primeiro e o ultimo nome e o ultimo nome e retornar (os nomes que eu definir)
  //*O primeiro que acha e o ultimo que acha eu quero que me retorne 
  var primeiroNome = nomes.firstWhere((nomes) => nomes == 'Vitor');
  print(primeiroNome);
  var ultimoNome = nomes.lastWhere((nomes) => nomes == 'Vitor');
  print(ultimoNome);


  //*Podemos gerar uma lista com a quantidade que eu pedir no lugar do 'length'
  //*nesse exemplo ele vai gerar 1,2,3,4,5,6,7,8,9,10
  //*Pode ser com qualquer coisa
  final numerosGerados = List.generate(10, (index) => index +1);
  print(numerosGerados);

  //*Aqui vai gerar isso:
  //*[String 1, String 2, String 3, String 4, String 5, String 6, String 7, String 8, String 9, String 10]
  final stringGerados = List.generate(10, (strings) => 'String ${strings +1}');
  print(stringGerados);


  //*Gerando uma quantidade de itens repetidos que eu definir
  //*Vai gerar isso: 
  //*[Vitor, Vitor, Vitor, Vitor, Vitor, Vitor, Vitor, Vitor, Vitor, Vitor]
  final repeticoes = List.filled(10, 'Vitor');
  print(repeticoes);


  //*Realizando um calculo
  //*Fold -> é do Reduce
  //? Explicando: aqui geramos 100 numeros como ali definido e ele fez o seguinte:
  // 0 + 1
  // 1 + 2
  // 3 + 3
  // 6 + 4
  // 10 + 5
  //etc...
  final numerosGeradosCalculo = List.generate(100, (index) => index +1);
  var soma = numerosGeradosCalculo.fold<int>(0, (previousValue, numero) => previousValue = previousValue + numero);
  print(soma);

  //------------------------------- SPREAD OPERATOR---------------------------------------------------------------------------------
  //TODO Spread operator (...)
  //? Utilizado para adicionar LISTA DENTRO DE LISTA !!!
  var listaNumerosSpread = [1, 2, 3];
  var listaNumerosSpreadB = [3, 4, 5];

  //*Para juntar essas duas listas fariamos tradicionalmente assim:
  listaNumerosSpread.addAll(listaNumerosSpreadB);

  //*Porém podemos simplificar isso utilizando os (...)
  var listaNumerosSpreadC = [6,7,8, ...listaNumerosSpreadB, ...listaNumerosSpread];
  print(listaNumerosSpreadC);
//-----------------------------------------------------------------------------------------------------------------------------------

  //*Collection if
  //*Repare que fizemos um 'if' dentro da lista, e podemos ativa-la com true e false
  //*Ou seja, true vai aparesentar a promocaoAtiva 'Suco de laranja' e false não vai mostrar
  var promocaoAtiva = true;
  var produtos = [
    'Cerveja',
    'Refrigerante',
    if(promocaoAtiva) 'Suco de laraja'
  ];
  print(produtos);

  

  //*Collection for
  //*é a mesma caracteristica do if
  //*Porém repare no exemplo, eu vou adicionar o [1,2,3] dentro da 'listaStrings'
  //*Ou seja o print ficará assim: [#0, #1, #2, #3]
  var listInts = [1,2,3];
  var listaStrings = [
    '#0',
    for(var i in listInts) '#$i'
  ];
  print(listaStrings);

  //*Juntando os itens em uma string e colocando um separador
  var strings = listaStrings.join(' -> ');
  print(strings);
}