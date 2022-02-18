.class Lorg/apache/log4j/net/SocketAppender$Connector;
.super Ljava/lang/Thread;
.source "SocketAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/net/SocketAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connector"
.end annotation


# instance fields
.field interrupted:Z

.field private final synthetic this$0:Lorg/apache/log4j/net/SocketAppender;


# direct methods
.method constructor <init>(Lorg/apache/log4j/net/SocketAppender;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/log4j/net/SocketAppender;

    .line 360
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->interrupted:Z

    .line 360
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 367
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v2

    .local v1, "socket":Ljava/net/Socket;
    :goto_0
    iget-boolean v4, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->interrupted:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 369
    .end local v1    # "socket":Ljava/net/Socket;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget v4, v4, Lorg/apache/log4j/net/SocketAppender;->reconnectionDelay:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 370
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Attempting connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v5, v5, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 371
    new-instance v4, Ljava/net/Socket;

    iget-object v5, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v5, v5, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    iget-object v6, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget v6, v6, Lorg/apache/log4j/net/SocketAppender;->port:I

    invoke-direct {v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v1, v4

    .line 372
    .restart local v1    # "socket":Ljava/net/Socket;
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    :try_start_2
    iget-object v2, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, v2, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;

    .line 374
    iget-object v2, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    invoke-static {v2, v0}, Lorg/apache/log4j/net/SocketAppender;->access$002(Lorg/apache/log4j/net/SocketAppender;Lorg/apache/log4j/net/SocketAppender$Connector;)Lorg/apache/log4j/net/SocketAppender$Connector;

    .line 375
    const-string v2, "Connection established. Exiting connector thread."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 376
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    .end local v1    # "socket":Ljava/net/Socket;
    :goto_1
    return-void

    .line 377
    .restart local v1    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0

    .end local v1    # "socket":Ljava/net/Socket;
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 385
    .restart local v1    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v3

    move-object v4, p0

    .local v4, "e":Ljava/lang/InterruptedException;
    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    .local v2, "e":Ljava/net/ConnectException;
    goto :goto_2

    .end local v2    # "e":Ljava/net/ConnectException;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    move-object v4, p0

    .restart local v4    # "e":Ljava/lang/InterruptedException;
    move-object v7, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v7

    .local v3, "e":Ljava/net/ConnectException;
    goto :goto_2

    .line 382
    .end local v3    # "e":Ljava/net/ConnectException;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    move-object v3, p0

    .local v3, "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 379
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    goto :goto_4

    .line 385
    .end local v1    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v4

    .restart local v1    # "socket":Ljava/net/Socket;
    .local v2, "e":Ljava/lang/InterruptedException;
    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    .local v3, "e":Ljava/io/IOException;
    .local v4, "e":Ljava/net/ConnectException;
    :goto_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Could not connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v6, v6, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ". Exception is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    move-object v3, v4

    goto/16 :goto_0

    .line 382
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/net/ConnectException;
    :catch_5
    move-exception v3

    .restart local v2    # "e":Ljava/lang/InterruptedException;
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .restart local v1    # "socket":Ljava/net/Socket;
    .local v2, "e":Ljava/net/ConnectException;
    .local v3, "e":Ljava/lang/InterruptedException;
    :goto_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Remote host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v5, v5, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " refused connection."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 384
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto/16 :goto_0

    .line 379
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v2    # "e":Ljava/net/ConnectException;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_6
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v1    # "socket":Ljava/net/Socket;
    :goto_4
    const-string v2, "Connector interrupted. Leaving loop."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 380
    return-void
.end method
