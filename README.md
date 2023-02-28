## Grammar
```
Program -> MAIN() Block <br/>
Block -> { VarList StatementList } <br/>
VarList -> VarList VarDecl | VarDecl <br/>
VarDecl -> Namelist = Type ; <br/>
NameList -> NameList , ID | ID <br/>
Type -> INT | CHAR | REAL | BOOL | Structure <br/>
Structure -> STRUCT ID { VarList StructureStatementList } <br/>
StructureStatementList -> StructureStatementList StructureStatement | StructureStatement <br/>
StructureStatement -> ID = Expression ; <br/>
StatenentList -> StatementList Statement | Statement <br/>
Statment -> Loop | IfStatement | ID = Expression ; | READ ( NameList ) ; | WRITE ( ExpressionList) ; | Block <br/>
IfStatement -> IF ( Expression ) THEN Statement | IF ( Expression ) THEN Statement ELSE Statement <br/>
Loop -> WHILE ( Expression ) THEN Statement <br/>
Expression -> Expression || AndExpression | AndExpression <br/>
AndExpression -> AndExpression && RelExpression | RelExpresion <br/>
ArExpression -> ArExpression + Term | ArExpression - Term | Term <br/>
RelExpression -> ArExpression RelOp ArExpresion | ArExpresion <br/>
RelOp -> < | > | == | != | <= | >= <br/>
Term -> Term * Factor | Term / Factor | Term ^ Factor | Factor <br/>
Factor -> ID | CONST | (Expression) <br/>
ExpressionList -> ExpressionList, Expression | Expression <br/>
```
