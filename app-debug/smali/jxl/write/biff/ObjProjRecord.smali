.class Ljxl/write/biff/ObjProjRecord;
.super Ljxl/biff/WritableRecordData;
.source "ObjProjRecord.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Ljxl/biff/Type;->OBJPROJ:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/ObjProjRecord;->data:[B

    .line 43
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 52
    iget-object v0, p0, Ljxl/write/biff/ObjProjRecord;->data:[B

    return-object v0
.end method
