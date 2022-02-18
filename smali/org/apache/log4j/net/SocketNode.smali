.class public Lorg/apache/log4j/net/SocketNode;
.super Ljava/lang/Object;
.source "SocketNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static synthetic class$org$apache$log4j$net$SocketNode:Ljava/lang/Class;

.field static logger:Lorg/apache/log4j/Logger;


# instance fields
.field hierarchy:Lorg/apache/log4j/spi/LoggerRepository;

.field ois:Ljava/io/ObjectInputStream;

.field socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/log4j/net/SocketNode;->class$org$apache$log4j$net$SocketNode:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.SocketNode"

    invoke-static {v0}, Lorg/apache/log4j/net/SocketNode;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketNode;->class$org$apache$log4j$net$SocketNode:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/log4j/net/SocketNode;->socket:Ljava/net/Socket;

    .line 52
    iput-object p2, p0, Lorg/apache/log4j/net/SocketNode;->hierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    .line 54
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not open ObjectInputStream to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 73
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 75
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/spi/LoggingEvent;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    move-object v2, v3

    .line 77
    .local v2, "event":Lorg/apache/log4j/spi/LoggingEvent;
    :try_start_1
    iget-object v3, p0, Lorg/apache/log4j/net/SocketNode;->hierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-virtual {v2}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 80
    .local v1, "remoteLogger":Lorg/apache/log4j/Logger;
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/log4j/Category;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v3
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v3, :cond_0

    .line 82
    :try_start_3
    invoke-virtual {v1, v2}, Lorg/apache/log4j/Category;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v3

    move-object v4, v0

    .local v4, "e":Ljava/net/SocketException;
    move-object v5, v0

    .local v0, "e":Ljava/io/IOException;
    .local v5, "e":Ljava/io/EOFException;
    goto :goto_1

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/net/SocketException;
    .end local v5    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v3

    move-object v4, v0

    .local v0, "e":Ljava/io/EOFException;
    .restart local v4    # "e":Ljava/net/SocketException;
    goto :goto_2

    .line 88
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v4    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v3

    .restart local v0    # "e":Ljava/io/EOFException;
    goto :goto_3

    .line 86
    .end local v0    # "e":Ljava/io/EOFException;
    :catch_3
    move-exception v0

    goto :goto_4

    .line 93
    .end local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    .end local v2    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    :catch_4
    move-exception v3

    move-object v4, v0

    .restart local v4    # "e":Ljava/net/SocketException;
    move-object v5, v0

    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "e":Ljava/io/EOFException;
    goto :goto_1

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/net/SocketException;
    .end local v5    # "e":Ljava/io/EOFException;
    :catch_5
    move-exception v3

    move-object v4, v0

    .local v0, "e":Ljava/io/EOFException;
    .restart local v4    # "e":Ljava/net/SocketException;
    goto :goto_2

    .line 88
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v4    # "e":Ljava/net/SocketException;
    :catch_6
    move-exception v3

    .restart local v0    # "e":Ljava/io/EOFException;
    goto :goto_3

    .line 86
    .end local v0    # "e":Ljava/io/EOFException;
    :catch_7
    move-exception v0

    goto :goto_4

    .line 93
    :catch_8
    move-exception v3

    .restart local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    move-object v4, v0

    .restart local v4    # "e":Ljava/net/SocketException;
    move-object v5, v0

    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "e":Ljava/io/EOFException;
    goto :goto_1

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    .end local v4    # "e":Ljava/net/SocketException;
    .end local v5    # "e":Ljava/io/EOFException;
    :catch_9
    move-exception v3

    .restart local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    move-object v4, v0

    .local v0, "e":Ljava/io/EOFException;
    .restart local v4    # "e":Ljava/net/SocketException;
    goto :goto_2

    .line 88
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    .end local v4    # "e":Ljava/net/SocketException;
    :catch_a
    move-exception v3

    .restart local v0    # "e":Ljava/io/EOFException;
    .restart local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    goto :goto_3

    .line 86
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    :catch_b
    move-exception v0

    .restart local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    goto :goto_4

    .line 93
    .end local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    :catch_c
    move-exception v3

    .restart local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    move-object v4, v0

    .restart local v2    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    .restart local v4    # "e":Ljava/net/SocketException;
    move-object v5, v0

    .local v0, "e":Ljava/io/IOException;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "e":Ljava/io/EOFException;
    :goto_1
    sget-object v6, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v7, "Unexpected exception. Closing conneciton."

    invoke-virtual {v6, v7, v3}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    .end local v2    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e":Ljava/net/SocketException;
    .end local v5    # "e":Ljava/io/EOFException;
    :catch_d
    move-exception v3

    .restart local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    move-object v4, v0

    .local v0, "e":Ljava/io/EOFException;
    .restart local v2    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "e":Ljava/net/SocketException;
    :goto_2
    sget-object v5, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Caught java.io.IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 91
    sget-object v5, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v6, "Closing connection."

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 92
    goto :goto_5

    .line 88
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    .end local v2    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/net/SocketException;
    :catch_e
    move-exception v3

    .restart local v0    # "e":Ljava/io/EOFException;
    .restart local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    .restart local v2    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    .local v3, "e":Ljava/net/SocketException;
    :goto_3
    sget-object v4, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v5, "Caught java.net.SocketException closing conneciton."

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 89
    goto :goto_5

    .line 86
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    .end local v2    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    .end local v3    # "e":Ljava/net/SocketException;
    :catch_f
    move-exception v0

    .restart local v0    # "e":Ljava/io/EOFException;
    .restart local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    .restart local v2    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    :goto_4
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Caught java.io.EOFException closing conneciton."

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 87
    nop

    .line 97
    .end local v0    # "e":Ljava/io/EOFException;
    :goto_5
    :try_start_4
    iget-object v0, p0, Lorg/apache/log4j/net/SocketNode;->ois:Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    .line 98
    goto :goto_6

    .line 99
    :catch_10
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/log4j/net/SocketNode;->logger:Lorg/apache/log4j/Logger;

    const-string v4, "Could not close connection."

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "remoteLogger":Lorg/apache/log4j/Logger;
    .end local v2    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    :goto_6
    return-void
.end method
