%{
#include "tabsimb2.c"
#include <stdlib.h>
#include <stdio.h>
simbolo * t;
%}
%union {
int numero;
simbolo * ptr_simbolo;
 }
%token <numero> NUMERO
%token <ptr_simbolo> ID
%token ASIG
%type <numero> expr asig prog
%left '+'
%left '*'
%%
prog : prog asig '\n' { printf("Asignaciones efectuadas\n");}
| prog expr '\n' { printf("%d\n",$2);}
| prog error '\n' { yyerrok;}

;
asig : ID ASIG expr {
$$ = $3;
$1->valor = $3;
}
 | ID ASIG asig {
$$ = $3;
$1->valor = $3;
}
 ;
expr : expr '+' expr {$$ = $1 + $3;}
| expr '*' expr {$$ = $1 * $3;}
| ID {$$ = $1->valor; }
| NUMERO {$$ = $1;}
;
%%
#include "ejem2l.c"
#include "errorlib.c"
void main()
{ t = crear();
yyparse ();
imprimir(t);
 }
typedef struct nulo
{
struct nulo * sig;
char nombre [20];
int valor;
} simbolo;
simbolo * crear()
{
return NULL;
};
void insertar(p_t,s)
simbolo **p_t;
simbolo * s;
{
s->sig = (*p_t);
(*p_t) = s;
};
simbolo * buscar(t,nombre)
simbolo * t;
char nombre[20];
{
while ( (t != NULL) && (strcmp(nombre, t->nombre)) )
t = t->sig;
return (t);
};
void imprimir(t)
simbolo * t;
{
while (t != NULL)
{
printf("%s\n", t->nombre);
t = t->sig;
}
};