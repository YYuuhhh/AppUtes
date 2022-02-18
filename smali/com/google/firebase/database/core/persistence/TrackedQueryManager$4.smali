.class Lcom/google/firebase/database/core/persistence/TrackedQueryManager$4;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/persistence/TrackedQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/Predicate<",
        "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/google/firebase/database/core/persistence/TrackedQuery;)Z
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 69
    invoke-static {}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->access$000()Lcom/google/firebase/database/core/utilities/Predicate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 66
    check-cast p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$4;->evaluate(Lcom/google/firebase/database/core/persistence/TrackedQuery;)Z

    move-result p1

    return p1
.end method
