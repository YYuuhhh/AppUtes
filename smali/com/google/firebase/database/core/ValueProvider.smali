.class abstract Lcom/google/firebase/database/core/ValueProvider;
.super Ljava/lang/Object;
.source "ValueProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;,
        Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/ValueProvider;
.end method

.method public abstract node()Lcom/google/firebase/database/snapshot/Node;
.end method
