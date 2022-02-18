.class Ljxl/biff/formula/SharedFormulaCellReference;
.super Ljxl/biff/formula/Operand;
.source "SharedFormulaCellReference.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private column:I

.field private columnRelative:Z

.field private relativeTo:Ljxl/Cell;

.field private row:I

.field private rowRelative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/biff/formula/SharedFormulaCellReference;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/SharedFormulaCellReference;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/Cell;)V
    .locals 0
    .param p1, "rt"    # Ljxl/Cell;

    .line 70
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 71
    iput-object p1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->relativeTo:Ljxl/Cell;

    .line 72
    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 3

    .line 128
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 129
    .local v0, "data":[B
    sget-object v1, Ljxl/biff/formula/Token;->REF:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 131
    iget v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 133
    iget v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    .line 135
    .local v1, "columnMask":I
    iget-boolean v2, p0, Ljxl/biff/formula/SharedFormulaCellReference;->columnRelative:Z

    if-eqz v2, :cond_0

    .line 137
    or-int/lit16 v1, v1, 0x4000

    .line 140
    :cond_0
    iget-boolean v2, p0, Ljxl/biff/formula/SharedFormulaCellReference;->rowRelative:Z

    if-eqz v2, :cond_1

    .line 142
    const v2, 0x8000

    or-int/2addr v1, v2

    .line 145
    :cond_1
    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 147
    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 108
    iget v0, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 113
    iget v0, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 118
    iget v0, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    iget v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    invoke-static {v0, v1, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 119
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 158
    return-void
.end method

.method public read([BI)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 85
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getShort(BB)S

    move-result v0

    iput v0, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    .line 87
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 89
    .local v0, "columnMask":I
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    iput v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    .line 90
    and-int/lit16 v1, v0, 0x4000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->columnRelative:Z

    .line 91
    const v4, 0x8000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Ljxl/biff/formula/SharedFormulaCellReference;->rowRelative:Z

    .line 93
    if-eqz v1, :cond_2

    iget-object v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->relativeTo:Ljxl/Cell;

    if-eqz v1, :cond_2

    .line 95
    invoke-interface {v1}, Ljxl/Cell;->getColumn()I

    move-result v1

    iget v2, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    add-int/2addr v1, v2

    iput v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    .line 98
    :cond_2
    iget-boolean v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->rowRelative:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->relativeTo:Ljxl/Cell;

    if-eqz v1, :cond_3

    .line 100
    invoke-interface {v1}, Ljxl/Cell;->getRow()I

    move-result v1

    iget v2, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    add-int/2addr v1, v2

    iput v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    .line 103
    :cond_3
    const/4 v1, 0x4

    return v1
.end method
