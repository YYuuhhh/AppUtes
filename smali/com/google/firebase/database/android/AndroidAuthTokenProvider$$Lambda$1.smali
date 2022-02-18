.class final synthetic Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$1;
.super Ljava/lang/Object;
.source "AndroidAuthTokenProvider.java"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# instance fields
.field private final arg$1:Lcom/google/firebase/database/android/AndroidAuthTokenProvider;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/android/AndroidAuthTokenProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$1;->arg$1:Lcom/google/firebase/database/android/AndroidAuthTokenProvider;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/database/android/AndroidAuthTokenProvider;)Lcom/google/firebase/inject/Deferred$DeferredHandler;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$1;-><init>(Lcom/google/firebase/database/android/AndroidAuthTokenProvider;)V

    return-object v0
.end method


# virtual methods
.method public handle(Lcom/google/firebase/inject/Provider;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$1;->arg$1:Lcom/google/firebase/database/android/AndroidAuthTokenProvider;

    invoke-static {v0, p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->lambda$new$0(Lcom/google/firebase/database/android/AndroidAuthTokenProvider;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
