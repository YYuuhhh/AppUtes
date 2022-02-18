.class final synthetic Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$5;
.super Ljava/lang/Object;
.source "AndroidAuthTokenProvider.java"

# interfaces
.implements Lcom/google/firebase/auth/internal/IdTokenListener;


# instance fields
.field private final arg$1:Ljava/util/concurrent/ExecutorService;

.field private final arg$2:Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$5;->arg$1:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$5;->arg$2:Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)Lcom/google/firebase/auth/internal/IdTokenListener;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$5;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$5;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V

    return-object v0
.end method


# virtual methods
.method public onIdTokenChanged(Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$5;->arg$1:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$5;->arg$2:Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->lambda$addTokenChangeListener$4(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V

    return-void
.end method
