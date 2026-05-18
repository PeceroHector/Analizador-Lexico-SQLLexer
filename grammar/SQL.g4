grammar SQL;
programa : sentencia* EOF ;
sentencia : . ;          // comodín — el parser real se implementa después

//  1. PALABRAS RESERVADAS — DML
SELECT      : [Ss][Ee][Ll][Ee][Cc][Tt] ;
FROM        : [Ff][Rr][Oo][Mm] ;
WHERE       : [Ww][Hh][Ee][Rr][Ee] ;
INSERT      : [Ii][Nn][Ss][Ee][Rr][Tt] ;
INTO        : [Ii][Nn][Tt][Oo] ;
VALUES      : [Vv][Aa][Ll][Uu][Ee][Ss] ;
UPDATE      : [Uu][Pp][Dd][Aa][Tt][Ee] ;
SET         : [Ss][Ee][Tt] ;
DELETE      : [Dd][Ee][Ll][Ee][Tt][Ee] ;
MERGE       : [Mm][Ee][Rr][Gg][Ee] ;


//  2. PALABRAS RESERVADAS — Cláusulas de consulta
JOIN        : [Jj][Oo][Ii][Nn] ;
INNER       : [Ii][Nn][Nn][Ee][Rr] ;
LEFT        : [Ll][Ee][Ff][Tt] ;
RIGHT       : [Rr][Ii][Gg][Hh][Tt] ;
FULL        : [Ff][Uu][Ll][Ll] ;
OUTER       : [Oo][Uu][Tt][Ee][Rr] ;
CROSS       : [Cc][Rr][Oo][Ss][Ss] ;
ON          : [Oo][Nn] ;
GROUP       : [Gg][Rr][Oo][Uu][Pp] ;
BY          : [Bb][Yy] ;
ORDER       : [Oo][Rr][Dd][Ee][Rr] ;
HAVING      : [Hh][Aa][Vv][Ii][Nn][Gg] ;
LIMIT       : [Ll][Ii][Mm][Ii][Tt] ;
OFFSET      : [Oo][Ff][Ff][Ss][Ee][Tt] ;
DISTINCT    : [Dd][Ii][Ss][Tt][Ii][Nn][Cc][Tt] ;
ALL         : [Aa][Ll][Ll] ;
AS          : [Aa][Ss] ;
UNION       : [Uu][Nn][Ii][Oo][Nn] ;
INTERSECT   : [Ii][Nn][Tt][Ee][Rr][Ss][Ee][Cc][Tt] ;
EXCEPT      : [Ee][Xx][Cc][Ee][Pp][Tt] ;
SUBQUERY    : [Ss][Uu][Bb][Qq][Uu][Ee][Rr][Yy] ;


//  3. PALABRAS RESERVADAS — DDL 
CREATE      : [Cc][Rr][Ee][Aa][Tt][Ee] ;
TABLE       : [Tt][Aa][Bb][Ll][Ee] ;
VIEW        : [Vv][Ii][Ee][Ww] ;
INDEX       : [Ii][Nn][Dd][Ee][Xx] ;
DATABASE    : [Dd][Aa][Tt][Aa][Bb][Aa][Ss][Ee] ;
SCHEMA      : [Ss][Cc][Hh][Ee][Mm][Aa] ;
ALTER       : [Aa][Ll][Tt][Ee][Rr] ;
DROP        : [Dd][Rr][Oo][Pp] ;
TRUNCATE    : [Tt][Rr][Uu][Nn][Cc][Aa][Tt][Ee] ;
RENAME      : [Rr][Ee][Nn][Aa][Mm][Ee] ;
ADD         : [Aa][Dd][Dd] ;
COLUMN      : [Cc][Oo][Ll][Uu][Mm][Nn] ;
CONSTRAINT  : [Cc][Oo][Nn][Ss][Tt][Rr][Aa][Ii][Nn][Tt] ;
PRIMARY     : [Pp][Rr][Ii][Mm][Aa][Rr][Yy] ;
FOREIGN     : [Ff][Oo][Rr][Ee][Ii][Gg][Nn] ;
KEY         : [Kk][Ee][Yy] ;
REFERENCES  : [Rr][Ee][Ff][Ee][Rr][Ee][Nn][Cc][Ee][Ss] ;
UNIQUE      : [Uu][Nn][Ii][Qq][Uu][Ee] ;
CHECK       : [Cc][Hh][Ee][Cc][Kk] ;
DEFAULT     : [Dd][Ee][Ff][Aa][Uu][Ll][Tt] ;
NOT         : [Nn][Oo][Tt] ;
NULL_KW     : [Nn][Uu][Ll][Ll] ;
AUTO_INCREMENT : [Aa][Uu][Tt][Oo][Uu][Ii][Nn][Cc][Rr][Ee][Mm][Ee][Nn][Tt] | [Ss][Ee][Rr][Ii][Aa][Ll] ;



//  4. PALABRAS RESERVADAS — TCL

BEGIN       : [Bb][Ee][Gg][Ii][Nn] ;
COMMIT      : [Cc][Oo][Mm][Mm][Ii][Tt] ;
ROLLBACK    : [Rr][Oo][Ll][Ll][Bb][Aa][Cc][Kk] ;
SAVEPOINT   : [Ss][Aa][Vv][Ee][Pp][Oo][Ii][Nn][Tt] ;
TRANSACTION : [Tt][Rr][Aa][Nn][Ss][Aa][Cc][Tt][Ii][Oo][Nn] ;


//  5. PALABRAS RESERVADAS — Lógica condicional 
CASE        : [Cc][Aa][Ss][Ee] ;
WHEN        : [Ww][Hh][Ee][Nn] ;
THEN        : [Tt][Hh][Ee][Nn] ;
ELSE        : [Ee][Ll][Ss][Ee] ;
END_KW      : [Ee][Nn][Dd] ;
IF_KW       : [Ii][Ff] ;
EXISTS      : [Ee][Xx][Ii][Ss][Tt][Ss] ;
IN_KW       : [Ii][Nn] ;
BETWEEN     : [Bb][Ee][Tt][Ww][Ee][Ee][Nn] ;
LIKE        : [Ll][Ii][Kk][Ee] ;
ILIKE       : [Ii][Ll][Ii][Kk][Ee] ;
REGEXP      : [Rr][Ee][Gg][Ee][Xx][Pp] ;
IS          : [Ii][Ss] ;
AND_KW      : [Aa][Nn][Dd] ;
OR_KW       : [Oo][Rr] ;


//  6. TIPOS DE DATO

T_INT       : [Ii][Nn][Tt] | [Ii][Nn][Tt][Ee][Gg][Ee][Rr] ;
T_BIGINT    : [Bb][Ii][Gg][Ii][Nn][Tt] ;
T_SMALLINT  : [Ss][Mm][Aa][Ll][Ll][Ii][Nn][Tt] ;
T_FLOAT     : [Ff][Ll][Oo][Aa][Tt] ;
T_DOUBLE    : [Dd][Oo][Uu][Bb][Ll][Ee] ;
T_NUMERIC   : [Nn][Uu][Mm][Ee][Rr][Ii][Cc] | [Dd][Ee][Cc][Ii][Mm][Aa][Ll] ;
T_CHAR      : [Cc][Hh][Aa][Rr] ;
T_VARCHAR   : [Vv][Aa][Rr][Cc][Hh][Aa][Rr] ;
T_TEXT      : [Tt][Ee][Xx][Tt] ;
T_BOOLEAN   : [Bb][Oo][Oo][Ll][Ee][Aa][Nn] | [Bb][Oo][Oo][Ll] ;
T_DATE      : [Dd][Aa][Tt][Ee] ;
T_TIME      : [Tt][Ii][Mm][Ee] ;
T_DATETIME  : [Dd][Aa][Tt][Ee][Tt][Ii][Mm][Ee] ;
T_TIMESTAMP : [Tt][Ii][Mm][Ee][Ss][Tt][Aa][Mm][Pp] ;
T_JSON      : [Jj][Ss][Oo][Nn] ;
T_BLOB      : [Bb][Ll][Oo][Bb] ;


//  7. FUNCIONES AGREGADAS
F_COUNT     : [Cc][Oo][Uu][Nn][Tt] ;
F_SUM       : [Ss][Uu][Mm] ;
F_AVG       : [Aa][Vv][Gg] ;
F_MAX       : [Mm][Aa][Xx] ;
F_MIN       : [Mm][Ii][Nn] ;
F_COALESCE  : [Cc][Oo][Aa][Ll][Ee][Ss][Cc][Ee] ;
F_NULLIF    : [Nn][Uu][Ll][Ll][Ii][Ff] ;
F_CAST      : [Cc][Aa][Ss][Tt] ;
F_UPPER     : [Uu][Pp][Pp][Ee][Rr] ;
F_LOWER     : [Ll][Oo][Ww][Ee][Rr] ;
F_LENGTH    : [Ll][Ee][Nn][Gg][Tt][Hh] ;
F_TRIM      : [Tt][Rr][Ii][Mm] ;
F_CONCAT    : [Cc][Oo][Nn][Cc][Aa][Tt] ;
F_SUBSTR    : [Ss][Uu][Bb][Ss][Tt][Rr] | [Ss][Uu][Bb][Ss][Tt][Rr][Ii][Nn][Gg] ;
F_NOW       : [Nn][Oo][Ww] ;
F_ROUND     : [Rr][Oo][Uu][Nn][Dd] ;
F_ABS       : [Aa][Bb][Ss] ;
F_FLOOR     : [Ff][Ll][Oo][Oo][Rr] ;
F_CEIL      : [Cc][Ee][Ii][Ll] | [Cc][Ee][Ii][Ll][Ii][Nn][Gg] ;


//  8. OPERADORES ARITMÉTICOS
SUMA        : '+' ;
RESTA       : '-' ;
MULT        : '*' ;
DIV         : '/' ;
MODULO      : '%' ;
CONCAT_OP   : '||' ;   


// Consultas avanzadas
WITH        : [Ww][Ii][Tt][Hh] ;
FETCH       : [Ff][Ee][Tt][Cc][Hh] ;
NEXT        : [Nn][Ee][Xx][Tt] ;
ROWS        : [Rr][Oo][Ww][Ss] ;
ONLY        : [Oo][Nn][Ll][Yy] ;
TOP         : [Tt][Oo][Pp] ;

// Funciones de Ventana 
OVER        : [Oo][Vv][Ee][Rr] ;
PARTITION   : [Pp][Aa][Rr][Tt][Ii][Tt][Ii][Oo][Nn] ;

// Ordenamiento
ASC         : [Aa][Ss][Cc] ;
DESC        : [Dd][Ee][Ss][Cc] ;

// DDL Extendido
PROCEDURE   : [Pp][Rr][Oo][Cc][Ee][Dd][Uu][Rr][Ee] ;
FUNCTION    : [Ff][Uu][Nn][Cc][Tt][Ii][Oo][Nn] ;
TRIGGER     : [Tt][Rr][Ii][Gg][Gg][Ee][Rr] ;
SEQUENCE    : [Ss][Ee][Qq][Uu][Ee][Nn][Cc][Ee] ;
TYPE        : [Tt][Yy][Pp][Ee] ;
CASCADE     : [Cc][Aa][Ss][Cc][Aa][Dd][Ee] ;
RESTRICT    : [Rr][Ee][Ss][Tt][Rr][Ii][Cc][Tt] ;

// DCL 
TO          : [Tt][Oo];
GRANT       : [Gg][Rr][Aa][Nn][Tt] ;
REVOKE      : [Rr][Ee][Vv][Oo][Kk][Ee] ;
DENY        : [Dd][Ee][Nn][Yy] ;

// Operadores de conjuntos y lógica condicional
ANY         : [Aa][Nn][Yy] ;
SOME        : [Ss][Oo][Mm][Ee] ;
NULLS       : [Nn][Uu][Ll][Ll][Ss] ;
FIRST       : [Ff][Ii][Rr][Ss][Tt] ;
LAST        : [Ll][Aa][Ss][Tt] ;

//variables y ejecución
DECLARE     : [Dd][Ee][Cc][Ll][Aa][Rr][Ee] ;
EXEC        : [Ee][Xx][Ee][Cc] ([Uu][Tt][Ee])? ;

T_NVARCHAR  : [Nn][Vv][Aa][Rr][Cc][Hh][Aa][Rr] ;
T_XML       : [Xx][Mm][Ll] ;
T_UUID      : [Uu][Uu][Ii][Dd] ;
T_MONEY     : [Mm][Oo][Nn][Ee][Yy] ;
T_DECIMAL   : [Dd][Ee][Cc][Ii][Mm][Aa][Ll] ;


//OPERADORES RELACIONALES
IGUAL       : '=' ;
DIFERENTE   : '<>' | '!=' ;
MAYOR       : '>' ;
MENOR       : '<' ;
MAYOR_IGUAL : '>=' ;
MENOR_IGUAL : '<=' ;


//DELIMITADORES
PUNTO_COMA  : ';' ;
COMA        : ',' ;
PUNTO       : '.' ;
PAREN_IZQ   : '(' ;
PAREN_DER   : ')' ;


//LITERALES NUMÉRICAS
NUMERO_ENTERO
    : [0-9]+
    ;

NUMERO_DECIMAL
    : [0-9]+ '.' [0-9]+
    ;

//Cadena entre comillas simples
CADENA_TEXTO
    : '\'' ( '\'\'' | ~['\\] )* '\''
    ;

//  Identificador entre comillas dobles
IDENTIFICADOR_QUOTED
    : '`' ~[`]* '`'
    | '"' ~["]* '"'
    ;


//IDENTIFICADORES

IDENTIFICADOR
    : [a-zA-Z_] [a-zA-Z0-9_]*
    ;


//COMENTARIOS

COMENTARIO_LINEA
    : '--' ~[\r\n]* -> skip
    ;

COMENTARIO_BLOQUE
    : '/*' .*? '*/' -> skip
    ;


//ESPACIOS EN BLANCO Y SALTOS DE LÍNEA

ESPACIO
    : [ \t\r]+ -> skip
    ;

NUEVA_LINEA
    : '\n'
    ;


//CARÁCTER NO RECONOCIDO  

ERROR_LEXICO
    : .
    ;
