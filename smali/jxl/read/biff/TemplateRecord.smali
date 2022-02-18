.class Ljxl/read/biff/TemplateRecord;
.super Ljxl/biff/RecordData;
.source "TemplateRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private template:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Ljxl/read/biff/TemplateRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/TemplateRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 1
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 47
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/read/biff/TemplateRecord;->template:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getTemplate()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Ljxl/read/biff/TemplateRecord;->template:Z

    return v0
.end method
