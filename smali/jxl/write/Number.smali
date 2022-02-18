.class public Ljxl/write/Number;
.super Ljxl/write/biff/NumberRecord;
.source "Number.java"

# interfaces
.implements Ljxl/write/WritableCell;
.implements Ljxl/NumberCell;


# direct methods
.method public constructor <init>(IID)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "val"    # D

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Ljxl/write/biff/NumberRecord;-><init>(IID)V

    .line 43
    return-void
.end method

.method public constructor <init>(IIDLjxl/format/CellFormat;)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "val"    # D
    .param p5, "st"    # Ljxl/format/CellFormat;

    .line 58
    invoke-direct/range {p0 .. p5}, Ljxl/write/biff/NumberRecord;-><init>(IIDLjxl/format/CellFormat;)V

    .line 59
    return-void
.end method

.method protected constructor <init>(IILjxl/write/Number;)V
    .locals 0
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "n"    # Ljxl/write/Number;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/NumberRecord;-><init>(IILjxl/write/biff/NumberRecord;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljxl/NumberCell;)V
    .locals 0
    .param p1, "nc"    # Ljxl/NumberCell;

    .line 69
    invoke-direct {p0, p1}, Ljxl/write/biff/NumberRecord;-><init>(Ljxl/NumberCell;)V

    .line 70
    return-void
.end method


# virtual methods
.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1
    .param p1, "col"    # I
    .param p2, "row"    # I

    .line 103
    new-instance v0, Ljxl/write/Number;

    invoke-direct {v0, p1, p2, p0}, Ljxl/write/Number;-><init>(IILjxl/write/Number;)V

    return-object v0
.end method

.method public setValue(D)V
    .locals 0
    .param p1, "val"    # D

    .line 79
    invoke-super {p0, p1, p2}, Ljxl/write/biff/NumberRecord;->setValue(D)V

    .line 80
    return-void
.end method
