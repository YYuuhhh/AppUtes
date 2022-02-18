.class public Ljxl/HeaderFooter$Contents;
.super Ljxl/biff/HeaderFooter$Contents;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/HeaderFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contents"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljxl/biff/HeaderFooter$Contents;-><init>()V

    .line 38
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method constructor <init>(Ljxl/HeaderFooter$Contents;)V
    .locals 0
    .param p1, "copy"    # Ljxl/HeaderFooter$Contents;

    .line 58
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;-><init>(Ljxl/biff/HeaderFooter$Contents;)V

    .line 59
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 0
    .param p1, "txt"    # Ljava/lang/String;

    .line 68
    invoke-super {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public appendDate()V
    .locals 0

    .line 224
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendDate()V

    .line 225
    return-void
.end method

.method public appendPageNumber()V
    .locals 0

    .line 208
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendPageNumber()V

    .line 209
    return-void
.end method

.method public appendTime()V
    .locals 0

    .line 232
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendTime()V

    .line 233
    return-void
.end method

.method public appendTotalPages()V
    .locals 0

    .line 216
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendTotalPages()V

    .line 217
    return-void
.end method

.method public appendWorkSheetName()V
    .locals 0

    .line 248
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendWorkSheetName()V

    .line 249
    return-void
.end method

.method public appendWorkbookName()V
    .locals 0

    .line 240
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendWorkbookName()V

    .line 241
    return-void
.end method

.method public clear()V
    .locals 0

    .line 256
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->clear()V

    .line 257
    return-void
.end method

.method public empty()Z
    .locals 1

    .line 266
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v0

    return v0
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontName"    # Ljava/lang/String;

    .line 181
    invoke-super {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->setFontName(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public setFontSize(I)Z
    .locals 1
    .param p1, "size"    # I

    .line 200
    invoke-super {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->setFontSize(I)Z

    move-result v0

    return v0
.end method

.method public toggleBold()V
    .locals 0

    .line 79
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleBold()V

    .line 80
    return-void
.end method

.method public toggleDoubleUnderline()V
    .locals 0

    .line 123
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleDoubleUnderline()V

    .line 124
    return-void
.end method

.method public toggleItalics()V
    .locals 0

    .line 101
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleItalics()V

    .line 102
    return-void
.end method

.method public toggleOutline()V
    .locals 0

    .line 156
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleOutline()V

    .line 157
    return-void
.end method

.method public toggleShadow()V
    .locals 0

    .line 167
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleShadow()V

    .line 168
    return-void
.end method

.method public toggleStrikethrough()V
    .locals 0

    .line 112
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleStrikethrough()V

    .line 113
    return-void
.end method

.method public toggleSubScript()V
    .locals 0

    .line 145
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleSubScript()V

    .line 146
    return-void
.end method

.method public toggleSuperScript()V
    .locals 0

    .line 134
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleSuperScript()V

    .line 135
    return-void
.end method

.method public toggleUnderline()V
    .locals 0

    .line 90
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleUnderline()V

    .line 91
    return-void
.end method
