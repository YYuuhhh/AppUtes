.class public Ljxl/read/biff/ExternalNameRecord;
.super Ljxl/biff/RecordData;
.source "ExternalNameRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private addInFunction:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Ljxl/read/biff/ExternalNameRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/ExternalNameRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V
    .locals 6
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;

    .line 58
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 60
    invoke-virtual {p0}, Ljxl/read/biff/ExternalNameRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 61
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 63
    .local v2, "options":I
    if-nez v2, :cond_0

    .line 65
    iput-boolean v3, p0, Ljxl/read/biff/ExternalNameRecord;->addInFunction:Z

    .line 68
    :cond_0
    iget-boolean v4, p0, Ljxl/read/biff/ExternalNameRecord;->addInFunction:Z

    if-nez v4, :cond_1

    .line 70
    return-void

    .line 73
    :cond_1
    const/4 v4, 0x6

    aget-byte v4, v0, v4

    .line 75
    .local v4, "length":I
    const/4 v5, 0x7

    aget-byte v5, v0, v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 77
    .local v1, "unicode":Z
    :cond_2
    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 79
    invoke-static {v0, v4, v3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljxl/read/biff/ExternalNameRecord;->name:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_3
    invoke-static {v0, v4, v3, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljxl/read/biff/ExternalNameRecord;->name:Ljava/lang/String;

    .line 85
    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Ljxl/read/biff/ExternalNameRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isAddInFunction()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Ljxl/read/biff/ExternalNameRecord;->addInFunction:Z

    return v0
.end method
