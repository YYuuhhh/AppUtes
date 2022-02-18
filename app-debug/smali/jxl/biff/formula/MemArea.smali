.class Ljxl/biff/formula/MemArea;
.super Ljxl/biff/formula/SubExpression;
.source "MemArea.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljxl/biff/formula/SubExpression;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getString(Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {p0}, Ljxl/biff/formula/MemArea;->getSubExpression()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 40
    .local v0, "subExpression":[Ljxl/biff/formula/ParseItem;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 42
    aget-object v1, v0, v2

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 44
    :cond_0
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 46
    aget-object v1, v0, v3

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 47
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    aget-object v1, v0, v2

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 73
    return-void
.end method

.method public read([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 62
    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    invoke-virtual {p0, v0}, Ljxl/biff/formula/MemArea;->setLength(I)V

    .line 63
    const/4 v0, 0x6

    return v0
.end method
