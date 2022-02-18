.class Ljxl/biff/formula/StringFunction;
.super Ljxl/biff/formula/StringParseItem;
.source "StringFunction.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private function:Ljxl/biff/formula/Function;

.field private functionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/biff/formula/StringFunction;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/StringFunction;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljxl/biff/formula/StringParseItem;-><init>()V

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/formula/StringFunction;->functionString:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;
    .locals 1
    .param p1, "ws"    # Ljxl/WorkbookSettings;

    .line 65
    iget-object v0, p0, Ljxl/biff/formula/StringFunction;->function:Ljxl/biff/formula/Function;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Ljxl/biff/formula/StringFunction;->functionString:Ljava/lang/String;

    invoke-static {v0, p1}, Ljxl/biff/formula/Function;->getFunction(Ljava/lang/String;Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/formula/StringFunction;->function:Ljxl/biff/formula/Function;

    .line 69
    :cond_0
    iget-object v0, p0, Ljxl/biff/formula/StringFunction;->function:Ljxl/biff/formula/Function;

    return-object v0
.end method
