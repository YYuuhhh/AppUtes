.class public Ljxl/biff/HeaderFooter$Contents;
.super Ljava/lang/Object;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/HeaderFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Contents"
.end annotation


# instance fields
.field private contents:Ljava/lang/StringBuffer;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    .line 150
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    .line 161
    return-void
.end method

.method protected constructor <init>(Ljxl/biff/HeaderFooter$Contents;)V
    .locals 2
    .param p1, "copy"    # Ljxl/biff/HeaderFooter$Contents;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    .line 171
    return-void
.end method

.method private appendInternal(C)V
    .locals 1
    .param p1, "ch"    # C

    .line 206
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    .line 211
    :cond_0
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 212
    return-void
.end method

.method private appendInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    .line 196
    :cond_0
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    return-void
.end method


# virtual methods
.method protected append(Ljava/lang/String;)V
    .locals 0
    .param p1, "txt"    # Ljava/lang/String;

    .line 221
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method protected appendDate()V
    .locals 1

    .line 400
    const-string v0, "&D"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method protected appendPageNumber()V
    .locals 1

    .line 384
    const-string v0, "&P"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method protected appendTime()V
    .locals 1

    .line 408
    const-string v0, "&T"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method protected appendTotalPages()V
    .locals 1

    .line 392
    const-string v0, "&N"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method protected appendWorkSheetName()V
    .locals 1

    .line 424
    const-string v0, "&A"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method protected appendWorkbookName()V
    .locals 1

    .line 416
    const-string v0, "&F"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method protected clear()V
    .locals 1

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    .line 433
    return-void
.end method

.method protected empty()Z
    .locals 1

    .line 442
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 444
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getContents()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected setFontName(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;

    .line 335
    const-string v0, "&\""

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 337
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(C)V

    .line 338
    return-void
.end method

.method protected setFontSize(I)Z
    .locals 3
    .param p1, "size"    # I

    .line 356
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/16 v1, 0x63

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 364
    :cond_0
    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "fontSize":Ljava/lang/String;
    goto :goto_0

    .line 371
    .end local v1    # "fontSize":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    .restart local v1    # "fontSize":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x26

    invoke-direct {p0, v2}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(C)V

    .line 375
    invoke-direct {p0, v1}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 376
    return v0

    .line 358
    .end local v1    # "fontSize":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleBold()V
    .locals 1

    .line 232
    const-string v0, "&B"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method protected toggleDoubleUnderline()V
    .locals 1

    .line 276
    const-string v0, "&E"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected toggleItalics()V
    .locals 1

    .line 254
    const-string v0, "&I"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method protected toggleOutline()V
    .locals 1

    .line 309
    const-string v0, "&O"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method protected toggleShadow()V
    .locals 1

    .line 320
    const-string v0, "&H"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method protected toggleStrikethrough()V
    .locals 1

    .line 265
    const-string v0, "&S"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method protected toggleSubScript()V
    .locals 1

    .line 298
    const-string v0, "&Y"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method protected toggleSuperScript()V
    .locals 1

    .line 287
    const-string v0, "&X"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method protected toggleUnderline()V
    .locals 1

    .line 243
    const-string v0, "&U"

    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 244
    return-void
.end method
