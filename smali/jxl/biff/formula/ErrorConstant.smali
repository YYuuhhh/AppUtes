.class Ljxl/biff/formula/ErrorConstant;
.super Ljxl/biff/formula/Operand;
.source "ErrorConstant.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# instance fields
.field private error:Ljxl/biff/formula/FormulaErrorCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 48
    invoke-static {p1}, Ljxl/biff/formula/FormulaErrorCode;->getErrorCode(Ljava/lang/String;)Ljxl/biff/formula/FormulaErrorCode;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/formula/ErrorConstant;->error:Ljxl/biff/formula/FormulaErrorCode;

    .line 49
    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 3

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 73
    .local v0, "data":[B
    sget-object v1, Ljxl/biff/formula/Token;->ERR:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 74
    iget-object v1, p0, Ljxl/biff/formula/ErrorConstant;->error:Ljxl/biff/formula/FormulaErrorCode;

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaErrorCode;->getCode()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 76
    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 87
    iget-object v0, p0, Ljxl/biff/formula/ErrorConstant;->error:Ljxl/biff/formula/FormulaErrorCode;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 97
    return-void
.end method

.method public read([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 60
    aget-byte v0, p1, p2

    .line 61
    .local v0, "code":I
    invoke-static {v0}, Ljxl/biff/formula/FormulaErrorCode;->getErrorCode(I)Ljxl/biff/formula/FormulaErrorCode;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/formula/ErrorConstant;->error:Ljxl/biff/formula/FormulaErrorCode;

    .line 62
    const/4 v1, 0x1

    return v1
.end method
