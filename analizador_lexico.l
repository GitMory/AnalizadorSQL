%{
#include <stdio.h>
%}

%%
[ \t\n]          

[SELECTselect]+   { printf("PC: %s\n", yytext); }
[FROMfrom]+       { printf("PC: %s\n", yytext); }
[WHEREwhere]+     { printf("PC: %s\n", yytext); }

[a-zA-Z][a-zA-Z0-9] { printf("ID: %s\n", yytext); }

[=<>]+            { printf("OPREL: %s\n", yytext); }
[0-9]+            { printf("NÚMERO: %s\n", yytext); }
[,]+              { printf("SIGNO: %s\n", yytext); }

.                 { printf("Caracter no reconocido: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}