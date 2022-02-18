.class public Lorg/apache/log4j/lf5/util/LogFileParser;
.super Ljava/lang/Object;
.source "LogFileParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ATTRIBUTE_DELIMITER:Ljava/lang/String; = "[slf5s."

.field public static final CATEGORY_DELIMITER:Ljava/lang/String; = "[slf5s.CATEGORY]"

.field public static final DATE_DELIMITER:Ljava/lang/String; = "[slf5s.DATE]"

.field public static final LOCATION_DELIMITER:Ljava/lang/String; = "[slf5s.LOCATION]"

.field public static final MESSAGE_DELIMITER:Ljava/lang/String; = "[slf5s.MESSAGE]"

.field public static final NDC_DELIMITER:Ljava/lang/String; = "[slf5s.NDC]"

.field public static final PRIORITY_DELIMITER:Ljava/lang/String; = "[slf5s.PRIORITY]"

.field public static final RECORD_DELIMITER:Ljava/lang/String; = "[slf5s.start]"

.field public static final THREAD_DELIMITER:Ljava/lang/String; = "[slf5s.THREAD]"

.field private static _sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private _in:Ljava/io/InputStream;

.field _loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

.field private _monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss,S"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/util/LogFileParser;->_sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/util/LogFileParser;-><init>(Ljava/io/InputStream;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    .line 76
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/apache/log4j/lf5/util/LogFileParser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/log4j/lf5/util/LogFileParser;

    .line 41
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    return-void
.end method

.method private createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;
    .locals 3
    .param p1, "record"    # Ljava/lang/String;

    .line 261
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    new-instance v0, Lorg/apache/log4j/lf5/Log4JLogRecord;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/Log4JLogRecord;-><init>()V

    .line 266
    .local v0, "lr":Lorg/apache/log4j/lf5/LogRecord;
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/lf5/LogRecord;->setMillis(J)V

    .line 267
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parsePriority(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    .line 268
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setCategory(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setLocation(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setThreadDescription(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseNDC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setNDC(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setMessage(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseThrowable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/LogRecord;->setThrownStackTrace(Ljava/lang/String;)V

    .line 275
    return-object v0

    .line 262
    .end local v0    # "lr":Lorg/apache/log4j/lf5/LogRecord;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private destroyDialog()V
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    invoke-virtual {v0}, Ljava/awt/Dialog;->hide()V

    .line 165
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    invoke-virtual {v0}, Ljava/awt/Dialog;->dispose()V

    .line 166
    return-void
.end method

.method private getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "record"    # Ljava/lang/String;

    .line 280
    add-int/lit8 v0, p1, -0x1

    const-string v1, "[slf5s."

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 282
    .local v0, "start":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 283
    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 286
    :cond_0
    const-string v1, "]"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 288
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadLogFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    .local v0, "br":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 175
    .local v1, "count":I
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    .line 177
    .local v2, "size":I
    const/4 v3, 0x0

    .line 178
    .local v3, "sb":Ljava/lang/StringBuffer;
    if-lez v2, :cond_0

    .line 179
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v3, v4

    goto :goto_0

    .line 181
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v3, v4

    .line 184
    nop

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    move v1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 188
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 189
    const/4 v0, 0x0

    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 185
    :cond_1
    int-to-char v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "record"    # Ljava/lang/String;

    .line 196
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 199
    const/4 v1, 0x0

    return-object v1

    .line 202
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/lf5/util/LogFileParser;->getAttribute(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .line 241
    const-string v0, "[slf5s.CATEGORY]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseDate(Ljava/lang/String;)J
    .locals 4
    .param p1, "record"    # Ljava/lang/String;

    .line 207
    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "[slf5s.DATE]"

    invoke-direct {p0, v2, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 210
    return-wide v0

    .line 213
    :cond_0
    sget-object v3, Lorg/apache/log4j/lf5/util/LogFileParser;->_sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 215
    .local v3, "d":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 217
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "d":Ljava/util/Date;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/text/ParseException;
    return-wide v0
.end method

.method private parseLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .line 245
    const-string v0, "[slf5s.LOCATION]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .line 249
    const-string v0, "[slf5s.MESSAGE]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseNDC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .line 253
    const-string v0, "[slf5s.NDC]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parsePriority(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;
    .locals 3
    .param p1, "record"    # Ljava/lang/String;

    .line 222
    const-string v0, "[slf5s.PRIORITY]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "temp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 226
    :try_start_0
    invoke-static {v0}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 228
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/apache/log4j/lf5/LogLevelFormatException;
    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    return-object v2

    .line 233
    .end local v1    # "e":Lorg/apache/log4j/lf5/LogLevelFormatException;
    :cond_0
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    return-object v1
.end method

.method private parseThread(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .line 237
    const-string v0, "[slf5s.THREAD]"

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->parseAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseThrowable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/apache/log4j/lf5/util/LogFileParser;->getAttribute(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected displayError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 155
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    iget-object v1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public parse(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 89
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 91
    .end local v0    # "t":Ljava/lang/Thread;
    return-void
.end method

.method public run()V
    .locals 9

    const-string v0, "[slf5s.start]"

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "index":I
    const/4 v2, 0x0

    .line 102
    .local v2, "counter":I
    const/4 v3, 0x0

    .line 104
    .local v3, "isLogFile":Z
    new-instance v4, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    iget-object v5, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v5}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getBaseFrame()Ljavax/swing/JFrame;

    move-result-object v5

    const-string v6, "Loading file..."

    invoke-direct {v4, v5, v6}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_loadDialog:Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;

    .line 109
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    invoke-direct {p0, v5}, Lorg/apache/log4j/lf5/util/LogFileParser;->loadLogFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 111
    .local v5, "logRecords":Ljava/lang/String;
    move-object v6, v4

    .local v6, "temp":Lorg/apache/log4j/lf5/LogRecord;
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    move v2, v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 122
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/util/LogFileParser;->createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v0

    move-object v6, v0

    .line 125
    if-eqz v6, :cond_0

    .line 126
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, v6}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    .line 130
    :cond_0
    if-eqz v3, :cond_1

    .line 133
    new-instance v0, Lorg/apache/log4j/lf5/util/LogFileParser$1;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/util/LogFileParser$1;-><init>(Lorg/apache/log4j/lf5/util/LogFileParser;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 139
    .end local v5    # "logRecords":Ljava/lang/String;
    goto :goto_3

    .line 131
    .restart local v5    # "logRecords":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "Invalid log file format"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "index":I
    .end local v2    # "counter":I
    .end local v3    # "isLogFile":Z
    .end local v6    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 112
    .restart local v1    # "index":I
    .restart local v2    # "counter":I
    .restart local v3    # "isLogFile":Z
    :cond_2
    :try_start_2
    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/log4j/lf5/util/LogFileParser;->createLogRecord(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    .restart local v6    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    const/4 v3, 0x1

    .line 115
    if-eqz v6, :cond_3

    .line 116
    :try_start_3
    iget-object v7, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v7, v6}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    .line 119
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    add-int v1, v2, v7

    goto :goto_0

    .line 144
    .end local v5    # "logRecords":Ljava/lang/String;
    .end local v6    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    :catch_0
    move-exception v0

    .restart local v6    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    goto :goto_1

    .line 140
    .end local v6    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 144
    .restart local v6    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    :catch_2
    move-exception v0

    goto :goto_1

    .line 140
    :catch_3
    move-exception v0

    goto :goto_2

    .line 144
    .end local v6    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    :catch_4
    move-exception v0

    move-object v6, v4

    .restart local v6    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    move-object v5, v4

    .local v0, "e":Ljava/io/IOException;
    .local v5, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    .line 145
    const-string v7, "Error - Unable to load log file!"

    invoke-virtual {p0, v7}, Lorg/apache/log4j/lf5/util/LogFileParser;->displayError(Ljava/lang/String;)V

    goto :goto_3

    .line 140
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    :catch_5
    move-exception v0

    move-object v6, v4

    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v6    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    :goto_2
    invoke-direct {p0}, Lorg/apache/log4j/lf5/util/LogFileParser;->destroyDialog()V

    .line 141
    const-string v5, "Error - Invalid log file format.\nPlease see documentation on how to load log files."

    invoke-virtual {p0, v5}, Lorg/apache/log4j/lf5/util/LogFileParser;->displayError(Ljava/lang/String;)V

    .line 143
    nop

    .line 148
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3
    iput-object v4, p0, Lorg/apache/log4j/lf5/util/LogFileParser;->_in:Ljava/io/InputStream;

    .line 149
    .end local v1    # "index":I
    .end local v2    # "counter":I
    .end local v3    # "isLogFile":Z
    .end local v6    # "temp":Lorg/apache/log4j/lf5/LogRecord;
    return-void
.end method
