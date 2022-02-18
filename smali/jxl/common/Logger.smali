.class public abstract Ljxl/common/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput-object v0, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static final getLogger(Ljava/lang/Class;)Ljxl/common/Logger;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;

    .line 40
    sget-object v0, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Ljxl/common/Logger;->initializeLogger()V

    .line 45
    :cond_0
    sget-object v0, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    invoke-virtual {v0, p0}, Ljxl/common/Logger;->getLoggerImpl(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized initializeLogger()V
    .locals 6

    const-class v0, Ljxl/common/Logger;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Ljxl/common/Logger;->logger:Ljxl/common/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 55
    monitor-exit v0

    return-void

    .line 58
    :cond_0
    :try_start_1
    sget-object v1, Ljxl/common/log/LoggerName;->NAME:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .local v1, "loggerName":Ljava/lang/String;
    :try_start_2
    const-string v2, "logger"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 65
    if-nez v1, :cond_1

    .line 68
    sget-object v2, Ljxl/common/log/LoggerName;->NAME:Ljava/lang/String;

    move-object v1, v2

    .line 71
    :cond_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/common/Logger;

    sput-object v2, Ljxl/common/Logger;->logger:Ljxl/common/Logger;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/AccessControlException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :goto_0
    goto/16 :goto_1

    .line 91
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v3, Ljxl/common/log/SimpleLogger;

    invoke-direct {v3}, Ljxl/common/log/SimpleLogger;-><init>()V

    sput-object v3, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not instantiate logger "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using default"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_1

    .line 85
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 87
    .local v2, "e":Ljava/security/AccessControlException;
    new-instance v3, Ljxl/common/log/SimpleLogger;

    invoke-direct {v3}, Ljxl/common/log/SimpleLogger;-><init>()V

    sput-object v3, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not instantiate logger "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using default"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .end local v2    # "e":Ljava/security/AccessControlException;
    goto :goto_0

    .line 79
    :catch_2
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljxl/common/log/SimpleLogger;

    invoke-direct {v3}, Ljxl/common/log/SimpleLogger;-><init>()V

    sput-object v3, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not instantiate logger "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using default"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .end local v2    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 73
    :catch_3
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljxl/common/log/SimpleLogger;

    invoke-direct {v3}, Ljxl/common/log/SimpleLogger;-><init>()V

    sput-object v3, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not instantiate logger "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using default"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto/16 :goto_0

    .line 97
    :goto_1
    monitor-exit v0

    return-void

    .line 52
    .end local v1    # "loggerName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract debug(Ljava/lang/Object;)V
.end method

.method public abstract debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract error(Ljava/lang/Object;)V
.end method

.method public abstract error(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract fatal(Ljava/lang/Object;)V
.end method

.method public abstract fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method protected abstract getLoggerImpl(Ljava/lang/Class;)Ljxl/common/Logger;
.end method

.method public abstract info(Ljava/lang/Object;)V
.end method

.method public abstract info(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public setSuppressWarnings(Z)V
    .locals 0
    .param p1, "w"    # Z

    .line 172
    return-void
.end method

.method public abstract warn(Ljava/lang/Object;)V
.end method

.method public abstract warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method
