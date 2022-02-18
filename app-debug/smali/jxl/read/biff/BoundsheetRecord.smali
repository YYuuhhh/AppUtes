.class Ljxl/read/biff/BoundsheetRecord;
.super Ljxl/biff/RecordData;
.source "BoundsheetRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/BoundsheetRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/BoundsheetRecord$Biff7;


# instance fields
.field private length:I

.field private name:Ljava/lang/String;

.field private offset:I

.field private typeFlag:B

.field private visibilityFlag:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Ljxl/read/biff/BoundsheetRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/BoundsheetRecord$Biff7;-><init>(Ljxl/read/biff/BoundsheetRecord$1;)V

    sput-object v0, Ljxl/read/biff/BoundsheetRecord;->biff7:Ljxl/read/biff/BoundsheetRecord$Biff7;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V
    .locals 7
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "s"    # Ljxl/WorkbookSettings;

    .line 67
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 68
    invoke-virtual {p0}, Ljxl/read/biff/BoundsheetRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 69
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    const/4 v4, 0x2

    aget-byte v5, v0, v4

    const/4 v6, 0x3

    aget-byte v6, v0, v6

    invoke-static {v2, v3, v5, v6}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/BoundsheetRecord;->offset:I

    .line 70
    const/4 v2, 0x5

    aget-byte v2, v0, v2

    iput-byte v2, p0, Ljxl/read/biff/BoundsheetRecord;->typeFlag:B

    .line 71
    const/4 v2, 0x4

    aget-byte v2, v0, v2

    iput-byte v2, p0, Ljxl/read/biff/BoundsheetRecord;->visibilityFlag:B

    .line 72
    const/4 v2, 0x6

    aget-byte v2, v0, v2

    iput v2, p0, Ljxl/read/biff/BoundsheetRecord;->length:I

    .line 74
    const/4 v3, 0x7

    aget-byte v3, v0, v3

    const/16 v5, 0x8

    if-nez v3, :cond_0

    .line 77
    new-array v3, v2, [B

    .line 78
    .local v3, "bytes":[B
    invoke-static {v0, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget v2, p0, Ljxl/read/biff/BoundsheetRecord;->length:I

    invoke-static {v3, v2, v1, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/BoundsheetRecord;->name:Ljava/lang/String;

    .line 80
    .end local v3    # "bytes":[B
    goto :goto_0

    .line 84
    :cond_0
    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    .line 85
    .restart local v3    # "bytes":[B
    mul-int/2addr v2, v4

    invoke-static {v0, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget v2, p0, Ljxl/read/biff/BoundsheetRecord;->length:I

    invoke-static {v3, v2, v1}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/BoundsheetRecord;->name:Ljava/lang/String;

    .line 88
    .end local v3    # "bytes":[B
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/BoundsheetRecord$Biff7;)V
    .locals 6
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "biff7"    # Ljxl/read/biff/BoundsheetRecord$Biff7;

    .line 100
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 101
    invoke-virtual {p0}, Ljxl/read/biff/BoundsheetRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 102
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    const/4 v5, 0x3

    aget-byte v5, v0, v5

    invoke-static {v2, v3, v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/BoundsheetRecord;->offset:I

    .line 103
    const/4 v2, 0x5

    aget-byte v2, v0, v2

    iput-byte v2, p0, Ljxl/read/biff/BoundsheetRecord;->typeFlag:B

    .line 104
    const/4 v2, 0x4

    aget-byte v2, v0, v2

    iput-byte v2, p0, Ljxl/read/biff/BoundsheetRecord;->visibilityFlag:B

    .line 105
    const/4 v2, 0x6

    aget-byte v2, v0, v2

    iput v2, p0, Ljxl/read/biff/BoundsheetRecord;->length:I

    .line 106
    new-array v3, v2, [B

    .line 107
    .local v3, "bytes":[B
    const/4 v4, 0x7

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Ljxl/read/biff/BoundsheetRecord;->name:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Ljxl/read/biff/BoundsheetRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isChart()Z
    .locals 2

    .line 149
    iget-byte v0, p0, Ljxl/read/biff/BoundsheetRecord;->typeFlag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 128
    iget-byte v0, p0, Ljxl/read/biff/BoundsheetRecord;->visibilityFlag:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSheet()Z
    .locals 1

    .line 139
    iget-byte v0, p0, Ljxl/read/biff/BoundsheetRecord;->typeFlag:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
