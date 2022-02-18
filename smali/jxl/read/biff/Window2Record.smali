.class Ljxl/read/biff/Window2Record;
.super Ljxl/biff/RecordData;
.source "Window2Record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/Window2Record$Biff7;
    }
.end annotation


# static fields
.field public static final biff7:Ljxl/read/biff/Window2Record$Biff7;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private displayZeroValues:Z

.field private frozenNotSplit:Z

.field private frozenPanes:Z

.field private normalMagnification:I

.field private pageBreakPreviewMagnification:I

.field private pageBreakPreviewMode:Z

.field private selected:Z

.field private showGridLines:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-class v0, Ljxl/read/biff/Window2Record;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/Window2Record;->logger:Ljxl/common/Logger;

    .line 74
    new-instance v0, Ljxl/read/biff/Window2Record$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/Window2Record$Biff7;-><init>(Ljxl/read/biff/Window2Record$1;)V

    sput-object v0, Ljxl/read/biff/Window2Record;->biff7:Ljxl/read/biff/Window2Record$Biff7;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 83
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 84
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 86
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 88
    .local v2, "options":I
    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Ljxl/read/biff/Window2Record;->selected:Z

    .line 89
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Ljxl/read/biff/Window2Record;->showGridLines:Z

    .line 90
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Ljxl/read/biff/Window2Record;->frozenPanes:Z

    .line 91
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    iput-boolean v4, p0, Ljxl/read/biff/Window2Record;->displayZeroValues:Z

    .line 92
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    iput-boolean v4, p0, Ljxl/read/biff/Window2Record;->frozenNotSplit:Z

    .line 93
    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_5

    move v1, v3

    :cond_5
    iput-boolean v1, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMode:Z

    .line 95
    const/16 v1, 0xa

    aget-byte v1, v0, v1

    const/16 v3, 0xb

    aget-byte v3, v0, v3

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMagnification:I

    .line 96
    const/16 v1, 0xc

    aget-byte v1, v0, v1

    const/16 v3, 0xd

    aget-byte v3, v0, v3

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/Window2Record;->normalMagnification:I

    .line 97
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/Window2Record$Biff7;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "biff7"    # Ljxl/read/biff/Window2Record$Biff7;

    .line 108
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 109
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 111
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 113
    .local v2, "options":I
    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Ljxl/read/biff/Window2Record;->selected:Z

    .line 114
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Ljxl/read/biff/Window2Record;->showGridLines:Z

    .line 115
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Ljxl/read/biff/Window2Record;->frozenPanes:Z

    .line 116
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    iput-boolean v4, p0, Ljxl/read/biff/Window2Record;->displayZeroValues:Z

    .line 117
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    iput-boolean v4, p0, Ljxl/read/biff/Window2Record;->frozenNotSplit:Z

    .line 118
    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_5

    move v1, v3

    :cond_5
    iput-boolean v1, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMode:Z

    .line 119
    return-void
.end method


# virtual methods
.method public getDisplayZeroValues()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->displayZeroValues:Z

    return v0
.end method

.method public getFrozen()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->frozenPanes:Z

    return v0
.end method

.method public getFrozenNotSplit()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->frozenNotSplit:Z

    return v0
.end method

.method public getNormalMagnificaiton()I
    .locals 1

    .line 198
    iget v0, p0, Ljxl/read/biff/Window2Record;->normalMagnification:I

    return v0
.end method

.method public getPageBreakPreviewMagnificaiton()I
    .locals 1

    .line 188
    iget v0, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMagnification:I

    return v0
.end method

.method public getShowGridLines()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->showGridLines:Z

    return v0
.end method

.method public isPageBreakPreview()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMode:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->selected:Z

    return v0
.end method
