.class Ljxl/read/biff/BooleanRecord;
.super Ljxl/read/biff/CellValue;
.source "BooleanRecord.java"

# interfaces
.implements Ljxl/BooleanCell;


# instance fields
.field private error:Z

.field private value:Z


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 4
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "fr"    # Ljxl/biff/FormattingRecords;
    .param p3, "si"    # Ljxl/read/biff/SheetImpl;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/read/biff/BooleanRecord;->error:Z

    .line 55
    iput-boolean v0, p0, Ljxl/read/biff/BooleanRecord;->value:Z

    .line 57
    invoke-virtual {p0}, Ljxl/read/biff/BooleanRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v1

    .line 59
    .local v1, "data":[B
    const/4 v2, 0x7

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Ljxl/read/biff/BooleanRecord;->error:Z

    .line 61
    if-nez v2, :cond_2

    .line 63
    const/4 v2, 0x6

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_1

    move v0, v3

    :cond_1
    iput-boolean v0, p0, Ljxl/read/biff/BooleanRecord;->value:Z

    .line 65
    :cond_2
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 2

    .line 98
    invoke-virtual {p0}, Ljxl/read/biff/BooleanRecord;->isError()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 101
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Ljxl/read/biff/BooleanRecord;->value:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecord()Ljxl/read/biff/Record;
    .locals 1

    .line 122
    invoke-super {p0}, Ljxl/read/biff/CellValue;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 111
    sget-object v0, Ljxl/CellType;->BOOLEAN:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Ljxl/read/biff/BooleanRecord;->value:Z

    return v0
.end method

.method public isError()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Ljxl/read/biff/BooleanRecord;->error:Z

    return v0
.end method
