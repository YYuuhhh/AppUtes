.class public Lcom/google/firebase/database/FirebaseDatabase;
.super Ljava/lang/Object;
.source "FirebaseDatabase.java"


# static fields
.field private static final SDK_VERSION:Ljava/lang/String; = "19.7.0"


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final config:Lcom/google/firebase/database/core/DatabaseConfig;

.field private emulatorSettings:Lcom/google/firebase/emulators/EmulatedServiceSettings;

.field private repo:Lcom/google/firebase/database/core/Repo;

.field private final repoInfo:Lcom/google/firebase/database/core/RepoInfo;


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/DatabaseConfig;)V
    .locals 0
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p2, "repoInfo"    # Lcom/google/firebase/database/core/RepoInfo;
    .param p3, "config"    # Lcom/google/firebase/database/core/DatabaseConfig;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/google/firebase/database/FirebaseDatabase;->app:Lcom/google/firebase/FirebaseApp;

    .line 142
    iput-object p2, p0, Lcom/google/firebase/database/FirebaseDatabase;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    .line 143
    iput-object p3, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/firebase/database/core/Repo;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/FirebaseDatabase;

    .line 39
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    return-object v0
.end method

.method private assertUnfrozen(Ljava/lang/String;)V
    .locals 3
    .param p1, "methodCalled"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    if-nez v0, :cond_0

    .line 338
    return-void

    .line 332
    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calls to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() must be made before any other usage of FirebaseDatabase instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createForTests(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/DatabaseConfig;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "repoInfo"    # Lcom/google/firebase/database/core/RepoInfo;
    .param p2, "config"    # Lcom/google/firebase/database/core/DatabaseConfig;

    .line 134
    new-instance v0, Lcom/google/firebase/database/FirebaseDatabase;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/database/FirebaseDatabase;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/DatabaseConfig;)V

    .line 135
    .local v0, "db":Lcom/google/firebase/database/FirebaseDatabase;
    invoke-direct {v0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    .line 136
    return-object v0
.end method

.method private declared-synchronized ensureRepo()V
    .locals 2

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabase;->emulatorSettings:Lcom/google/firebase/emulators/EmulatedServiceSettings;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/RepoInfo;->applyEmulatorSettings(Lcom/google/firebase/emulators/EmulatedServiceSettings;)V

    .line 343
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabase;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    invoke-static {v0, v1, p0}, Lcom/google/firebase/database/core/RepoManager;->createRepo(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/firebase/database/core/Repo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .end local p0    # "this":Lcom/google/firebase/database/FirebaseDatabase;
    :cond_0
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/google/firebase/database/FirebaseDatabase;
    .locals 3

    .line 56
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 57
    .local v0, "instance":Lcom/google/firebase/FirebaseApp;
    if-eqz v0, :cond_0

    .line 60
    invoke-static {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    return-object v1

    .line 58
    :cond_0
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    const-string v2, "You must call FirebaseApp.initialize() first."

    invoke-direct {v1, v2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 3
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;

    .line 86
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getDatabaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "databaseUrl":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-default-rtdb.firebaseio.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    const-string v2, "Failed to get FirebaseDatabase instance: Can\'t determine Firebase Database URL. Be sure to include a Project ID in your configuration."

    invoke-direct {v1, v2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 6
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "url"    # Ljava/lang/String;

    const-class v0, Lcom/google/firebase/database/FirebaseDatabase;

    monitor-enter v0

    .line 108
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    const-string v1, "Provided FirebaseApp must not be null."

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-class v1, Lcom/google/firebase/database/FirebaseDatabaseComponent;

    invoke-virtual {p0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/FirebaseDatabaseComponent;

    .line 116
    .local v1, "component":Lcom/google/firebase/database/FirebaseDatabaseComponent;
    const-string v2, "Firebase Database component is not present."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Utilities;->parseUrl(Ljava/lang/String;)Lcom/google/firebase/database/core/utilities/ParsedUrl;

    move-result-object v2

    .line 119
    .local v2, "parsedUrl":Lcom/google/firebase/database/core/utilities/ParsedUrl;
    iget-object v3, v2, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, v2, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    invoke-virtual {v1, v3}, Lcom/google/firebase/database/FirebaseDatabaseComponent;->get(Lcom/google/firebase/database/core/RepoInfo;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v3

    .line 120
    :cond_0
    :try_start_1
    new-instance v3, Lcom/google/firebase/database/DatabaseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Specified Database URL \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is invalid. It should point to the root of a Firebase Database but it includes a path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    .line 125
    invoke-virtual {v5}, Lcom/google/firebase/database/core/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    .end local v1    # "component":Lcom/google/firebase/database/FirebaseDatabaseComponent;
    .end local v2    # "parsedUrl":Lcom/google/firebase/database/core/utilities/ParsedUrl;
    :cond_1
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    const-string v2, "Failed to get FirebaseDatabase instance: Specify DatabaseURL within FirebaseApp or from your getInstance() call."

    invoke-direct {v1, v2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local p0    # "app":Lcom/google/firebase/FirebaseApp;
    .end local p1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 72
    .local v0, "instance":Lcom/google/firebase/FirebaseApp;
    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0, p0}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    return-object v1

    .line 73
    :cond_0
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    const-string v2, "You must call FirebaseApp.initialize() first."

    invoke-direct {v1, v2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 327
    const-string v0, "19.7.0"

    return-object v0
.end method


# virtual methods
.method public getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->app:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method getConfig()Lcom/google/firebase/database/core/DatabaseConfig;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    return-object v0
.end method

.method public getReference()Lcom/google/firebase/database/DatabaseReference;
    .locals 3

    .line 163
    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    .line 164
    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v0
.end method

.method public getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    .line 177
    if-eqz p1, :cond_0

    .line 181
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/google/firebase/database/core/Path;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "childPath":Lcom/google/firebase/database/core/Path;
    new-instance v1, Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v1

    .line 178
    .end local v0    # "childPath":Lcom/google/firebase/database/core/Path;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'pathString\' in FirebaseDatabase.getReference()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReferenceFromUrl(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    .line 200
    if-eqz p1, :cond_1

    .line 205
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Utilities;->parseUrl(Ljava/lang/String;)Lcom/google/firebase/database/core/utilities/ParsedUrl;

    move-result-object v0

    .line 206
    .local v0, "parsedUrl":Lcom/google/firebase/database/core/utilities/ParsedUrl;
    iget-object v1, v0, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    iget-object v2, p0, Lcom/google/firebase/database/FirebaseDatabase;->emulatorSettings:Lcom/google/firebase/emulators/EmulatedServiceSettings;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/RepoInfo;->applyEmulatorSettings(Lcom/google/firebase/emulators/EmulatedServiceSettings;)V

    .line 208
    iget-object v1, v0, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    iget-object v1, v1, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Repo;->getRepoInfo()Lcom/google/firebase/database/core/RepoInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v3, v0, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v1

    .line 209
    :cond_0
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") passed to getReference().  URL was expected to match configured Database URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    invoke-virtual {p0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/DatabaseReference;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    .end local v0    # "parsedUrl":Lcom/google/firebase/database/core/utilities/ParsedUrl;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'url\' in FirebaseDatabase.getReferenceFromUrl()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public goOffline()V
    .locals 1

    .line 254
    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    .line 255
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/RepoManager;->interrupt(Lcom/google/firebase/database/core/Repo;)V

    .line 256
    return-void
.end method

.method public goOnline()V
    .locals 1

    .line 246
    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    .line 247
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/RepoManager;->resume(Lcom/google/firebase/database/core/Repo;)V

    .line 248
    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 2

    .line 231
    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    .line 232
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v1, Lcom/google/firebase/database/FirebaseDatabase$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/FirebaseDatabase$1;-><init>(Lcom/google/firebase/database/FirebaseDatabase;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method public declared-synchronized setLogLevel(Lcom/google/firebase/database/Logger$Level;)V
    .locals 1
    .param p1, "logLevel"    # Lcom/google/firebase/database/Logger$Level;

    monitor-enter p0

    .line 267
    :try_start_0
    const-string v0, "setLogLevel"

    invoke-direct {p0, v0}, Lcom/google/firebase/database/FirebaseDatabase;->assertUnfrozen(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/DatabaseConfig;->setLogLevel(Lcom/google/firebase/database/Logger$Level;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 266
    .end local p0    # "this":Lcom/google/firebase/database/FirebaseDatabase;
    .end local p1    # "logLevel":Lcom/google/firebase/database/Logger$Level;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPersistenceCacheSizeBytes(J)V
    .locals 1
    .param p1, "cacheSizeInBytes"    # J

    monitor-enter p0

    .line 303
    :try_start_0
    const-string v0, "setPersistenceCacheSizeBytes"

    invoke-direct {p0, v0}, Lcom/google/firebase/database/FirebaseDatabase;->assertUnfrozen(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/core/DatabaseConfig;->setPersistenceCacheSizeBytes(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 302
    .end local p0    # "this":Lcom/google/firebase/database/FirebaseDatabase;
    .end local p1    # "cacheSizeInBytes":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPersistenceEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    monitor-enter p0

    .line 285
    :try_start_0
    const-string v0, "setPersistenceEnabled"

    invoke-direct {p0, v0}, Lcom/google/firebase/database/FirebaseDatabase;->assertUnfrozen(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/DatabaseConfig;->setPersistenceEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 284
    .end local p0    # "this":Lcom/google/firebase/database/FirebaseDatabase;
    .end local p1    # "isEnabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public useEmulator(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 316
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/google/firebase/emulators/EmulatedServiceSettings;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/emulators/EmulatedServiceSettings;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->emulatorSettings:Lcom/google/firebase/emulators/EmulatedServiceSettings;

    .line 322
    return-void

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call useEmulator() after instance has already been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
