.class public Ljxl/write/biff/CellXFRecord;
.super Ljxl/biff/XFRecord;
.source "CellXFRecord.java"


# direct methods
.method protected constructor <init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V
    .locals 2
    .param p1, "fnt"    # Ljxl/biff/FontRecord;
    .param p2, "form"    # Ljxl/biff/DisplayFormat;

    .line 48
    invoke-direct {p0, p1, p2}, Ljxl/biff/XFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 49
    sget-object v0, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljxl/write/biff/CellXFRecord;->setXFDetails(Ljxl/biff/XFRecord$XFType;I)V

    .line 50
    return-void
.end method

.method constructor <init>(Ljxl/biff/XFRecord;)V
    .locals 2
    .param p1, "fmt"    # Ljxl/biff/XFRecord;

    .line 59
    invoke-direct {p0, p1}, Ljxl/biff/XFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 60
    sget-object v0, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljxl/write/biff/CellXFRecord;->setXFDetails(Ljxl/biff/XFRecord$XFType;I)V

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljxl/format/CellFormat;)V
    .locals 0
    .param p1, "format"    # Ljxl/format/CellFormat;

    .line 69
    invoke-direct {p0, p1}, Ljxl/biff/XFRecord;-><init>(Ljxl/format/CellFormat;)V

    .line 70
    return-void
.end method


# virtual methods
.method public setAlignment(Ljxl/format/Alignment;)V
    .locals 2
    .param p1, "a"    # Ljxl/format/Alignment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFAlignment(Ljxl/format/Alignment;)V

    .line 85
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljxl/write/biff/JxlWriteException;

    sget-object v1, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw v0
.end method

.method public setBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V
    .locals 2
    .param p1, "c"    # Ljxl/format/Colour;
    .param p2, "p"    # Ljxl/format/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0, p1, p2}, Ljxl/biff/XFRecord;->setXFBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V

    .line 101
    const/16 v0, 0x4000

    invoke-super {p0, v0}, Ljxl/biff/XFRecord;->setXFCellOptions(I)V

    .line 102
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljxl/write/biff/JxlWriteException;

    sget-object v1, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw v0
.end method

.method public setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V
    .locals 3
    .param p1, "b"    # Ljxl/format/Border;
    .param p2, "ls"    # Ljxl/format/BorderLineStyle;
    .param p3, "c"    # Ljxl/format/Colour;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    sget-object v0, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    if-ne p1, v0, :cond_0

    .line 218
    sget-object v0, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-super {p0, v0, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 219
    sget-object v0, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-super {p0, v0, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 220
    sget-object v0, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-super {p0, v0, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 221
    sget-object v0, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-super {p0, v0, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 222
    return-void

    .line 225
    :cond_0
    sget-object v0, Ljxl/format/Border;->NONE:Ljxl/format/Border;

    if-ne p1, v0, :cond_1

    .line 228
    sget-object v0, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v2, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-super {p0, v0, v1, v2}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 229
    sget-object v0, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v2, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-super {p0, v0, v1, v2}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 230
    sget-object v0, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v2, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-super {p0, v0, v1, v2}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 231
    sget-object v0, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v1, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v2, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-super {p0, v0, v1, v2}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 232
    return-void

    .line 235
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 236
    return-void

    .line 212
    :cond_2
    new-instance v0, Ljxl/write/biff/JxlWriteException;

    sget-object v1, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw v0
.end method

.method public setIndentation(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFIndentation(I)V

    .line 132
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljxl/write/biff/JxlWriteException;

    sget-object v1, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw v0
.end method

.method public setLocked(Z)V
    .locals 2
    .param p1, "l"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFLocked(Z)V

    .line 117
    const v0, 0x8000

    invoke-super {p0, v0}, Ljxl/biff/XFRecord;->setXFCellOptions(I)V

    .line 118
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljxl/write/biff/JxlWriteException;

    sget-object v1, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw v0
.end method

.method public setOrientation(Ljxl/format/Orientation;)V
    .locals 2
    .param p1, "o"    # Ljxl/format/Orientation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFOrientation(Ljxl/format/Orientation;)V

    .line 180
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljxl/write/biff/JxlWriteException;

    sget-object v1, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw v0
.end method

.method public setShrinkToFit(Z)V
    .locals 2
    .param p1, "s"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFShrinkToFit(Z)V

    .line 146
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljxl/write/biff/JxlWriteException;

    sget-object v1, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw v0
.end method

.method public setVerticalAlignment(Ljxl/format/VerticalAlignment;)V
    .locals 2
    .param p1, "va"    # Ljxl/format/VerticalAlignment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFVerticalAlignment(Ljxl/format/VerticalAlignment;)V

    .line 163
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljxl/write/biff/JxlWriteException;

    sget-object v1, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw v0
.end method

.method public setWrap(Z)V
    .locals 2
    .param p1, "w"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFWrap(Z)V

    .line 198
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljxl/write/biff/JxlWriteException;

    sget-object v1, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw v0
.end method
