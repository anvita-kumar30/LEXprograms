%{
#include <stdio.h>
%}

%%
if|for|int|float|return       { printf("KEYWORD: %s>\n", yytext); }
[a-zA-Z][a-zA-Z0-9_]*         { printf("IDENTIFIER: %s>\n", yytext); r}
[0-9]+                        { printf("CONSTANT: %s>\n", yytext); }
[+-*/=]                       { printf("OPERATOR: %s>\n", yytext); }
[;(){}]                       { printf("DELIMITER: %s>\n", yytext); }
[ \t\n]                       ; /* Skip whitespace and newlines */
.                             { printf("Invalid character: %s\n",yytext); }
%%

int main() {
    printf("Enter the input: \n");
    yylex();  
    return 0;
}
