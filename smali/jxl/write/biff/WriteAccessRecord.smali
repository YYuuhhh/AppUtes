.class Ljxl/write/biff/WriteAccessRecord;
.super Ljxl/biff/WritableRecordData;
.source "WriteAccessRecord.java"


# static fields
.field private static final authorString:Ljava/lang/String; = "Java Excel API"


# instance fields
.field private data:[B

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;

    .line 52
    sget-object v0, Ljxl/biff/Type;->WRITEACCESS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 54
    const/16 v0, 0x70

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/WriteAccessRecord;->data:[B

    .line 55
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java Excel API v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljxl/Workbook;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "astring":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Ljxl/write/biff/WriteAccessRecord;->data:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;[BI)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Ljxl/write/biff/WriteAccessRecord;->data:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 64
    const/16 v3, 0x20

    aput-byte v3, v2, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 75
    iget-object v0, p0, Ljxl/write/biff/WriteAccessRecord;->data:[B

    return-object v0
.end method
