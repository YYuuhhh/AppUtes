.class Ljxl/biff/formula/UnaryPlus;
.super Ljxl/biff/formula/UnaryOperator;
.source "UnaryPlus.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljxl/biff/formula/UnaryOperator;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method getPrecedence()I
    .locals 1

    .line 57
    const/4 v0, 0x2

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "+"

    return-object v0
.end method

.method getToken()Ljxl/biff/formula/Token;
    .locals 1

    .line 46
    sget-object v0, Ljxl/biff/formula/Token;->UNARY_PLUS:Ljxl/biff/formula/Token;

    return-object v0
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 67
    return-void
.end method
