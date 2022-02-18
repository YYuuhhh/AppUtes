.class public Ljxl/write/Blank;
.super Ljxl/write/biff/BlankRecord;
.source "Blank.java"

# interfaces
.implements Ljxl/write/WritableCell;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I

    .line 42
    invoke-direct {p0, p1, p2}, Ljxl/write/biff/BlankRecord;-><init>(II)V

    .line 43
    return-void
.end method

.method public constructor <init>(IILjxl/format/CellFormat;)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "st"    # Ljxl/format/CellFormat;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/BlankRecord;-><init>(IILjxl/format/CellFormat;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(IILjxl/write/Blank;)V
    .locals 0
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "b"    # Ljxl/write/Blank;

    .line 80
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/BlankRecord;-><init>(IILjxl/write/biff/BlankRecord;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljxl/Cell;)V
    .locals 0
    .param p1, "lc"    # Ljxl/Cell;

    .line 67
    invoke-direct {p0, p1}, Ljxl/write/biff/BlankRecord;-><init>(Ljxl/Cell;)V

    .line 68
    return-void
.end method


# virtual methods
.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1
    .param p1, "col"    # I
    .param p2, "row"    # I

    .line 92
    new-instance v0, Ljxl/write/Blank;

    invoke-direct {v0, p1, p2, p0}, Ljxl/write/Blank;-><init>(IILjxl/write/Blank;)V

    return-object v0
.end method
