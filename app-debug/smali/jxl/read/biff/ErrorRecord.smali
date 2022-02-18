.class Ljxl/read/biff/ErrorRecord;
.super Ljxl/read/biff/CellValue;
.source "ErrorRecord.java"

# interfaces
.implements Ljxl/ErrorCell;


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 2
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "fr"    # Ljxl/biff/FormattingRecords;
    .param p3, "si"    # Ljxl/read/biff/SheetImpl;

    .line 46
    invoke-direct {p0, p1, p2, p3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 48
    invoke-virtual {p0}, Ljxl/read/biff/ErrorRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 50
    .local v0, "data":[B
    const/4 v1, 0x6

    aget-byte v1, v0, v1

    iput v1, p0, Ljxl/read/biff/ErrorRecord;->errorCode:I

    .line 51
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljxl/read/biff/ErrorRecord;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 62
    iget v0, p0, Ljxl/read/biff/ErrorRecord;->errorCode:I

    return v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 82
    sget-object v0, Ljxl/CellType;->ERROR:Ljxl/CellType;

    return-object v0
.end method
