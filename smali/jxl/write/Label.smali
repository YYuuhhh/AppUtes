.class public Ljxl/write/Label;
.super Ljxl/write/biff/LabelRecord;
.source "Label.java"

# interfaces
.implements Ljxl/write/WritableCell;
.implements Ljxl/LabelCell;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "cont"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/LabelRecord;-><init>(IILjava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljxl/format/CellFormat;)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "cont"    # Ljava/lang/String;
    .param p4, "st"    # Ljxl/format/CellFormat;

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Ljxl/write/biff/LabelRecord;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(IILjxl/write/Label;)V
    .locals 0
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "l"    # Ljxl/write/Label;

    .line 68
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/LabelRecord;-><init>(IILjxl/write/biff/LabelRecord;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljxl/LabelCell;)V
    .locals 0
    .param p1, "lc"    # Ljxl/LabelCell;

    .line 79
    invoke-direct {p0, p1}, Ljxl/write/biff/LabelRecord;-><init>(Ljxl/LabelCell;)V

    .line 80
    return-void
.end method


# virtual methods
.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1
    .param p1, "col"    # I
    .param p2, "row"    # I

    .line 101
    new-instance v0, Ljxl/write/Label;

    invoke-direct {v0, p1, p2, p0}, Ljxl/write/Label;-><init>(IILjxl/write/Label;)V

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 89
    invoke-super {p0, p1}, Ljxl/write/biff/LabelRecord;->setString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
