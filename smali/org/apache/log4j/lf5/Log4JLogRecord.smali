.class public Lorg/apache/log4j/lf5/Log4JLogRecord;
.super Lorg/apache/log4j/lf5/LogRecord;
.source "Log4JLogRecord.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/apache/log4j/lf5/LogRecord;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public isSevereLevel()Z
    .locals 3

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "isSevere":Z
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->ERROR:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogRecord;->getLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/LogLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FATAL:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogRecord;->getLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/LogLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x1

    .line 73
    :cond_1
    return v0
.end method

.method public setThrownStackTrace(Lorg/apache/log4j/spi/ThrowableInformation;)V
    .locals 5
    .param p1, "throwableInfo"    # Lorg/apache/log4j/spi/ThrowableInformation;

    .line 87
    invoke-virtual {p1}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "stackTraceArray":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v1, "stackTrace":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "nextLine":Ljava/lang/String;
    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_0

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/log4j/lf5/LogRecord;->_thrownStackTrace:Ljava/lang/String;

    .line 98
    .end local v0    # "stackTraceArray":[Ljava/lang/String;
    .end local v1    # "stackTrace":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .end local v3    # "nextLine":Ljava/lang/String;
    return-void

    .line 93
    .restart local v0    # "stackTraceArray":[Ljava/lang/String;
    .restart local v1    # "stackTrace":Ljava/lang/StringBuffer;
    .restart local v2    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .restart local v3    # "nextLine":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
