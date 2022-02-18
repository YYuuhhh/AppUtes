.class Ljxl/read/biff/WriteAccessRecord;
.super Ljxl/biff/RecordData;
.source "WriteAccessRecord.java"


# instance fields
.field private wauser:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;ZLjxl/WorkbookSettings;)V
    .locals 3
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "isBiff8"    # Z
    .param p3, "ws"    # Ljxl/WorkbookSettings;

    .line 45
    sget-object v0, Ljxl/biff/Type;->WRITEACCESS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 47
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 48
    .local v0, "data":[B
    if-eqz p2, :cond_0

    .line 50
    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/WriteAccessRecord;->wauser:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_0
    const/4 v1, 0x1

    aget-byte v2, v0, v1

    .line 56
    .local v2, "length":I
    invoke-static {v0, v2, v1, p3}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/WriteAccessRecord;->wauser:Ljava/lang/String;

    .line 58
    .end local v2    # "length":I
    :goto_0
    return-void
.end method


# virtual methods
.method public getWriteAccess()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Ljxl/read/biff/WriteAccessRecord;->wauser:Ljava/lang/String;

    return-object v0
.end method
