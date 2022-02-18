.class Ljxl/biff/formula/CellReferenceError;
.super Ljxl/biff/formula/Operand;
.source "CellReferenceError.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Ljxl/biff/formula/CellReferenceError;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/CellReferenceError;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 3

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 73
    .local v0, "data":[B
    sget-object v1, Ljxl/biff/formula/Token;->REFERR:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 77
    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 62
    sget-object v0, Ljxl/biff/formula/FormulaErrorCode;->REF:Ljxl/biff/formula/FormulaErrorCode;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 87
    return-void
.end method

.method public read([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 52
    const/4 v0, 0x4

    return v0
.end method
