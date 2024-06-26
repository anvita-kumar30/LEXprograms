%{
#include <stdio.h>
int num_lines = 0;
int num_words = 0;
int num_chars = 0;
%}

%%
\n           { num_lines++; }            
[a-zA-Z]+    { num_words++; num_chars += yyleng; } 
.            { num_chars++; }        
%%

int main() {
    printf("Enter a sentence: ");
    yylex(); 
    printf("Number of lines: %d\n", num_lines);
    printf("Number of words: %d\n", num_words);
    printf("Number of characters: %d\n", num_chars);
    return 0;
}
