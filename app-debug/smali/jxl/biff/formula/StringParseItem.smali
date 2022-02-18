.class Ljxl/biff/formula/StringParseItem;
.super Ljxl/biff/formula/ParseItem;
.source "StringParseItem.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljxl/biff/formula/ParseItem;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 0
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 63
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 0
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 75
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 0
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 89
    return-void
.end method

.method getBytes()[B
    .locals 1

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method getString(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 43
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 126
    return-void
.end method

.method rowInserted(IIZ)V
    .locals 0
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 103
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 0
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 117
    return-void
.end method
