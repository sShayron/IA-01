
/*
 *
 * a)b
 * b)false
 * c)A = B
 * d)A = 1+2
 * e)A = p(a, b)
 * f)false
 * g)A = a,
 * B = b
 * h)false
 * i)false
 * j)false
 * k)A = f(b)
 * 
 */

% 2) 
imc(1, "normal").
imc(2, "obesidade grau 1").
imc(3, "obesidade grau 2").
imc(4, "obesidade grau 3").

calc_resultado(Imc, Resultado) :- Imc > 20, Imc =< 24.9, imc(1, Resultado).
calc_resultado(Imc, Resultado) :- Imc > 25, Imc =< 29.9, imc(2, Resultado).
calc_resultado(Imc, Resultado) :- Imc > 30, Imc =< 39.9, imc(3, Resultado).
calc_resultado(Imc, Resultado) :- Imc >= 40, imc(4, Resultado). 

calc_imc(Peso,Altura,Imc,Resultado) :- 
    calc_resultado((  Peso / (Altura^2) ), Resultado),
    Imc is (  Peso / (Altura^2) ).

% 3)
/*
 * a)escreveu(“Chico Buarque”,”Estorvo”).
 * b)escreveu(“Paulo Coelho”, Livro).
 * c)autores_nao_ficcao(Autor) :- livro(X, “nao-ficcao”),escreveu(Autor,X).
 * d)livro(NomeLivro, “nao-ficcao”). 
 */

% 4)
/*
 * a) pai_de(Pai,Filho) :- pais_de(Pai,Filho),homem(Pai).
 * 
 * 
 */
homem(josé).
homem(joão).
homem(antônio).
mulher(maria).
mulher(joana).
mulher(kelly).


pais_de(josé,joão).
pais_de(maria,joão).
pais_de(josé,antônio).
pais_de(antônio,kelly).
pais_de(joana,kelly).

pai_de(Pai,Filho) :- pais_de(Pai,Filho),homem(Pai).

filha_de(Filha, Pais) :- pais_de(Pais,Filha),mulher(Filha).

ancestral_de(Ancestral,Pessoa) :- pais_de(Ancestral,Pessoa).
ancestral_de(Ancestral,Pessoa) :- pais_de(Ancestral,Z), ancestral_de(Z,Pessoa).

% 5)
/*
 * a) partes_pequena_de(Parte, Itens) :- pequena(Parte),parte_de(Parte, Itens).
   b) partes_grande_com_itens_pequenos(ParteGrande) :- grande(ParteGrande),	
   	  partes_de(ParteGrande,PartesPertecenteGrande),pequena(PartesPertecenteGrande).
   c) componente_de(Component, Items) :- parte_de(Items, Component).
	  componente_de(Component, Items) :- parte_de(Component, Z), parte_de(Z,Items).
 * 
 */

% 6)

arv(a,b).
arv(a,c).
arv(c,f).
arv(b,d).
arv(b,e).

caminho(X,Y) :- arv(X,Y).
caminho(X,Y) :- arv(X,Z),caminho(Z,Y).
