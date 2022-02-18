.class Ljxl/biff/formula/NameRange;
.super Ljxl/biff/formula/Operand;
.source "NameRange.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private index:I

.field private name:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Ljxl/biff/formula/NameRange;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/NameRange;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V
    .locals 3
    .param p1, "nm"    # Ljava/lang/String;
    .param p2, "nt"    # Ljxl/biff/WorkbookMethods;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 71
    iput-object p1, p0, Ljxl/biff/formula/NameRange;->name:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Ljxl/biff/formula/NameRange;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 74
    invoke-interface {p2, p1}, Ljxl/biff/WorkbookMethods;->getNameIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/NameRange;->index:I

    .line 76
    if-ltz v0, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/formula/NameRange;->index:I

    .line 82
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->CELL_NAME_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

    iget-object v2, p0, Ljxl/biff/formula/NameRange;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljxl/biff/WorkbookMethods;)V
    .locals 1
    .param p1, "nt"    # Ljxl/biff/WorkbookMethods;

    .line 58
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 59
    iput-object p1, p0, Ljxl/biff/formula/NameRange;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 60
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 4

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 116
    .local v0, "data":[B
    sget-object v1, Ljxl/biff/formula/Token;->NAMED_RANGE:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getValueCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 118
    invoke-virtual {p0}, Ljxl/biff/formula/NameRange;->getParseContext()Ljxl/biff/formula/ParseContext;

    move-result-object v1

    sget-object v3, Ljxl/biff/formula/ParseContext;->DATA_VALIDATION:Ljxl/biff/formula/ParseContext;

    if-ne v1, v3, :cond_0

    .line 120
    sget-object v1, Ljxl/biff/formula/Token;->NAMED_RANGE:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getReferenceCode()B

    move-result v1

    aput-byte v1, v0, v2

    .line 123
    :cond_0
    iget v1, p0, Ljxl/biff/formula/NameRange;->index:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 125
    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 136
    iget-object v0, p0, Ljxl/biff/formula/NameRange;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 147
    invoke-virtual {p0}, Ljxl/biff/formula/NameRange;->setInvalid()V

    .line 148
    return-void
.end method

.method public read([BI)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 95
    :try_start_0
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/NameRange;->index:I

    .line 97
    iget-object v1, p0, Ljxl/biff/formula/NameRange;->nameTable:Ljxl/biff/WorkbookMethods;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljxl/biff/WorkbookMethods;->getName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/formula/NameRange;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljxl/biff/NameRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v0, 0x4

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljxl/biff/NameRangeException;
    new-instance v1, Ljxl/biff/formula/FormulaException;

    sget-object v2, Ljxl/biff/formula/FormulaException;->CELL_NAME_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw v1
.end method
