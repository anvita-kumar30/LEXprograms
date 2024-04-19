%{
#include <stdio.h>
%}

%%
[a-zA-Z]      {
                char ch = yytext[0];
                if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' ||
                    ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U') {
                    printf("'%c' is a vowel\n", ch);
                } else {
                    printf("'%c' is a consonant\n", ch);
                }
              }
.             { printf("'%c' is not an alphabetic character\n", yytext[0]); }
%%

int main() {
    yylex();  
    return 0;
}
