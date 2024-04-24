%{
char name[10];
%}
%%
[\n] {printf("\n Hi....%s....Good Morning\n", name); return 1;}
%%
void main()
{
printf("\nWhat is your name?");
scanf("%s",name);
yylex();
}