.class public Lorg/apache/log4j/lf5/util/LogMonitorAdapter;
.super Ljava/lang/Object;
.source "LogMonitorAdapter.java"


# static fields
.field public static final JDK14_LOG_LEVELS:I = 0x1

.field public static final LOG4J_LOG_LEVELS:I


# instance fields
.field private _defaultLevel:Lorg/apache/log4j/lf5/LogLevel;

.field private _logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1, "userDefinedLevels"    # Ljava/util/List;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->_defaultLevel:Lorg/apache/log4j/lf5/LogLevel;

    .line 56
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/LogLevel;

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->_defaultLevel:Lorg/apache/log4j/lf5/LogLevel;

    .line 57
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 59
    invoke-static {}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->getDefaultMonitorWidth()I

    move-result v1

    invoke-static {}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->getDefaultMonitorHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFrameSize(II)V

    .line 61
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSize(I)V

    .line 62
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->show()V

    .line 63
    return-void
.end method

.method protected static getDefaultMonitorHeight()I
    .locals 1

    .line 278
    invoke-static {}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected static getDefaultMonitorWidth()I
    .locals 1

    .line 274
    invoke-static {}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected static getScreenHeight()I
    .locals 2

    .line 267
    :try_start_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 269
    :catchall_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    const/16 v1, 0x258

    return v1
.end method

.method protected static getScreenWidth()I
    .locals 2

    .line 254
    :try_start_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 256
    :catchall_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    const/16 v1, 0x320

    return v1
.end method

.method public static newInstance(I)Lorg/apache/log4j/lf5/util/LogMonitorAdapter;
    .locals 2
    .param p0, "loglevels"    # I

    .line 77
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 78
    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getJdk14Levels()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->newInstance(Ljava/util/List;)Lorg/apache/log4j/lf5/util/LogMonitorAdapter;

    move-result-object v0

    .line 79
    .local v0, "adapter":Lorg/apache/log4j/lf5/util/LogMonitorAdapter;
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FINEST:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->setDefaultLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    .line 80
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->SEVERE:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->setSevereLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    goto :goto_0

    .line 77
    .end local v0    # "adapter":Lorg/apache/log4j/lf5/util/LogMonitorAdapter;
    :cond_0
    const/4 v0, 0x0

    .line 82
    .restart local v0    # "adapter":Lorg/apache/log4j/lf5/util/LogMonitorAdapter;
    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLog4JLevels()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->newInstance(Ljava/util/List;)Lorg/apache/log4j/lf5/util/LogMonitorAdapter;

    move-result-object v0

    .line 83
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->setDefaultLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    .line 84
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FATAL:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->setSevereLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    .line 86
    :goto_0
    return-object v0
.end method

.method public static newInstance(Ljava/util/List;)Lorg/apache/log4j/lf5/util/LogMonitorAdapter;
    .locals 1
    .param p0, "userDefinedLevels"    # Ljava/util/List;

    .line 113
    new-instance v0, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static newInstance([Lorg/apache/log4j/lf5/LogLevel;)Lorg/apache/log4j/lf5/util/LogMonitorAdapter;
    .locals 1
    .param p0, "userDefined"    # [Lorg/apache/log4j/lf5/LogLevel;

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->newInstance(Ljava/util/List;)Lorg/apache/log4j/lf5/util/LogMonitorAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMessage(Lorg/apache/log4j/lf5/LogRecord;)V
    .locals 1
    .param p1, "record"    # Lorg/apache/log4j/lf5/LogRecord;

    .line 122
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    .line 123
    return-void
.end method

.method public getDefaultLevel()Lorg/apache/log4j/lf5/LogLevel;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->_defaultLevel:Lorg/apache/log4j/lf5/LogLevel;

    return-object v0
.end method

.method public getSevereLevel()Lorg/apache/log4j/lf5/LogLevel;
    .locals 1

    .line 168
    invoke-static {}, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->getSevereLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->log(Ljava/lang/String;Lorg/apache/log4j/lf5/LogLevel;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public log(Ljava/lang/String;Lorg/apache/log4j/lf5/LogLevel;Ljava/lang/String;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/log4j/lf5/LogLevel;
    .param p3, "message"    # Ljava/lang/String;

    .line 241
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->log(Ljava/lang/String;Lorg/apache/log4j/lf5/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public log(Ljava/lang/String;Lorg/apache/log4j/lf5/LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/log4j/lf5/LogLevel;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "NDC"    # Ljava/lang/String;

    .line 217
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->log(Ljava/lang/String;Lorg/apache/log4j/lf5/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public log(Ljava/lang/String;Lorg/apache/log4j/lf5/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/log4j/lf5/LogLevel;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 230
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->log(Ljava/lang/String;Lorg/apache/log4j/lf5/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public log(Ljava/lang/String;Lorg/apache/log4j/lf5/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/log4j/lf5/LogLevel;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;
    .param p5, "NDC"    # Ljava/lang/String;

    .line 183
    new-instance v0, Lorg/apache/log4j/lf5/util/AdapterLogRecord;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/util/AdapterLogRecord;-><init>()V

    .line 184
    .local v0, "record":Lorg/apache/log4j/lf5/util/AdapterLogRecord;
    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->setCategory(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p3}, Lorg/apache/log4j/lf5/LogRecord;->setMessage(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p5}, Lorg/apache/log4j/lf5/LogRecord;->setNDC(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p4}, Lorg/apache/log4j/lf5/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 189
    if-nez p2, :cond_0

    .line 190
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->getDefaultLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    .line 195
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    .line 196
    .end local v0    # "record":Lorg/apache/log4j/lf5/util/AdapterLogRecord;
    return-void
.end method

.method public setDefaultLevel(Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .line 141
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->_defaultLevel:Lorg/apache/log4j/lf5/LogLevel;

    .line 142
    return-void
.end method

.method public setMaxNumberOfRecords(I)V
    .locals 1
    .param p1, "maxNumberOfRecords"    # I

    .line 131
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogMonitorAdapter;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setMaxNumberOfLogRecords(I)V

    .line 132
    return-void
.end method

.method public setSevereLevel(Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .line 159
    invoke-static {p1}, Lorg/apache/log4j/lf5/util/AdapterLogRecord;->setSevereLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    .line 160
    return-void
.end method
