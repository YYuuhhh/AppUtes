.class Ljxl/write/biff/PasswordRecord;
.super Ljxl/biff/WritableRecordData;
.source "PasswordRecord.java"


# instance fields
.field private data:[B

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "ph"    # I

    .line 81
    sget-object v0, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/PasswordRecord;->data:[B

    .line 84
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/lang/String;

    .line 48
    sget-object v0, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 50
    iput-object p1, p0, Ljxl/write/biff/PasswordRecord;->password:Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 54
    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/PasswordRecord;->data:[B

    .line 55
    invoke-static {v1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 60
    .local v2, "passwordBytes":[B
    const/4 v3, 0x0

    .line 61
    .local v3, "passwordHash":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 63
    aget-byte v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v5, v6}, Ljxl/write/biff/PasswordRecord;->rotLeft15Bit(II)I

    move-result v5

    .line 64
    .local v5, "shifted":I
    xor-int/2addr v3, v5

    .line 61
    .end local v5    # "shifted":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v4    # "a":I
    :cond_1
    array-length v4, v2

    xor-int/2addr v3, v4

    .line 67
    const v4, 0xce4b

    xor-int/2addr v3, v4

    .line 69
    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/PasswordRecord;->data:[B

    .line 70
    invoke-static {v3, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 72
    .end local v2    # "passwordBytes":[B
    .end local v3    # "passwordHash":I
    :goto_1
    return-void
.end method

.method private rotLeft15Bit(II)I
    .locals 1
    .param p1, "val"    # I
    .param p2, "rotate"    # I

    .line 106
    and-int/lit16 p1, p1, 0x7fff

    .line 108
    :goto_0
    if-lez p2, :cond_1

    .line 110
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_0

    .line 112
    shl-int/lit8 v0, p1, 0x1

    and-int/lit16 v0, v0, 0x7fff

    add-int/lit8 v0, v0, 0x1

    move p1, v0

    .end local p1    # "val":I
    .local v0, "val":I
    goto :goto_1

    .line 116
    .end local v0    # "val":I
    .restart local p1    # "val":I
    :cond_0
    shl-int/lit8 v0, p1, 0x1

    and-int/lit16 p1, v0, 0x7fff

    .line 108
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 120
    :cond_1
    return p1
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 94
    iget-object v0, p0, Ljxl/write/biff/PasswordRecord;->data:[B

    return-object v0
.end method
