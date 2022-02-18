.class public abstract Lorg/apache/log4j/helpers/FileWatchdog;
.super Ljava/lang/Thread;
.source "FileWatchdog.java"


# static fields
.field public static final DEFAULT_DELAY:J = 0xea60L


# instance fields
.field protected delay:J

.field file:Ljava/io/File;

.field protected filename:Ljava/lang/String;

.field interrupted:Z

.field lastModif:J

.field warnedAlready:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    .line 50
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    .line 54
    iput-object p1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 57
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->checkAndConfigure()V

    .line 58
    return-void
.end method


# virtual methods
.method protected checkAndConfigure()V
    .locals 7

    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v2, "fileExists":Z
    nop

    .line 84
    if-eqz v2, :cond_1

    .line 85
    iget-object v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 86
    .local v3, "l":J
    iget-wide v5, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 87
    iput-wide v3, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    .line 88
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->doOnChange()V

    .line 89
    iput-boolean v1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    .end local v3    # "l":J
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    iget-boolean v1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    if-nez v1, :cond_2

    .line 93
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "] does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 94
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    .line 97
    .end local v2    # "fileExists":Z
    :cond_2
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v2

    .local v1, "fileExists":Z
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Was not allowed to read check file existance, file:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 80
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    .line 81
    return-void
.end method

.method protected abstract doOnChange()V
.end method

.method public run()V
    .locals 2

    .line 101
    nop

    :goto_0
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    if-eqz v0, :cond_0

    .line 109
    return-void

    .line 103
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    :goto_1
    nop

    .line 107
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->checkAndConfigure()V

    goto :goto_0
.end method

.method public setDelay(J)V
    .locals 0
    .param p1, "delay"    # J

    .line 65
    iput-wide p1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    .line 66
    return-void
.end method
