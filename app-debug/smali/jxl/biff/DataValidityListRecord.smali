.class public Ljxl/biff/DataValidityListRecord;
.super Ljxl/biff/WritableRecordData;
.source "DataValidityListRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private dvalParser:Ljxl/biff/DValParser;

.field private numSettings:I

.field private objectId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Ljxl/biff/DataValidityListRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/DataValidityListRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/DValParser;)V
    .locals 1
    .param p1, "dval"    # Ljxl/biff/DValParser;

    .line 70
    sget-object v0, Ljxl/biff/Type;->DVAL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 72
    iput-object p1, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    .line 73
    return-void
.end method

.method constructor <init>(Ljxl/biff/DataValidityListRecord;)V
    .locals 1
    .param p1, "dvlr"    # Ljxl/biff/DataValidityListRecord;

    .line 82
    sget-object v0, Ljxl/biff/Type;->DVAL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 84
    invoke-virtual {p1}, Ljxl/biff/DataValidityListRecord;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    .line 85
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 58
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 60
    invoke-virtual {p0}, Ljxl/biff/DataValidityListRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    .line 61
    const/16 v1, 0xa

    aget-byte v1, v0, v1

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/16 v3, 0xc

    aget-byte v3, v0, v3

    const/16 v4, 0xd

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/biff/DataValidityListRecord;->objectId:I

    .line 62
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    const/16 v1, 0xe

    aget-byte v1, v0, v1

    const/16 v2, 0xf

    aget-byte v2, v0, v2

    const/16 v3, 0x10

    aget-byte v3, v0, v3

    const/16 v4, 0x11

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/biff/DataValidityListRecord;->numSettings:I

    .line 63
    return-void
.end method


# virtual methods
.method dvAdded()V
    .locals 2

    .line 129
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljxl/biff/DValParser;

    iget-object v1, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    invoke-direct {v0, v1}, Ljxl/biff/DValParser;-><init>([B)V

    iput-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    .line 134
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    invoke-virtual {v0}, Ljxl/biff/DValParser;->dvAdded()V

    .line 135
    return-void
.end method

.method dvRemoved()V
    .locals 2

    .line 116
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljxl/biff/DValParser;

    iget-object v1, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    invoke-direct {v0, v1}, Ljxl/biff/DValParser;-><init>([B)V

    iput-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    .line 121
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    invoke-virtual {v0}, Ljxl/biff/DValParser;->dvRemoved()V

    .line 122
    return-void
.end method

.method public getData()[B
    .locals 1

    .line 102
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljxl/biff/DValParser;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method getNumberOfSettings()I
    .locals 1

    .line 92
    iget v0, p0, Ljxl/biff/DataValidityListRecord;->numSettings:I

    return v0
.end method

.method public getObjectId()I
    .locals 1

    .line 159
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    if-nez v0, :cond_0

    .line 161
    iget v0, p0, Ljxl/biff/DataValidityListRecord;->objectId:I

    return v0

    .line 164
    :cond_0
    invoke-virtual {v0}, Ljxl/biff/DValParser;->getObjectId()I

    move-result v0

    return v0
.end method

.method public hasDVRecords()Z
    .locals 2

    .line 144
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 146
    return v1

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljxl/biff/DValParser;->getNumberOfDVRecords()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
