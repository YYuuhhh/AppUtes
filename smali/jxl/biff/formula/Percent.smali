.class Ljxl/biff/formula/Percent;
.super Ljxl/biff/formula/UnaryOperator;
.source "Percent.java"

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

    .line 75
    const/4 v0, 0x5

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {p0}, Ljxl/biff/formula/Percent;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 42
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 43
    invoke-virtual {p0}, Ljxl/biff/formula/Percent;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    return-void
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "%"

    return-object v0
.end method

.method getToken()Ljxl/biff/formula/Token;
    .locals 1

    .line 64
    sget-object v0, Ljxl/biff/formula/Token;->PERCENT:Ljxl/biff/formula/Token;

    return-object v0
.end method

.method handleImportedCellReferences()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Ljxl/biff/formula/Percent;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 54
    .local v0, "operands":[Ljxl/biff/formula/ParseItem;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 55
    return-void
.end method
