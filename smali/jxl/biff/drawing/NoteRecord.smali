.class public Ljxl/biff/drawing/NoteRecord;
.super Ljxl/biff/WritableRecordData;
.source "NoteRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private column:I

.field private data:[B

.field private objectId:I

.field private row:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Ljxl/biff/drawing/NoteRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/NoteRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "c"    # I
    .param p2, "r"    # I
    .param p3, "id"    # I

    .line 93
    sget-object v0, Ljxl/biff/Type;->NOTE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 94
    iput p2, p0, Ljxl/biff/drawing/NoteRecord;->row:I

    .line 95
    iput p1, p0, Ljxl/biff/drawing/NoteRecord;->column:I

    .line 96
    iput p3, p0, Ljxl/biff/drawing/NoteRecord;->objectId:I

    .line 97
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 3
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 66
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 67
    invoke-virtual {p0}, Ljxl/biff/drawing/NoteRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    .line 68
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    invoke-static {v1, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/NoteRecord;->row:I

    .line 69
    iget-object v0, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    invoke-static {v1, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/NoteRecord;->column:I

    .line 70
    iget-object v0, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    const/4 v1, 0x6

    aget-byte v1, v0, v1

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    invoke-static {v1, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/NoteRecord;->objectId:I

    .line 71
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "d"    # [B

    .line 80
    sget-object v0, Ljxl/biff/Type;->NOTE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 81
    iput-object p1, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    .line 82
    return-void
.end method


# virtual methods
.method getColumn()I
    .locals 1

    .line 151
    iget v0, p0, Ljxl/biff/drawing/NoteRecord;->column:I

    return v0
.end method

.method public getData()[B
    .locals 5

    .line 106
    iget-object v0, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    if-eqz v0, :cond_0

    .line 108
    return-object v0

    .line 111
    :cond_0
    const-string v0, ""

    .line 112
    .local v0, "author":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    .line 115
    iget v3, p0, Ljxl/biff/drawing/NoteRecord;->row:I

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 118
    iget v1, p0, Ljxl/biff/drawing/NoteRecord;->column:I

    iget-object v3, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 121
    iget v1, p0, Ljxl/biff/drawing/NoteRecord;->objectId:I

    iget-object v3, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    const/4 v4, 0x6

    invoke-static {v1, v3, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    invoke-static {v1, v3, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 131
    iget-object v1, p0, Ljxl/biff/drawing/NoteRecord;->data:[B

    return-object v1
.end method

.method public getObjectId()I
    .locals 1

    .line 161
    iget v0, p0, Ljxl/biff/drawing/NoteRecord;->objectId:I

    return v0
.end method

.method getRow()I
    .locals 1

    .line 141
    iget v0, p0, Ljxl/biff/drawing/NoteRecord;->row:I

    return v0
.end method
