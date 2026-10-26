%{
#include <stdio.h>
%}

%%
(?i:dog)|(?:cat)|(?:fish)|(?i:parrot) {printf("DOMESTIC ANIMAL: %s\n", yytext); }
[a-zA-Z]+  { printf("WORD: %s\n", yytext); }
\n {printf("NEWLINE!"); }
.       { /* ignore other characters */ }
%%

int main() {
    yylex();
    return 0;
}