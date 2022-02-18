.class Lcom/google/firebase/database/core/utilities/Utilities$1;
.super Ljava/lang/Object;
.source "Utilities.java"

# interfaces
.implements Lcom/google/firebase/database/DatabaseReference$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/utilities/Utilities;->wrapOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/firebase/database/core/utilities/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/Utilities$1;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V
    .locals 2
    .param p1, "error"    # Lcom/google/firebase/database/DatabaseError;
    .param p2, "ref"    # Lcom/google/firebase/database/DatabaseReference;

    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Utilities$1;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toException()Lcom/google/firebase/database/DatabaseException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Utilities$1;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 257
    :goto_0
    return-void
.end method
