.class Ljxl/biff/formula/MissingArg;
.super Ljxl/biff/formula/Operand;
.source "MissingArg.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 3

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 55
    .local v0, "data":[B
    sget-object v1, Ljxl/biff/formula/Token;->MISSING_ARG:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 57
    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 68
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 77
    return-void
.end method

.method public read([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 44
    const/4 v0, 0x0

    return v0
.end method
