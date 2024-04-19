%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}

%option noyywrap

/* Definitions of token types */
%{
enum TokenType {
    IDENTIFIER,
    KEYWORD,
    CONSTANT,
    OPERATOR,
    DELIMITER
};
%}

%%
"if"|"else"|"while"|"for"|"int"|"float"   { printf("<KEYWORD, %s>\n", yytext); return KEYWORD; }
[a-zA-Z][a-zA-Z0-9]*                      { printf("<IDENTIFIER, %s>\n", yytext); return IDENTIFIER; }
[0-9]+                                     { printf("<CONSTANT, %s>\n", yytext); return CONSTANT; }
"+"|"-"|"*"|"/"|"="                        { printf("<OPERATOR, %s>\n", yytext); return OPERATOR; }
";"|"("|")"|"{"|"}"                        { printf("<DELIMITER, %s>\n", yytext); return DELIMITER; }
[ \t\n]                                    ; /* Skip whitespace and newlines */
.                                          { fprintf(stderr, "Invalid character: %s\n", yytext); exit(EXIT_FAILURE); }
%%

int main() {
    printf("Enter the input: ");
    yylex();  
    return 0;
}
