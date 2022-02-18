.class Ljxl/write/biff/NameRecord$NameRange;
.super Ljava/lang/Object;
.source "NameRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/biff/NameRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameRange"
.end annotation


# instance fields
.field private columnFirst:I

.field private columnLast:I

.field private externalSheet:I

.field private rowFirst:I

.field private rowLast:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0
    .param p1, "extSheet"    # I
    .param p2, "theStartRow"    # I
    .param p3, "theEndRow"    # I
    .param p4, "theStartCol"    # I
    .param p5, "theEndCol"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p4, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    .line 99
    iput p2, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    .line 100
    iput p5, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    .line 101
    iput p3, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    .line 102
    iput p1, p0, Ljxl/write/biff/NameRecord$NameRange;->externalSheet:I

    .line 103
    return-void
.end method

.method constructor <init>(Ljxl/read/biff/NameRecord$NameRange;)V
    .locals 1
    .param p1, "nr"    # Ljxl/read/biff/NameRecord$NameRange;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    .line 83
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    .line 84
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    .line 85
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    .line 86
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->externalSheet:I

    .line 87
    return-void
.end method


# virtual methods
.method decrementFirstColumn()V
    .locals 1

    .line 117
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    return-void
.end method

.method decrementFirstRow()V
    .locals 1

    .line 113
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    return-void
.end method

.method decrementLastColumn()V
    .locals 1

    .line 118
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    return-void
.end method

.method decrementLastRow()V
    .locals 1

    .line 114
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    return-void
.end method

.method getData()[B
    .locals 3

    .line 122
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 125
    .local v0, "d":[B
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->externalSheet:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 128
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 131
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 134
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 137
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 139
    return-object v0
.end method

.method getExternalSheet()I
    .locals 1

    .line 109
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->externalSheet:I

    return v0
.end method

.method getFirstColumn()I
    .locals 1

    .line 105
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    return v0
.end method

.method getFirstRow()I
    .locals 1

    .line 106
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    return v0
.end method

.method getLastColumn()I
    .locals 1

    .line 107
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    return v0
.end method

.method getLastRow()I
    .locals 1

    .line 108
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    return v0
.end method

.method incrementFirstColumn()V
    .locals 1

    .line 115
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    return-void
.end method

.method incrementFirstRow()V
    .locals 1

    .line 111
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    return-void
.end method

.method incrementLastColumn()V
    .locals 1

    .line 116
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    return-void
.end method

.method incrementLastRow()V
    .locals 1

    .line 112
    iget v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    return-void
.end method
