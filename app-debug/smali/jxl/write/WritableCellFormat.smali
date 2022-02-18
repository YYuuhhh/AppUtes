.class public Ljxl/write/WritableCellFormat;
.super Ljxl/write/biff/CellXFRecord;
.source "WritableCellFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    sget-object v0, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p0, v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;Ljxl/biff/DisplayFormat;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljxl/biff/DisplayFormat;)V
    .locals 1
    .param p1, "format"    # Ljxl/biff/DisplayFormat;

    .line 74
    sget-object v0, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-direct {p0, v0, p1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;Ljxl/biff/DisplayFormat;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljxl/format/CellFormat;)V
    .locals 0
    .param p1, "format"    # Ljxl/format/CellFormat;

    .line 96
    invoke-direct {p0, p1}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/format/CellFormat;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont;)V
    .locals 1
    .param p1, "font"    # Ljxl/write/WritableFont;

    .line 63
    sget-object v0, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p0, p1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;Ljxl/biff/DisplayFormat;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont;Ljxl/biff/DisplayFormat;)V
    .locals 0
    .param p1, "font"    # Ljxl/write/WritableFont;
    .param p2, "format"    # Ljxl/biff/DisplayFormat;

    .line 86
    invoke-direct {p0, p1, p2}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 87
    return-void
.end method


# virtual methods
.method public setAlignment(Ljxl/format/Alignment;)V
    .locals 0
    .param p1, "a"    # Ljxl/format/Alignment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 107
    invoke-super {p0, p1}, Ljxl/write/biff/CellXFRecord;->setAlignment(Ljxl/format/Alignment;)V

    .line 108
    return-void
.end method

.method public setBackground(Ljxl/format/Colour;)V
    .locals 1
    .param p1, "c"    # Ljxl/format/Colour;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 179
    sget-object v0, Ljxl/format/Pattern;->SOLID:Ljxl/format/Pattern;

    invoke-virtual {p0, p1, v0}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V

    .line 180
    return-void
.end method

.method public setBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V
    .locals 0
    .param p1, "c"    # Ljxl/format/Colour;
    .param p2, "p"    # Ljxl/format/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 191
    invoke-super {p0, p1, p2}, Ljxl/write/biff/CellXFRecord;->setBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V

    .line 192
    return-void
.end method

.method public setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V
    .locals 1
    .param p1, "b"    # Ljxl/format/Border;
    .param p2, "ls"    # Ljxl/format/BorderLineStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 154
    sget-object v0, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-super {p0, p1, p2, v0}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 155
    return-void
.end method

.method public setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V
    .locals 0
    .param p1, "b"    # Ljxl/format/Border;
    .param p2, "ls"    # Ljxl/format/BorderLineStyle;
    .param p3, "c"    # Ljxl/format/Colour;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 168
    invoke-super {p0, p1, p2, p3}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 169
    return-void
.end method

.method public setIndentation(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 212
    invoke-super {p0, p1}, Ljxl/write/biff/CellXFRecord;->setIndentation(I)V

    .line 213
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "l"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 226
    invoke-super {p0, p1}, Ljxl/write/biff/CellXFRecord;->setLocked(Z)V

    .line 227
    return-void
.end method

.method public setOrientation(Ljxl/format/Orientation;)V
    .locals 0
    .param p1, "o"    # Ljxl/format/Orientation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 129
    invoke-super {p0, p1}, Ljxl/write/biff/CellXFRecord;->setOrientation(Ljxl/format/Orientation;)V

    .line 130
    return-void
.end method

.method public setShrinkToFit(Z)V
    .locals 0
    .param p1, "s"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 202
    invoke-super {p0, p1}, Ljxl/write/biff/CellXFRecord;->setShrinkToFit(Z)V

    .line 203
    return-void
.end method

.method public setVerticalAlignment(Ljxl/format/VerticalAlignment;)V
    .locals 0
    .param p1, "va"    # Ljxl/format/VerticalAlignment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 118
    invoke-super {p0, p1}, Ljxl/write/biff/CellXFRecord;->setVerticalAlignment(Ljxl/format/VerticalAlignment;)V

    .line 119
    return-void
.end method

.method public setWrap(Z)V
    .locals 0
    .param p1, "w"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 142
    invoke-super {p0, p1}, Ljxl/write/biff/CellXFRecord;->setWrap(Z)V

    .line 143
    return-void
.end method
