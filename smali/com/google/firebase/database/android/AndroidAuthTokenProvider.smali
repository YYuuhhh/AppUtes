.class public Lcom/google/firebase/database/android/AndroidAuthTokenProvider;
.super Ljava/lang/Object;
.source "AndroidAuthTokenProvider.java"

# interfaces
.implements Lcom/google/firebase/database/core/AuthTokenProvider;


# instance fields
.field private final deferredAuthProvider:Lcom/google/firebase/inject/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final internalAuth:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/inject/Deferred;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "deferredAuthProvider":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/auth/internal/InternalAuthProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->deferredAuthProvider:Lcom/google/firebase/inject/Deferred;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->internalAuth:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    invoke-static {p0}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/database/android/AndroidAuthTokenProvider;)Lcom/google/firebase/inject/Deferred$DeferredHandler;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    .line 37
    return-void
.end method

.method private static isUnauthenticatedUsage(Ljava/lang/Exception;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .line 81
    instance-of v0, p0, Lcom/google/firebase/FirebaseApiNotAvailableException;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$addTokenChangeListener$3(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 1
    .param p0, "tokenListener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;
    .param p1, "tokenResult"    # Lcom/google/firebase/internal/InternalTokenResult;

    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/internal/InternalTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;->onTokenChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$4(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 1
    .param p0, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "tokenListener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;
    .param p2, "tokenResult"    # Lcom/google/firebase/internal/InternalTokenResult;

    .line 71
    invoke-static {p1, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$6;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$5(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;Lcom/google/firebase/inject/Provider;)V
    .locals 2
    .param p0, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "tokenListener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;
    .param p2, "provider"    # Lcom/google/firebase/inject/Provider;

    .line 68
    invoke-interface {p2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-static {p0, p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$5;->lambdaFactory$(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)Lcom/google/firebase/auth/internal/IdTokenListener;

    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->addIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V

    .line 68
    return-void
.end method

.method static synthetic lambda$getToken$1(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;Lcom/google/firebase/auth/GetTokenResult;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;
    .param p1, "result"    # Lcom/google/firebase/auth/GetTokenResult;

    .line 47
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getToken$2(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 50
    invoke-static {p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->isUnauthenticatedUsage(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onError(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/google/firebase/database/android/AndroidAuthTokenProvider;Lcom/google/firebase/inject/Provider;)V
    .locals 2
    .param p0, "this"    # Lcom/google/firebase/database/android/AndroidAuthTokenProvider;
    .param p1, "authProvider"    # Lcom/google/firebase/inject/Provider;

    .line 36
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->internalAuth:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .locals 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "tokenListener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;

    .line 65
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->deferredAuthProvider:Lcom/google/firebase/inject/Deferred;

    invoke-static {p1, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$4;->lambdaFactory$(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)Lcom/google/firebase/inject/Deferred$DeferredHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    .line 73
    return-void
.end method

.method public getToken(ZLcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)V
    .locals 4
    .param p1, "forceRefresh"    # Z
    .param p2, "listener"    # Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;

    .line 41
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->internalAuth:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 43
    .local v0, "authProvider":Lcom/google/firebase/auth/internal/InternalAuthProvider;
    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 46
    .local v1, "getTokenResult":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/GetTokenResult;>;"
    invoke-static {p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-static {p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$3;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 57
    .end local v1    # "getTokenResult":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/GetTokenResult;>;"
    goto :goto_0

    .line 58
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void
.end method

.method public removeTokenChangeListener(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .locals 0
    .param p1, "tokenListener"    # Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;

    .line 78
    return-void
.end method
