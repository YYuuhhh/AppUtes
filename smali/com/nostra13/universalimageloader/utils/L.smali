.class public final Lcom/nostra13/universalimageloader/utils/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static final LOG_FORMAT:Ljava/lang/String; = "%1$s\n%2$s"

.field private static volatile writeDebugLogs:Z

.field private static volatile writeLogs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nostra13/universalimageloader/utils/L;->writeDebugLogs:Z

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nostra13/universalimageloader/utils/L;->writeLogs:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 72
    sget-boolean v0, Lcom/nostra13/universalimageloader/utils/L;->writeDebugLogs:Z

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static disableLogging()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->writeLogs(Z)V

    .line 54
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 90
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 86
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 94
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public static enableLogging()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->writeLogs(Z)V

    .line 44
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 78
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method private static varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "priority"    # I
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 98
    sget-boolean v0, Lcom/nostra13/universalimageloader/utils/L;->writeLogs:Z

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    .line 100
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 104
    :cond_1
    if-nez p1, :cond_2

    .line 105
    move-object v0, p2

    .local v0, "log":Ljava/lang/String;
    goto :goto_1

    .line 107
    .end local v0    # "log":Ljava/lang/String;
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 108
    .local v0, "logMessage":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "logBody":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v3, "%1$s\n%2$s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 111
    .end local v1    # "logBody":Ljava/lang/String;
    .local v0, "log":Ljava/lang/String;
    :goto_1
    sget-object v1, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 82
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public static writeDebugLogs(Z)V
    .locals 0
    .param p0, "writeDebugLogs"    # Z

    .line 63
    sput-boolean p0, Lcom/nostra13/universalimageloader/utils/L;->writeDebugLogs:Z

    .line 64
    return-void
.end method

.method public static writeLogs(Z)V
    .locals 0
    .param p0, "writeLogs"    # Z

    .line 68
    sput-boolean p0, Lcom/nostra13/universalimageloader/utils/L;->writeLogs:Z

    .line 69
    return-void
.end method
