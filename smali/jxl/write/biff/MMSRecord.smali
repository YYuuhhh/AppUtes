.class Ljxl/write/biff/MMSRecord;
.super Ljxl/biff/WritableRecordData;
.source "MMSRecord.java"


# instance fields
.field private data:[B

.field private numMenuItemsAdded:B

.field private numMenuItemsDeleted:B


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "menuItemsAdded"    # I
    .param p2, "menuItemsDeleted"    # I

    .line 51
    sget-object v0, Ljxl/biff/Type;->MMS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 53
    int-to-byte v0, p1

    iput-byte v0, p0, Ljxl/write/biff/MMSRecord;->numMenuItemsAdded:B

    .line 54
    int-to-byte v1, p2

    iput-byte v1, p0, Ljxl/write/biff/MMSRecord;->numMenuItemsDeleted:B

    .line 56
    const/4 v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Ljxl/write/biff/MMSRecord;->data:[B

    .line 58
    const/4 v3, 0x0

    aput-byte v0, v2, v3

    .line 59
    const/4 v0, 0x1

    aput-byte v1, v2, v0

    .line 60
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 69
    iget-object v0, p0, Ljxl/write/biff/MMSRecord;->data:[B

    return-object v0
.end method
