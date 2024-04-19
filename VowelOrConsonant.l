%{
	void display(int, char *);
	int flag;
%}

%%
[a|e|i|o|u] { flag=1; display(flag,yytext); }
.	{ flag=0; display(flag,yytext); }
%%

void main()
{
	printf("\nEnter a character: ");
	yylex();
}

void display(int flag, char *t)
{
	if(flag==1)
	{
		printf("\nThe given character %s is a vowel\n",t);
	}
	else
	{
		printf("\nThe given character %s is a consonant\n",t);
	}
}
