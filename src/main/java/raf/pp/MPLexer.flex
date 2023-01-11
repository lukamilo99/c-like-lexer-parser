// import section
import java_cup.runtime.*;
import raf.pp.KWTable;
import raf.pp.sym;

%%

// declaration section
%class MPLexer
%cup
%line
%column

%eofval{
	return new Symbol( sym.EOF );
%eofval}

%{
/*
    public Symbol getKeyword(){
        KWTable kwTable = new KWTable();
        return new Symbol( kwTable.find( yytext() ),
        yytext(), yyline, yycolumn );
    }
*/
    public int getLine() {
      return yyline;
    }
%}

//states
%state COMMENT

//macros
letter = [a-zA-Z]
digit = [0-9]
hex = [0-9A-F]

%%

\/\/ { yybegin( COMMENT ); }
<COMMENT>~\n { yybegin( YYINITIAL ); }

[\t\n\r ] { ; }
\( { return new Symbol(sym.LP); }
\) { return new Symbol(sym.RP); }
\{ { return new Symbol(sym.LCB); }
\} { return new Symbol(sym.RCB); }

&& { return new Symbol(sym.AND); }
\|\| { return new Symbol(sym.OR); }
\+ { return new Symbol(sym.PLUS); }
\* { return new Symbol(sym.MUL); }
\- { return new Symbol(sym.MINUS); }
\/ { return new Symbol(sym.DIV); }
\^ { return new Symbol(sym.POW); }
\< { return new Symbol(sym.LT); }
\<= { return new Symbol(sym.LTO); }
\> { return new Symbol(sym.MT); }
\>= { return new Symbol(sym.MTO); }
== { return new Symbol(sym.EQUALS); }
\!= { return new Symbol(sym.DIFF); }

; { return new Symbol(sym.SEMICOLON); }
, { return new Symbol(sym.COMMA); }
= { return new Symbol(sym.ASSIGN); }
: { return new Symbol(sym.DOTDOT); }

"main"  { return new Symbol(sym.MAIN); }
"int"  { return new Symbol(sym.INT); }
"real"  { return new Symbol(sym.REAL); }
"char"  { return new Symbol(sym.CHAR); }
"bool"  { return new Symbol(sym.BOOL); }
"struct"  { return new Symbol(sym.STRUCT); }
"read"  { return new Symbol(sym.READ); }
"write"  { return new Symbol(sym.WRITE); }
"if"  { return new Symbol(sym.IF); }
"then"  { return new Symbol(sym.THEN); }
"while"  { return new Symbol(sym.WHILE); }
"for"  { return new Symbol(sym.FOR); }
"do"  { return new Symbol(sym.DO); }
"true"  { return new Symbol(sym.CONST); }
"false"  { return new Symbol(sym.CONST); }

//{letter}+ { return getKeyword(); } iz nekog razloga nije htelo preko keyword, pa sam lepio keyword

({letter} | _)({letter}|{digit}| _ )* { return new Symbol(sym.ID); }

{digit}+ { return new Symbol(sym.CONST); }
\#{hex}+ { return new Symbol(sym.CONST); }
0\.{digit}+(E[+\-]{digit}+)? { return new Symbol(sym.CONST); }
\'{letter}*\' { return new Symbol(sym.CONST); }
\'[^]\' { return new Symbol(sym.CONST); }

. { System.out.println( "ERROR: " + yytext() ); }

