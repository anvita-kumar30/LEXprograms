%{ 
#include<stdio.h> 
#include<stdlib.h> 
%} 

%%
[a-zA-Z]+     { printf("'%s' is a word\n", yytext); }
[0-9]+        { printf("'%s' is a number\n", yytext); }
.             { printf("'%s' is not a valid word or number\n", yytext); }
%%

int yywrap() {
    return 1;  
}

int main() 
{ 
    yylex();
    return 0; 
} 