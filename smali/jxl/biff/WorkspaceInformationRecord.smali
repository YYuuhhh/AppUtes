.class public Ljxl/biff/WorkspaceInformationRecord;
.super Ljxl/biff/WritableRecordData;
.source "WorkspaceInformationRecord.java"


# static fields
.field private static final DEFAULT_OPTIONS:I = 0x4c1

.field private static final FIT_TO_PAGES:I = 0x100

.field private static final SHOW_COLUMN_OUTLINE_SYMBOLS:I = 0x800

.field private static final SHOW_ROW_OUTLINE_SYMBOLS:I = 0x400

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private columnOutlines:Z

.field private fitToPages:Z

.field private rowOutlines:Z

.field private wsoptions:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Ljxl/biff/WorkspaceInformationRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/WorkspaceInformationRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    sget-object v0, Ljxl/biff/Type;->WSBOOL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 83
    const/16 v0, 0x4c1

    iput v0, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    .line 84
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 68
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 69
    invoke-virtual {p0}, Ljxl/biff/WorkspaceInformationRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 71
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    .line 72
    or-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Ljxl/biff/WorkspaceInformationRecord;->fitToPages:Z

    .line 73
    or-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Ljxl/biff/WorkspaceInformationRecord;->rowOutlines:Z

    .line 74
    or-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_2

    move v1, v3

    :cond_2
    iput-boolean v1, p0, Ljxl/biff/WorkspaceInformationRecord;->columnOutlines:Z

    .line 75
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 131
    .local v0, "data":[B
    iget-boolean v1, p0, Ljxl/biff/WorkspaceInformationRecord;->fitToPages:Z

    if-eqz v1, :cond_0

    .line 133
    iget v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    .line 136
    :cond_0
    iget-boolean v1, p0, Ljxl/biff/WorkspaceInformationRecord;->rowOutlines:Z

    if-eqz v1, :cond_1

    .line 138
    iget v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    .line 141
    :cond_1
    iget-boolean v1, p0, Ljxl/biff/WorkspaceInformationRecord;->columnOutlines:Z

    if-eqz v1, :cond_2

    .line 143
    iget v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    .line 146
    :cond_2
    iget v1, p0, Ljxl/biff/WorkspaceInformationRecord;->wsoptions:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 148
    return-object v0
.end method

.method public getFitToPages()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Ljxl/biff/WorkspaceInformationRecord;->fitToPages:Z

    return v0
.end method

.method public setColumnOutlines(Z)V
    .locals 1
    .param p1, "ro"    # Z

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/WorkspaceInformationRecord;->rowOutlines:Z

    .line 120
    return-void
.end method

.method public setFitToPages(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 103
    iput-boolean p1, p0, Ljxl/biff/WorkspaceInformationRecord;->fitToPages:Z

    .line 104
    return-void
.end method

.method public setRowOutlines(Z)V
    .locals 1
    .param p1, "ro"    # Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/WorkspaceInformationRecord;->rowOutlines:Z

    .line 112
    return-void
.end method
