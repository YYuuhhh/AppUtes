.class public Lcom/google/firebase/database/core/RepoManager;
.super Ljava/lang/Object;
.source "RepoManager.java"


# static fields
.field private static final instance:Lcom/google/firebase/database/core/RepoManager;


# instance fields
.field private final repos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/core/Repo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/google/firebase/database/core/RepoManager;

    invoke-direct {v0}, Lcom/google/firebase/database/core/RepoManager;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/RepoManager;->instance:Lcom/google/firebase/database/core/RepoManager;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/core/RepoManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/RepoManager;

    .line 25
    iget-object v0, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    return-object v0
.end method

.method public static clear()V
    .locals 1

    .line 81
    sget-object v0, Lcom/google/firebase/database/core/RepoManager;->instance:Lcom/google/firebase/database/core/RepoManager;

    invoke-direct {v0}, Lcom/google/firebase/database/core/RepoManager;->clearRepos()V

    .line 82
    return-void
.end method

.method private clearRepos()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 87
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createLocalRepo(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/firebase/database/core/Repo;
    .locals 5
    .param p1, "ctx"    # Lcom/google/firebase/database/core/Context;
    .param p2, "info"    # Lcom/google/firebase/database/core/RepoInfo;
    .param p3, "database"    # Lcom/google/firebase/database/FirebaseDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Context;->freeze()V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/google/firebase/database/core/RepoInfo;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "repoHash":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v2, "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firebase/database/core/Repo;>;"
    iget-object v3, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v2    # "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firebase/database/core/Repo;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 113
    .restart local v2    # "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firebase/database/core/Repo;>;"
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    new-instance v3, Lcom/google/firebase/database/core/Repo;

    invoke-direct {v3, p2, p1, p3}, Lcom/google/firebase/database/core/Repo;-><init>(Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/FirebaseDatabase;)V

    .line 115
    .local v3, "repo":Lcom/google/firebase/database/core/Repo;
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    monitor-exit v1

    return-object v3

    .line 118
    .end local v3    # "repo":Lcom/google/firebase/database/core/Repo;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "createLocalRepo() called for existing repo."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "repoHash":Ljava/lang/String;
    .end local p1    # "ctx":Lcom/google/firebase/database/core/Context;
    .end local p2    # "info":Lcom/google/firebase/database/core/RepoInfo;
    .end local p3    # "database":Lcom/google/firebase/database/FirebaseDatabase;
    throw v3

    .line 120
    .end local v2    # "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firebase/database/core/Repo;>;"
    .restart local v0    # "repoHash":Ljava/lang/String;
    .restart local p1    # "ctx":Lcom/google/firebase/database/core/Context;
    .restart local p2    # "info":Lcom/google/firebase/database/core/RepoInfo;
    .restart local p3    # "database":Lcom/google/firebase/database/FirebaseDatabase;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static createRepo(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/firebase/database/core/Repo;
    .locals 1
    .param p0, "ctx"    # Lcom/google/firebase/database/core/Context;
    .param p1, "info"    # Lcom/google/firebase/database/core/RepoInfo;
    .param p2, "database"    # Lcom/google/firebase/database/FirebaseDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/google/firebase/database/core/RepoManager;->instance:Lcom/google/firebase/database/core/RepoManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/database/core/RepoManager;->createLocalRepo(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/firebase/database/core/Repo;

    move-result-object v0

    return-object v0
.end method

.method private getLocalRepo(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/RepoInfo;)Lcom/google/firebase/database/core/Repo;
    .locals 4
    .param p1, "ctx"    # Lcom/google/firebase/database/core/Context;
    .param p2, "info"    # Lcom/google/firebase/database/core/RepoInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Context;->freeze()V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/google/firebase/database/core/RepoInfo;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "repoHash":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/database/core/DatabaseConfig;

    .line 96
    invoke-static {v2, p2, v3}, Lcom/google/firebase/database/InternalHelpers;->createDatabaseForTests(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/DatabaseConfig;)Lcom/google/firebase/database/FirebaseDatabase;

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Repo;

    monitor-exit v1

    return-object v2

    .line 100
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getRepo(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/RepoInfo;)Lcom/google/firebase/database/core/Repo;
    .locals 1
    .param p0, "ctx"    # Lcom/google/firebase/database/core/Context;
    .param p1, "info"    # Lcom/google/firebase/database/core/RepoInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/google/firebase/database/core/RepoManager;->instance:Lcom/google/firebase/database/core/RepoManager;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/core/RepoManager;->getLocalRepo(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/RepoInfo;)Lcom/google/firebase/database/core/Repo;

    move-result-object v0

    return-object v0
.end method

.method public static interrupt(Lcom/google/firebase/database/core/Context;)V
    .locals 1
    .param p0, "ctx"    # Lcom/google/firebase/database/core/Context;

    .line 47
    sget-object v0, Lcom/google/firebase/database/core/RepoManager;->instance:Lcom/google/firebase/database/core/RepoManager;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/RepoManager;->interruptInternal(Lcom/google/firebase/database/core/Context;)V

    .line 48
    return-void
.end method

.method public static interrupt(Lcom/google/firebase/database/core/Repo;)V
    .locals 1
    .param p0, "repo"    # Lcom/google/firebase/database/core/Repo;

    .line 51
    new-instance v0, Lcom/google/firebase/database/core/RepoManager$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/RepoManager$1;-><init>(Lcom/google/firebase/database/core/Repo;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method private interruptInternal(Lcom/google/firebase/database/core/Context;)V
    .locals 2
    .param p1, "ctx"    # Lcom/google/firebase/database/core/Context;

    .line 124
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Context;->getRunLoop()Lcom/google/firebase/database/core/RunLoop;

    move-result-object v0

    .line 125
    .local v0, "runLoop":Lcom/google/firebase/database/core/RunLoop;
    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Lcom/google/firebase/database/core/RepoManager$3;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/core/RepoManager$3;-><init>(Lcom/google/firebase/database/core/RepoManager;Lcom/google/firebase/database/core/Context;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    .line 145
    :cond_0
    return-void
.end method

.method public static resume(Lcom/google/firebase/database/core/Context;)V
    .locals 1
    .param p0, "ctx"    # Lcom/google/firebase/database/core/Context;

    .line 71
    sget-object v0, Lcom/google/firebase/database/core/RepoManager;->instance:Lcom/google/firebase/database/core/RepoManager;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/RepoManager;->resumeInternal(Lcom/google/firebase/database/core/Context;)V

    .line 72
    return-void
.end method

.method public static resume(Lcom/google/firebase/database/core/Repo;)V
    .locals 1
    .param p0, "repo"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    new-instance v0, Lcom/google/firebase/database/core/RepoManager$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/RepoManager$2;-><init>(Lcom/google/firebase/database/core/Repo;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method private resumeInternal(Lcom/google/firebase/database/core/Context;)V
    .locals 2
    .param p1, "ctx"    # Lcom/google/firebase/database/core/Context;

    .line 148
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Context;->getRunLoop()Lcom/google/firebase/database/core/RunLoop;

    move-result-object v0

    .line 149
    .local v0, "runLoop":Lcom/google/firebase/database/core/RunLoop;
    if-eqz v0, :cond_0

    .line 150
    new-instance v1, Lcom/google/firebase/database/core/RepoManager$4;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/core/RepoManager$4;-><init>(Lcom/google/firebase/database/core/RepoManager;Lcom/google/firebase/database/core/Context;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    .line 164
    :cond_0
    return-void
.end method
