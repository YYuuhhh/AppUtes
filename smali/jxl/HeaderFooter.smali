.class public final Ljxl/HeaderFooter;
.super Ljxl/biff/HeaderFooter;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/HeaderFooter$Contents;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljxl/biff/HeaderFooter;-><init>()V

    .line 276
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 296
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter;-><init>(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public constructor <init>(Ljxl/HeaderFooter;)V
    .locals 0
    .param p1, "hf"    # Ljxl/HeaderFooter;

    .line 285
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter;-><init>(Ljxl/biff/HeaderFooter;)V

    .line 286
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 345
    invoke-super {p0}, Ljxl/biff/HeaderFooter;->clear()V

    .line 346
    return-void
.end method

.method protected createContents()Ljxl/biff/HeaderFooter$Contents;
    .locals 1

    .line 355
    new-instance v0, Ljxl/HeaderFooter$Contents;

    invoke-direct {v0}, Ljxl/HeaderFooter$Contents;-><init>()V

    return-object v0
.end method

.method protected createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 366
    new-instance v0, Ljxl/HeaderFooter$Contents;

    invoke-direct {v0, p1}, Ljxl/HeaderFooter$Contents;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;
    .locals 2
    .param p1, "c"    # Ljxl/biff/HeaderFooter$Contents;

    .line 378
    new-instance v0, Ljxl/HeaderFooter$Contents;

    move-object v1, p1

    check-cast v1, Ljxl/HeaderFooter$Contents;

    invoke-direct {v0, v1}, Ljxl/HeaderFooter$Contents;-><init>(Ljxl/HeaderFooter$Contents;)V

    return-object v0
.end method

.method public getCentre()Ljxl/HeaderFooter$Contents;
    .locals 1

    .line 327
    invoke-super {p0}, Ljxl/biff/HeaderFooter;->getCentreText()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    check-cast v0, Ljxl/HeaderFooter$Contents;

    return-object v0
.end method

.method public getLeft()Ljxl/HeaderFooter$Contents;
    .locals 1

    .line 337
    invoke-super {p0}, Ljxl/biff/HeaderFooter;->getLeftText()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    check-cast v0, Ljxl/HeaderFooter$Contents;

    return-object v0
.end method

.method public getRight()Ljxl/HeaderFooter$Contents;
    .locals 1

    .line 317
    invoke-super {p0}, Ljxl/biff/HeaderFooter;->getRightText()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    check-cast v0, Ljxl/HeaderFooter$Contents;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 307
    invoke-super {p0}, Ljxl/biff/HeaderFooter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
