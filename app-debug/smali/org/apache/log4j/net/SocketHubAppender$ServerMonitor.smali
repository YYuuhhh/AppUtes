.class Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;
.super Ljava/lang/Object;
.source "SocketHubAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/net/SocketHubAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerMonitor"
.end annotation


# instance fields
.field private keepRunning:Z

.field private monitorThread:Ljava/lang/Thread;

.field private oosList:Ljava/util/Vector;

.field private port:I

.field private final synthetic this$0:Lorg/apache/log4j/net/SocketHubAppender;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/net/SocketHubAppender;ILjava/util/Vector;)V
    .locals 2
    .param p1, "this$0"    # Lorg/apache/log4j/net/SocketHubAppender;
    .param p2, "_port"    # I
    .param p3, "_oosList"    # Ljava/util/Vector;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    .line 287
    iput p2, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    .line 288
    iput-object p3, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->oosList:Ljava/util/Vector;

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    .line 290
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    .line 291
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 292
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 293
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "exception setting timeout, shutting down server socket."

    .line 322
    const/4 v1, 0x0

    .line 324
    .local v1, "serverSocket":Ljava/net/ServerSocket;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V

    move-object v1, v3

    .line 325
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 326
    nop

    .line 335
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    nop

    .line 342
    const/4 v0, 0x0

    move-object v3, v0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_1

    .line 376
    nop

    .line 384
    nop

    .line 380
    :try_start_3
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 381
    goto :goto_1

    .line 382
    :catch_0
    move-exception v0

    .line 384
    :goto_1
    nop

    .line 376
    nop

    .line 386
    .end local v1    # "serverSocket":Ljava/net/ServerSocket;
    return-void

    .line 343
    .restart local v1    # "serverSocket":Ljava/net/ServerSocket;
    :cond_1
    const/4 v4, 0x0

    .line 345
    .local v4, "socket":Ljava/net/Socket;
    :try_start_4
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v5

    .line 346
    goto :goto_2

    .line 355
    :catch_1
    move-exception v5

    .local v0, "e":Ljava/io/InterruptedIOException;
    .local v3, "e":Ljava/net/SocketException;
    .local v5, "e":Ljava/io/IOException;
    :try_start_5
    const-string v6, "exception accepting socket."

    invoke-static {v6, v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 351
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v3    # "e":Ljava/net/SocketException;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    .restart local v3    # "e":Ljava/net/SocketException;
    const-string v5, "exception accepting socket, shutting down server socket."

    invoke-static {v5, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    iput-boolean v2, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 353
    goto :goto_2

    .line 347
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v3    # "e":Ljava/net/SocketException;
    :catch_3
    move-exception v0

    .line 349
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    nop

    .line 359
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :goto_2
    if-eqz v4, :cond_0

    .line 361
    :try_start_6
    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 362
    .local v0, "remoteAddress":Ljava/net/InetAddress;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "accepting connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 366
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v5

    .line 369
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    iget-object v5, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->oosList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 370
    .end local v0    # "remoteAddress":Ljava/net/InetAddress;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 372
    :catch_4
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    const-string v5, "exception creating output stream on socket."

    invoke-static {v5, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 379
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 338
    :catch_5
    move-exception v2

    .local v2, "e":Ljava/net/SocketException;
    invoke-static {v0, v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 339
    nop

    .line 386
    .end local v2    # "e":Ljava/net/SocketException;
    nop

    .line 380
    :try_start_8
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 381
    goto :goto_3

    .line 382
    :catch_6
    move-exception v0

    .line 384
    :goto_3
    move-object v0, v2

    .line 339
    .local v0, "e":Ljava/net/SocketException;
    return-void

    .line 384
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_4
    nop

    .line 380
    :try_start_9
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 381
    goto :goto_5

    .line 382
    :catch_7
    move-exception v2

    .line 384
    :goto_5
    nop

    .line 379
    throw v0

    .line 328
    :catch_8
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v0, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    iput-boolean v2, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    .line 330
    return-void
.end method

.method public declared-synchronized stopMonitor()V
    .locals 1

    monitor-enter p0

    .line 301
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "server monitor thread shutting down"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    goto :goto_0

    .line 307
    .end local p0    # "this":Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;
    :catch_0
    move-exception v0

    .line 312
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    .line 313
    const-string v0, "server monitor thread shut down"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    :cond_0
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
