.class Ljxl/write/biff/CountryRecord;
.super Ljxl/biff/WritableRecordData;
.source "CountryRecord.java"


# instance fields
.field private language:I

.field private regionalSettings:I


# direct methods
.method public constructor <init>(Ljxl/biff/CountryCode;Ljxl/biff/CountryCode;)V
    .locals 1
    .param p1, "lang"    # Ljxl/biff/CountryCode;
    .param p2, "r"    # Ljxl/biff/CountryCode;

    .line 48
    sget-object v0, Ljxl/biff/Type;->COUNTRY:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 50
    invoke-virtual {p1}, Ljxl/biff/CountryCode;->getValue()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/CountryRecord;->language:I

    .line 51
    invoke-virtual {p2}, Ljxl/biff/CountryCode;->getValue()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/CountryRecord;->regionalSettings:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/CountryRecord;)V
    .locals 1
    .param p1, "cr"    # Ljxl/read/biff/CountryRecord;

    .line 56
    sget-object v0, Ljxl/biff/Type;->COUNTRY:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 58
    invoke-virtual {p1}, Ljxl/read/biff/CountryRecord;->getLanguageCode()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/CountryRecord;->language:I

    .line 59
    invoke-virtual {p1}, Ljxl/read/biff/CountryRecord;->getRegionalSettingsCode()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/CountryRecord;->regionalSettings:I

    .line 60
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 71
    .local v0, "data":[B
    iget v1, p0, Ljxl/write/biff/CountryRecord;->language:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 72
    iget v1, p0, Ljxl/write/biff/CountryRecord;->regionalSettings:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 74
    return-object v0
.end method
