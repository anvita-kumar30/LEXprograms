%{
int linecount=0, wordcount=0, charcount=0, sc=0, tc=0;
%}
%%
[\n]	{linecount++; charcount+=yyleng;}
[\t]	{sc++; charcount+=yyleng;}
[^\t]	{tc++; charcount+=yyleng;}
[^\t\n]+	{wordcount++; charcount+=yyleng;}
%%

int yywrap() { return 1; }

void main()
{
	printf("Enter a sentence: ");
	yylex();
	printf("Number of lines = %d\n Number of words = %d\n Number of characters = %d", linecount, wordcount, charcount);
}
