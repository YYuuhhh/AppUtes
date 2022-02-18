.class public Lorg/apache/log4j/nt/NTEventLogAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "NTEventLogAppender.java"


# static fields
.field private static final DEBUG:I

.field private static final ERROR:I

.field private static final FATAL:I

.field private static final INFO:I

.field private static final WARN:I


# instance fields
.field private _handle:I

.field private server:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v0

    sput v0, Lorg/apache/log4j/nt/NTEventLogAppender;->FATAL:I

    .line 46
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v0

    sput v0, Lorg/apache/log4j/nt/NTEventLogAppender;->ERROR:I

    .line 47
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v0

    sput v0, Lorg/apache/log4j/nt/NTEventLogAppender;->WARN:I

    .line 48
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v0

    sput v0, Lorg/apache/log4j/nt/NTEventLogAppender;->INFO:I

    .line 49
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v0

    sput v0, Lorg/apache/log4j/nt/NTEventLogAppender;->DEBUG:I

    .line 165
    const-string v0, "NTEventLogAppender"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "layout"    # Lorg/apache/log4j/Layout;

    .line 71
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    .line 72
    if-nez p2, :cond_0

    .line 73
    const-string p2, "Log4j"

    .line 75
    :cond_0
    if-nez p3, :cond_1

    .line 76
    new-instance v1, Lorg/apache/log4j/TTCCLayout;

    invoke-direct {v1}, Lorg/apache/log4j/TTCCLayout;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    goto :goto_0

    .line 78
    :cond_1
    iput-object p3, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 82
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "layout"    # Lorg/apache/log4j/Layout;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/log4j/Layout;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 65
    return-void
.end method

.method private native deregisterEventSource(I)V
.end method

.method private native registerEventSource(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native reportEvent(ILjava/lang/String;I)V
.end method


# virtual methods
.method public activateOptions()V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Could not register event source."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "s":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 115
    array-length v2, v1

    .line 116
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "s":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v1

    .line 128
    .local v1, "nt_category":I
    iget v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lorg/apache/log4j/nt/NTEventLogAppender;->reportEvent(ILjava/lang/String;I)V

    .line 129
    .end local v0    # "sbuf":Ljava/lang/StringBuffer;
    .end local v1    # "nt_category":I
    return-void
.end method

.method public close()V
    .locals 0

    .line 92
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 134
    iget v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-direct {p0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;->deregisterEventSource(I)V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    .line 136
    return-void
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    .line 145
    return-void
.end method
