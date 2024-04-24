%{
char name[10];
%}
%%
[\n] {printf("\n Hi....%s....Good Morning\n", name); return 1;}
%%
void main()
{
char opt;
do{
printf("\nWhat is your name?");
scanf("%s",name);
yylex();
printf("\nPress y to continue");
scanf("%c",&opt);
} while(opt=='y');
}