.class public Ljxl/write/biff/StyleXFRecord;
.super Ljxl/biff/XFRecord;
.source "StyleXFRecord.java"


# direct methods
.method public constructor <init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V
    .locals 2
    .param p1, "fnt"    # Ljxl/biff/FontRecord;
    .param p2, "form"    # Ljxl/biff/DisplayFormat;

    .line 39
    invoke-direct {p0, p1, p2}, Ljxl/biff/XFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 41
    sget-object v0, Ljxl/biff/XFRecord;->style:Ljxl/biff/XFRecord$XFType;

    const v1, 0xfff0

    invoke-virtual {p0, v0, v1}, Ljxl/write/biff/StyleXFRecord;->setXFDetails(Ljxl/biff/XFRecord$XFType;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public final setCellOptions(I)V
    .locals 0
    .param p1, "opt"    # I

    .line 53
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFCellOptions(I)V

    .line 54
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "l"    # Z

    .line 64
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFLocked(Z)V

    .line 65
    return-void
.end method
