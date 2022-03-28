# Paradigmas de programação
> Forma pela qual se é descrito a solução computacional de um problema.

## Paradigma imperativo
Nesse tipo de contrução as instruções são passadas ao computador na sequencia em que devem ser executadas.

```cpp
aprovados = {};
i = 0;
inicio:
    n = length(alunos);
    if (i >= n) goto fim;
    a = alunos[i];
    if (a.nota < 5) goto proximo;
    nome = toUpper(a.nome);
    adicionar(aprovados, nome);
proximo:
    i = i + 1;
    goto inicio;
fim:
    return sort(aprovados)
```

Este paradigma é recomendado para projetos no qual não serão realizadas grandes mudanças, já que são usadas operações complexas.

##  Paradigma estrururado
Este paradigma é caracterizado pela contrução do código em blocos lógicos, no quais tem funções bem definidas.

```cpp
aprovados = {};
for (i = 0; i < length(alunos); i++) {
    a = alunos[i];
    if (a.nota >= 5) {
        adiciona(aprovados, toUpper(a.nome));
    }
}
return sort(aprovados);
```

Podemos usar o paradigma estruturado em projetos com o maior dinamismo, visto que se torna mais fácil a modularização do código (dividir os processos em subprocessos) facilitando a realização de modificações.

## Paradigma orientado a objetos
Neste paradigma é determinado que o código deve ser modelado de forma a se aproximar do mundo real, e que mesmo em execução no computador, ele deve ser representado por uma estrutura de objetos, características e ações.

```cpp
class Aprovados {
private:
    ArrayList aprovados;

public:
    Aprovados() {
        aprovados = new ArrayList();
    }
    addAluno(aluno) {
        if (aluno.nota >= 5) {
            aprovados.add(aluno.nome.toUpper());
        }
    }
    getAprovados() {
        return aprovados.sort();
    }
}
```

Este paradigma é bastante usado em programas com muitas interações entre si, onde os objetos se relacionam, modificando estados do programa, até que resultem em uma saída esperada

## Paradigma declarativo
Este paradigma é encontrado em linguagens de alto nível, onde o programador pode apensa dizer o que deseja fazer, havendo uma separação clara 
entre o que e como se deve fazer.

```sql
SELECT      UPPER(nome)
FROM        alunos
WHERE       nota >= 5
ORDER BY    nome
```

Usamos este paradigma quando o foco do programa está no seu resultado final esperado e não o processo feito até alcançar esse resultado.

## Paradigma lógico
Tem seu fundamento no uso de formas lógicas, por meio de símbolos, como padrões de entrada e saída. 

```cpp
aprovado(x) :- nota(x, n), n >= 5

sort(findall(Alunos, aprovados(Alunos), Aprovados))
```

Temos como exemplo de uso a realização da prova de um teorema, onde explicitamos algumas regras tidas como verdade e o programa nos responde se nosso teorema é verdadeiro ou falso.

## Paradigma funcional
Seu principal objetivo é declarar ao computador o resultado esperado, e não o passo a passo para a construção deste. Este paradigma é caracterizado por sua imutabilidade e, consequentemente, a não mudança de estado do software, para isso apoia-se no uso de funções que mapeiam os valores de entrada para valores de saída, sem atualizar o estado do software.

```Haskell
sort [nome aluno | aluno <- alunos, nota aluno >= 5]
```



### Referências
* 1.1 - Programação Funcional em Haskell: Paradigmas de Programação [https://www.youtube.com/watch?v=CzGSaXbPFRA&list=PLYItvall0TqJ25sVTLcMhxsE0Hci58mpQ&index=7]
* Paradigmas de programação: o que são e quais os principais? [https://blog.betrybe.com/tecnologia/paradigmas-de-programacao/]
* Paradigmas de Programação [https://guia.dev/pt/pillars/languages-and-tools/programming-paradigms.html]