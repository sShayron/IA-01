/*
* Suponha que exista uma base de dados Prolog que forneça
* informações sobre uma família. Os predicados homem/1, mulher/1
* e pais_de/2 (que indica se tratar do pai ou da mãe de um elemento)
* foram incluídos.
a) Formule uma regra para definir pai_de.
b) Formule uma regra para definir filha_de.
c) Formule uma regra recursiva para definir ancestral_de.


%%% Fatos
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

pai_de(X,Y) :- pais_de(X,Y),homem(X).

filha_de(X,Y) :- pais_de(Y,X),mulher(X).

ancestral_de(X,Y) :- pais_de(X,Y).

ancestral_de(X,Y) :- pais_de(X,Y),ancestral_de(Y,Z).
