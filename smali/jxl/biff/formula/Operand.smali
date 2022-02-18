.class abstract Ljxl/biff/formula/Operand;
.super Ljxl/biff/formula/ParseItem;
.source "Operand.java"


# direct methods
.method public constructor <init>()V
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

    .line 44
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 0
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 56
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 0
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 70
    return-void
.end method

.method rowInserted(IIZ)V
    .locals 0
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 84
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 0
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 98
    return-void
.end method
