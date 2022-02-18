.class Ljxl/read/biff/PasswordRecord;
.super Ljxl/biff/RecordData;
.source "PasswordRecord.java"


# instance fields
.field private password:Ljava/lang/String;

.field private passwordHash:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 3
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 47
    sget-object v0, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 49
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 50
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/PasswordRecord;->passwordHash:I

    .line 51
    return-void
.end method


# virtual methods
.method public getPasswordHash()I
    .locals 1

    .line 60
    iget v0, p0, Ljxl/read/biff/PasswordRecord;->passwordHash:I

    return v0
.end method
