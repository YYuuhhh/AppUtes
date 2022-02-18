.class public Lorg/apache/log4j/NDC;
.super Ljava/lang/Object;
.source "NDC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/NDC$DiagnosticContext;
    }
.end annotation


# static fields
.field static final REAP_THRESHOLD:I = 0x5

.field static ht:Ljava/util/Hashtable;

.field static pushCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    .line 115
    const/4 v0, 0x0

    sput v0, Lorg/apache/log4j/NDC;->pushCounter:I

    .line 113
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 2

    .line 152
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 153
    .local v0, "stack":Ljava/util/Stack;
    if-eqz v0, :cond_0

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 155
    .end local v0    # "stack":Ljava/util/Stack;
    :cond_0
    return-void
.end method

.method public static cloneStack()Ljava/util/Stack;
    .locals 2

    .line 175
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 176
    .local v0, "stack":Ljava/util/Stack;
    if-nez v0, :cond_0

    .line 177
    const/4 v1, 0x0

    return-object v1

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    return-object v1
.end method

.method public static get()Ljava/lang/String;
    .locals 2

    .line 219
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 220
    .local v0, "s":Ljava/util/Stack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v1, v1, Lorg/apache/log4j/NDC$DiagnosticContext;->fullMessage:Ljava/lang/String;

    return-object v1

    .line 223
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getCurrentStack()Ljava/util/Stack;
    .locals 2

    .line 133
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDepth()I
    .locals 2

    .line 235
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 236
    .local v0, "stack":Ljava/util/Stack;
    if-nez v0, :cond_0

    .line 237
    const/4 v1, 0x0

    return v1

    .line 239
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    return v1
.end method

.method public static inherit(Ljava/util/Stack;)V
    .locals 2
    .param p0, "stack"    # Ljava/util/Stack;

    .line 207
    if-eqz p0, :cond_0

    .line 208
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_0
    return-void
.end method

.method private static lazyRemove()V
    .locals 6

    .line 245
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    monitor-enter v0

    .line 254
    const/4 v1, 0x0

    :try_start_0
    sget v2, Lorg/apache/log4j/NDC;->pushCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/apache/log4j/NDC;->pushCounter:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    .line 255
    monitor-exit v0

    return-void

    .line 257
    :cond_1
    const/4 v2, 0x0

    sput v2, Lorg/apache/log4j/NDC;->pushCounter:I

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "misses":I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v3

    .line 262
    .local v1, "v":Ljava/util/Vector;
    :try_start_1
    sget-object v3, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 267
    .local v3, "enumeration":Ljava/util/Enumeration;
    nop

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    if-le v2, v4, :cond_2

    goto :goto_1

    .line 268
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 269
    .local v4, "t":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_3
    const/4 v2, 0x0

    .line 273
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    .end local v2    # "misses":I
    .end local v3    # "enumeration":Ljava/util/Enumeration;
    .end local v4    # "t":Ljava/lang/Thread;
    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 279
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v2, :cond_5

    .line 285
    .end local v0    # "i":I
    .end local v1    # "v":Ljava/util/Vector;
    .end local v2    # "size":I
    return-void

    .line 280
    .restart local v0    # "i":I
    .restart local v1    # "v":Ljava/util/Vector;
    .restart local v2    # "size":I
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    .line 281
    .local v3, "t":Ljava/lang/Thread;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Lazy NDC removal for thread ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 283
    sget-object v4, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .end local v3    # "t":Ljava/lang/Thread;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 276
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v2

    goto :goto_3

    .end local v1    # "v":Ljava/util/Vector;
    :catchall_1
    move-exception v2

    .restart local v1    # "v":Ljava/util/Vector;
    :goto_3
    monitor-exit v0

    throw v2
.end method

.method public static peek()Ljava/lang/String;
    .locals 2

    .line 320
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 321
    .local v0, "stack":Ljava/util/Stack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v1, v1, Lorg/apache/log4j/NDC$DiagnosticContext;->message:Ljava/lang/String;

    return-object v1

    .line 324
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public static pop()Ljava/lang/String;
    .locals 2

    .line 300
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 301
    .local v0, "stack":Ljava/util/Stack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v1, v1, Lorg/apache/log4j/NDC$DiagnosticContext;->message:Ljava/lang/String;

    return-object v1

    .line 304
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public static push(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .line 337
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 339
    .local v0, "stack":Ljava/util/Stack;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 340
    new-instance v2, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v2, p0, v1}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    move-object v1, v2

    .line 341
    .local v1, "dc":Lorg/apache/log4j/NDC$DiagnosticContext;
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move-object v0, v2

    .line 342
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 343
    .local v2, "key":Ljava/lang/Thread;
    sget-object v3, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 345
    .end local v1    # "dc":Lorg/apache/log4j/NDC$DiagnosticContext;
    .end local v2    # "key":Ljava/lang/Thread;
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    new-instance v2, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v2, p0, v1}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    move-object v1, v2

    .line 347
    .restart local v1    # "dc":Lorg/apache/log4j/NDC$DiagnosticContext;
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 349
    .end local v1    # "dc":Lorg/apache/log4j/NDC$DiagnosticContext;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/NDC$DiagnosticContext;

    .line 350
    .local v1, "parent":Lorg/apache/log4j/NDC$DiagnosticContext;
    new-instance v2, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v2, p0, v1}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .end local v0    # "stack":Ljava/util/Stack;
    .end local v1    # "parent":Lorg/apache/log4j/NDC$DiagnosticContext;
    :goto_0
    return-void
.end method

.method public static remove()V
    .locals 2

    .line 376
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-static {}, Lorg/apache/log4j/NDC;->lazyRemove()V

    .line 380
    return-void
.end method

.method public static setMaxDepth(I)V
    .locals 2
    .param p0, "maxDepth"    # I

    .line 412
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 413
    .local v0, "stack":Ljava/util/Stack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 414
    invoke-virtual {v0, p0}, Ljava/util/Vector;->setSize(I)V

    .line 415
    .end local v0    # "stack":Ljava/util/Stack;
    :cond_0
    return-void
.end method
