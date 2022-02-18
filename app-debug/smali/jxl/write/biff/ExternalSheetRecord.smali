.class Ljxl/write/biff/ExternalSheetRecord;
.super Ljxl/biff/WritableRecordData;
.source "ExternalSheetRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/ExternalSheetRecord$XTI;
    }
.end annotation


# instance fields
.field private data:[B

.field private xtis:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    sget-object v0, Ljxl/biff/Type;->EXTERNSHEET:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/ExternalSheetRecord;)V
    .locals 6
    .param p1, "esf"    # Ljxl/read/biff/ExternalSheetRecord;

    .line 105
    sget-object v0, Ljxl/biff/Type;->EXTERNSHEET:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljxl/read/biff/ExternalSheetRecord;->getNumRecords()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "xti":Ljxl/write/biff/ExternalSheetRecord$XTI;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljxl/read/biff/ExternalSheetRecord;->getNumRecords()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 111
    new-instance v2, Ljxl/write/biff/ExternalSheetRecord$XTI;

    invoke-virtual {p1, v1}, Ljxl/read/biff/ExternalSheetRecord;->getSupbookIndex(I)I

    move-result v3

    invoke-virtual {p1, v1}, Ljxl/read/biff/ExternalSheetRecord;->getFirstTabIndex(I)I

    move-result v4

    invoke-virtual {p1, v1}, Ljxl/read/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljxl/write/biff/ExternalSheetRecord$XTI;-><init>(III)V

    move-object v0, v2

    .line 114
    iget-object v2, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 6

    .line 171
    iget-object v0, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 173
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 174
    .local v1, "pos":I
    iget-object v2, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 175
    add-int/lit8 v1, v1, 0x2

    .line 177
    iget-object v2, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 178
    .local v2, "i":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 179
    .local v3, "xti":Ljxl/write/biff/ExternalSheetRecord$XTI;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljxl/write/biff/ExternalSheetRecord$XTI;

    .line 182
    iget v4, v3, Ljxl/write/biff/ExternalSheetRecord$XTI;->supbookIndex:I

    invoke-static {v4, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 183
    iget v4, v3, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    add-int/lit8 v5, v1, 0x2

    invoke-static {v4, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 184
    iget v4, v3, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    add-int/lit8 v5, v1, 0x4

    invoke-static {v4, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 185
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 188
    :cond_0
    return-object v0
.end method

.method public getFirstTabIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 210
    iget-object v0, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/biff/ExternalSheetRecord$XTI;

    iget v0, v0, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    return v0
.end method

.method getIndex(II)I
    .locals 5
    .param p1, "supbookind"    # I
    .param p2, "sheetind"    # I

    .line 135
    iget-object v0, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 136
    .local v0, "i":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 137
    .local v1, "xti":Ljxl/write/biff/ExternalSheetRecord$XTI;
    const/4 v2, 0x0

    .line 138
    .local v2, "found":Z
    const/4 v3, 0x0

    .line 139
    .local v3, "pos":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljxl/write/biff/ExternalSheetRecord$XTI;

    .line 143
    iget v4, v1, Ljxl/write/biff/ExternalSheetRecord$XTI;->supbookIndex:I

    if-ne v4, p1, :cond_0

    iget v4, v1, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    if-ne v4, p2, :cond_0

    .line 146
    const/4 v2, 0x1

    goto :goto_0

    .line 150
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_1
    if-nez v2, :cond_2

    .line 156
    new-instance v4, Ljxl/write/biff/ExternalSheetRecord$XTI;

    invoke-direct {v4, p1, p2, p2}, Ljxl/write/biff/ExternalSheetRecord$XTI;-><init>(III)V

    move-object v1, v4

    .line 157
    iget-object v4, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v4, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 161
    :cond_2
    return v3
.end method

.method public getLastTabIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 221
    iget-object v0, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/biff/ExternalSheetRecord$XTI;

    iget v0, v0, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    return v0
.end method

.method public getSupbookIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 199
    iget-object v0, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/biff/ExternalSheetRecord$XTI;

    iget v0, v0, Ljxl/write/biff/ExternalSheetRecord$XTI;->supbookIndex:I

    return v0
.end method

.method sheetInserted(I)V
    .locals 3
    .param p1, "index"    # I

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "xti":Ljxl/write/biff/ExternalSheetRecord$XTI;
    iget-object v1, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljxl/write/biff/ExternalSheetRecord$XTI;

    .line 234
    invoke-virtual {v0, p1}, Ljxl/write/biff/ExternalSheetRecord$XTI;->sheetInserted(I)V

    goto :goto_0

    .line 236
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method sheetRemoved(I)V
    .locals 3
    .param p1, "index"    # I

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "xti":Ljxl/write/biff/ExternalSheetRecord$XTI;
    iget-object v1, p0, Ljxl/write/biff/ExternalSheetRecord;->xtis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljxl/write/biff/ExternalSheetRecord$XTI;

    .line 248
    invoke-virtual {v0, p1}, Ljxl/write/biff/ExternalSheetRecord$XTI;->sheetRemoved(I)V

    goto :goto_0

    .line 250
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
