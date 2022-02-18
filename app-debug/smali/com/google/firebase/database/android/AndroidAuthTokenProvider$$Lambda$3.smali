.class final synthetic Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$3;
.super Ljava/lang/Object;
.source "AndroidAuthTokenProvider.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final arg$1:Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$3;->arg$1:Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)Lcom/google/android/gms/tasks/OnFailureListener;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$3;-><init>(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)V

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$Lambda$3;->arg$1:Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;

    invoke-static {v0, p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->lambda$getToken$2(Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;Ljava/lang/Exception;)V

    return-void
.end method
