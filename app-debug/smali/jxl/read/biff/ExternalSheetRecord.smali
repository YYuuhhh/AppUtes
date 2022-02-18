.class public Ljxl/read/biff/ExternalSheetRecord;
.super Ljxl/biff/RecordData;
.source "ExternalSheetRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/ExternalSheetRecord$XTI;,
        Ljxl/read/biff/ExternalSheetRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/ExternalSheetRecord$Biff7;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private xtiArray:[Ljxl/read/biff/ExternalSheetRecord$XTI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-class v0, Ljxl/read/biff/ExternalSheetRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/ExternalSheetRecord;->logger:Ljxl/common/Logger;

    .line 43
    new-instance v0, Ljxl/read/biff/ExternalSheetRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/ExternalSheetRecord$Biff7;-><init>(Ljxl/read/biff/ExternalSheetRecord$1;)V

    sput-object v0, Ljxl/read/biff/ExternalSheetRecord;->biff7:Ljxl/read/biff/ExternalSheetRecord$Biff7;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V
    .locals 9
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;

    .line 91
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 92
    invoke-virtual {p0}, Ljxl/read/biff/ExternalSheetRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 94
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 96
    .local v2, "numxtis":I
    array-length v3, v0

    mul-int/lit8 v4, v2, 0x6

    add-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_0

    .line 98
    new-array v1, v1, [Ljxl/read/biff/ExternalSheetRecord$XTI;

    iput-object v1, p0, Ljxl/read/biff/ExternalSheetRecord;->xtiArray:[Ljxl/read/biff/ExternalSheetRecord$XTI;

    .line 99
    sget-object v1, Ljxl/read/biff/ExternalSheetRecord;->logger:Ljxl/common/Logger;

    const-string v3, "Could not process external sheets.  Formulas may be compromised."

    invoke-virtual {v1, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 101
    return-void

    .line 104
    :cond_0
    new-array v1, v2, [Ljxl/read/biff/ExternalSheetRecord$XTI;

    iput-object v1, p0, Ljxl/read/biff/ExternalSheetRecord;->xtiArray:[Ljxl/read/biff/ExternalSheetRecord$XTI;

    .line 106
    const/4 v1, 0x2

    .line 107
    .local v1, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 109
    aget-byte v4, v0, v1

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v0, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 110
    .local v4, "s":I
    add-int/lit8 v5, v1, 0x2

    aget-byte v5, v0, v5

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v0, v6

    invoke-static {v5, v6}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    .line 111
    .local v5, "f":I
    add-int/lit8 v6, v1, 0x4

    aget-byte v6, v0, v6

    add-int/lit8 v7, v1, 0x5

    aget-byte v7, v0, v7

    invoke-static {v6, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    .line 112
    .local v6, "l":I
    iget-object v7, p0, Ljxl/read/biff/ExternalSheetRecord;->xtiArray:[Ljxl/read/biff/ExternalSheetRecord$XTI;

    new-instance v8, Ljxl/read/biff/ExternalSheetRecord$XTI;

    invoke-direct {v8, v4, v5, v6}, Ljxl/read/biff/ExternalSheetRecord$XTI;-><init>(III)V

    aput-object v8, v7, v3

    .line 113
    nop

    .end local v4    # "s":I
    .end local v5    # "f":I
    .end local v6    # "l":I
    add-int/lit8 v1, v1, 0x6

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/ExternalSheetRecord$Biff7;)V
    .locals 2
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "settings"    # Ljxl/WorkbookSettings;
    .param p3, "dummy"    # Ljxl/read/biff/ExternalSheetRecord$Biff7;

    .line 127
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 129
    sget-object v0, Ljxl/read/biff/ExternalSheetRecord;->logger:Ljxl/common/Logger;

    const-string v1, "External sheet record for Biff 7 not supported"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 130
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 180
    invoke-virtual {p0}, Ljxl/read/biff/ExternalSheetRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getFirstTabIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 159
    iget-object v0, p0, Ljxl/read/biff/ExternalSheetRecord;->xtiArray:[Ljxl/read/biff/ExternalSheetRecord$XTI;

    aget-object v0, v0, p1

    iget v0, v0, Ljxl/read/biff/ExternalSheetRecord$XTI;->firstTab:I

    return v0
.end method

.method public getLastTabIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 170
    iget-object v0, p0, Ljxl/read/biff/ExternalSheetRecord;->xtiArray:[Ljxl/read/biff/ExternalSheetRecord$XTI;

    aget-object v0, v0, p1

    iget v0, v0, Ljxl/read/biff/ExternalSheetRecord$XTI;->lastTab:I

    return v0
.end method

.method public getNumRecords()I
    .locals 1

    .line 138
    iget-object v0, p0, Ljxl/read/biff/ExternalSheetRecord;->xtiArray:[Ljxl/read/biff/ExternalSheetRecord$XTI;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSupbookIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 148
    iget-object v0, p0, Ljxl/read/biff/ExternalSheetRecord;->xtiArray:[Ljxl/read/biff/ExternalSheetRecord$XTI;

    aget-object v0, v0, p1

    iget v0, v0, Ljxl/read/biff/ExternalSheetRecord$XTI;->supbookIndex:I

    return v0
.end method
