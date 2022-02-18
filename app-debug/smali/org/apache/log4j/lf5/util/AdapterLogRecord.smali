.class public Lorg/apache/log4j/lf5/util/AdapterLogRecord;
.super Lorg/apache/log4j/lf5/LogRecord;
.source "AdapterLogRecord.java"


# static fields
.field private static pw:Ljava/io/PrintWriter;

.field private static severeLevel:Lorg/apache/log4j/lf5/LogLevel;

.field private static sw:Ljava/io/StringWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->severeLevel:Lorg/apache/log4j/lf5/LogLevel;

    .line 46
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    sput-object v0, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->sw:Ljava/io/StringWriter;

    .line 47
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->sw:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->pw:Ljava/io/PrintWriter;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/log4j/lf5/LogRecord;-><init>()V

    .line 54
    return-void
.end method

.method public static getSevereLevel()Lorg/apache/log4j/lf5/LogLevel;
    .locals 1

    .line 74
    sget-object v0, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->severeLevel:Lorg/apache/log4j/lf5/LogLevel;

    return-object v0
.end method

.method public static setSevereLevel(Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 0
    .param p0, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .line 70
    sput-object p0, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->severeLevel:Lorg/apache/log4j/lf5/LogLevel;

    .line 71
    return-void
.end method


# virtual methods
.method protected getLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "stackTrace":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->parseLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "line":Ljava/lang/String;
    return-object v1
.end method

.method public isSevereLevel()Z
    .locals 2

    .line 65
    sget-object v0, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->severeLevel:Lorg/apache/log4j/lf5/LogLevel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogRecord;->getLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected parseLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "trace"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 101
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 102
    const/4 v1, 0x0

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 103
    return-object p1
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 60
    invoke-super {p0, p1}, Lorg/apache/log4j/lf5/LogRecord;->setCategory(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->getLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/log4j/lf5/LogRecord;->setLocation(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method protected stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "s":Ljava/lang/String;
    sget-object v1, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->sw:Ljava/io/StringWriter;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v2, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->pw:Ljava/io/PrintWriter;

    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 91
    sget-object v2, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->sw:Ljava/io/StringWriter;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 92
    sget-object v2, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->sw:Ljava/io/StringWriter;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    return-object v0

    .line 93
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method
