.class public Lorg/apache/log4j/spi/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NA:Ljava/lang/String; = "?"

.field static inVisualAge:Z = false

.field private static pw:Ljava/io/PrintWriter; = null

.field static final serialVersionUID:J = -0x1266441eb56e5a84L

.field private static sw:Ljava/io/StringWriter;


# instance fields
.field transient className:Ljava/lang/String;

.field transient fileName:Ljava/lang/String;

.field public fullInfo:Ljava/lang/String;

.field transient lineNumber:Ljava/lang/String;

.field transient methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    sput-object v0, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    .line 56
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lorg/apache/log4j/spi/LocationInfo;->pw:Ljava/io/PrintWriter;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    .line 71
    :try_start_0
    const-string v0, "com.ibm.uvm.tools.DebugSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, "dummy":Ljava/lang/Class;
    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    .line 73
    const-string v1, "Detected IBM VisualAge environment."

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "dummy":Ljava/lang/Class;
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "fqnOfCallingClass"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-nez p1, :cond_0

    .line 100
    return-void

    .line 104
    :cond_0
    sget-object v0, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    monitor-enter v0

    .line 105
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/log4j/spi/LocationInfo;->pw:Ljava/io/PrintWriter;

    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 106
    sget-object v2, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    .local v1, "s":Ljava/lang/String;
    :try_start_1
    sget-object v2, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 108
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-virtual {v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, "ibegin":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 121
    return-void

    .line 124
    :cond_1
    sget-object v3, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 125
    if-ne v0, v2, :cond_2

    .line 126
    return-void

    .line 127
    :cond_2
    sget v3, Lorg/apache/log4j/Layout;->LINE_SEP_LEN:I

    add-int/2addr v0, v3

    .line 130
    sget-object v3, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 131
    .local v3, "iend":I
    if-ne v3, v2, :cond_3

    .line 132
    return-void

    .line 136
    :cond_3
    sget-boolean v4, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    if-nez v4, :cond_5

    .line 138
    const-string v4, "at "

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 139
    if-ne v0, v2, :cond_4

    .line 140
    return-void

    .line 142
    :cond_4
    add-int/lit8 v0, v0, 0x3

    .line 145
    :cond_5
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    .line 146
    .end local v0    # "ibegin":I
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "iend":I
    return-void

    .line 108
    .restart local v1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_0

    .end local v1    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v2

    .restart local v1    # "s":Ljava/lang/String;
    :goto_0
    monitor-exit v0

    throw v2
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 6

    .line 154
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const-string v1, "?"

    if-nez v0, :cond_0

    return-object v1

    .line 155
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 158
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 159
    .local v0, "iend":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 160
    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_1
    iget-object v3, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, "ibegin":I
    sget-boolean v4, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    if-eqz v4, :cond_2

    .line 175
    iget-object v4, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v5, 0x20

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 178
    :cond_2
    if-ne v0, v2, :cond_3

    .line 179
    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_3
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    .line 184
    .end local v0    # "iend":I
    .end local v3    # "ibegin":I
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 4

    .line 194
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const-string v1, "?"

    if-nez v0, :cond_0

    return-object v1

    .line 196
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 197
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 198
    .local v0, "iend":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 199
    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v2, 0x28

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 202
    .local v1, "ibegin":I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 205
    .end local v0    # "iend":I
    .end local v1    # "ibegin":I
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()Ljava/lang/String;
    .locals 5

    .line 215
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const-string v1, "?"

    if-nez v0, :cond_0

    return-object v1

    .line 217
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 218
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 219
    .local v0, "iend":I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x3a

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 220
    .local v2, "ibegin":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 221
    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    .line 225
    .end local v0    # "iend":I
    .end local v2    # "ibegin":I
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 4

    .line 233
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const-string v1, "?"

    if-nez v0, :cond_0

    return-object v1

    .line 234
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 235
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 236
    .local v0, "iend":I
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 237
    .local v2, "ibegin":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 238
    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    .line 242
    .end local v0    # "iend":I
    .end local v2    # "ibegin":I
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    return-object v0
.end method
