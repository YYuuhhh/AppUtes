.class public Ljxl/read/biff/FooterRecord;
.super Ljxl/biff/RecordData;
.source "FooterRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/FooterRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/FooterRecord$Biff7;


# instance fields
.field private footer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljxl/read/biff/FooterRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/FooterRecord$Biff7;-><init>(Ljxl/read/biff/FooterRecord$1;)V

    sput-object v0, Ljxl/read/biff/FooterRecord;->biff7:Ljxl/read/biff/FooterRecord$Biff7;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;

    .line 51
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 52
    invoke-virtual {p0}, Ljxl/read/biff/FooterRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 54
    .local v0, "data":[B
    array-length v1, v0

    if-nez v1, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 61
    .local v2, "chars":I
    const/4 v4, 0x2

    aget-byte v4, v0, v4

    if-ne v4, v3, :cond_1

    move v1, v3

    .line 63
    .local v1, "unicode":Z
    :cond_1
    const/4 v3, 0x3

    if-eqz v1, :cond_2

    .line 65
    invoke-static {v0, v2, v3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljxl/read/biff/FooterRecord;->footer:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {v0, v2, v3, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljxl/read/biff/FooterRecord;->footer:Ljava/lang/String;

    .line 71
    :goto_0
    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/FooterRecord$Biff7;)V
    .locals 3
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "ws"    # Ljxl/WorkbookSettings;
    .param p3, "dummy"    # Ljxl/read/biff/FooterRecord$Biff7;

    .line 82
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 83
    invoke-virtual {p0}, Ljxl/read/biff/FooterRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 85
    .local v0, "data":[B
    array-length v1, v0

    if-nez v1, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 91
    .local v1, "chars":I
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/FooterRecord;->footer:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method getFooter()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Ljxl/read/biff/FooterRecord;->footer:Ljava/lang/String;

    return-object v0
.end method
