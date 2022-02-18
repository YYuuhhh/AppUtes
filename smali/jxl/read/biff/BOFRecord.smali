.class public Ljxl/read/biff/BOFRecord;
.super Ljxl/biff/RecordData;
.source "BOFRecord.java"


# static fields
.field private static final Biff7:I = 0x500

.field private static final Biff8:I = 0x600

.field private static final Chart:I = 0x20

.field private static final MacroSheet:I = 0x40

.field private static final WorkbookGlobals:I = 0x5

.field private static final Worksheet:I = 0x10

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private substreamType:I

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Ljxl/read/biff/BOFRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/BOFRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;)V
    .locals 3
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 79
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 80
    invoke-virtual {p0}, Ljxl/read/biff/BOFRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 81
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/BOFRecord;->version:I

    .line 82
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/BOFRecord;->substreamType:I

    .line 83
    return-void
.end method


# virtual methods
.method getLength()I
    .locals 1

    .line 158
    invoke-virtual {p0}, Ljxl/read/biff/BOFRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getLength()I

    move-result v0

    return v0
.end method

.method public isBiff7()Z
    .locals 2

    .line 102
    iget v0, p0, Ljxl/read/biff/BOFRecord;->version:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBiff8()Z
    .locals 2

    .line 92
    iget v0, p0, Ljxl/read/biff/BOFRecord;->version:I

    const/16 v1, 0x600

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChart()Z
    .locals 2

    .line 148
    iget v0, p0, Ljxl/read/biff/BOFRecord;->substreamType:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMacroSheet()Z
    .locals 2

    .line 137
    iget v0, p0, Ljxl/read/biff/BOFRecord;->substreamType:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWorkbookGlobals()Z
    .locals 2

    .line 115
    iget v0, p0, Ljxl/read/biff/BOFRecord;->substreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWorksheet()Z
    .locals 2

    .line 126
    iget v0, p0, Ljxl/read/biff/BOFRecord;->substreamType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
