.class Ljxl/write/biff/FooterRecord;
.super Ljxl/biff/WritableRecordData;
.source "FooterRecord.java"


# instance fields
.field private data:[B

.field private footer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 49
    sget-object v0, Ljxl/biff/Type;->FOOTER:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 51
    iput-object p1, p0, Ljxl/write/biff/FooterRecord;->footer:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/FooterRecord;)V
    .locals 1
    .param p1, "fr"    # Ljxl/write/biff/FooterRecord;

    .line 61
    sget-object v0, Ljxl/biff/Type;->FOOTER:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 63
    iget-object v0, p1, Ljxl/write/biff/FooterRecord;->footer:Ljava/lang/String;

    iput-object v0, p0, Ljxl/write/biff/FooterRecord;->footer:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 5

    .line 73
    iget-object v0, p0, Ljxl/write/biff/FooterRecord;->footer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/FooterRecord;->footer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    const/4 v3, 0x3

    add-int/2addr v0, v3

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/FooterRecord;->data:[B

    .line 80
    iget-object v0, p0, Ljxl/write/biff/FooterRecord;->footer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v4, p0, Ljxl/write/biff/FooterRecord;->data:[B

    invoke-static {v0, v4, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 81
    iget-object v0, p0, Ljxl/write/biff/FooterRecord;->data:[B

    const/4 v1, 0x1

    aput-byte v1, v0, v2

    .line 83
    iget-object v1, p0, Ljxl/write/biff/FooterRecord;->footer:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 85
    iget-object v0, p0, Ljxl/write/biff/FooterRecord;->data:[B

    return-object v0

    .line 75
    :cond_1
    :goto_0
    new-array v0, v1, [B

    iput-object v0, p0, Ljxl/write/biff/FooterRecord;->data:[B

    .line 76
    return-object v0
.end method
