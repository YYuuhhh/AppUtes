.class public final Lcom/google/firebase/database/core/utilities/ParsedUrl;
.super Ljava/lang/Object;
.source "ParsedUrl.java"


# instance fields
.field public path:Lcom/google/firebase/database/core/Path;

.field public repoInfo:Lcom/google/firebase/database/core/RepoInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 27
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;

    .line 32
    .local v1, "parsedUrl":Lcom/google/firebase/database/core/utilities/ParsedUrl;
    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    iget-object v3, v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/RepoInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    iget-object v2, v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 28
    .end local v1    # "parsedUrl":Lcom/google/firebase/database/core/utilities/ParsedUrl;
    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/RepoInfo;->hashCode()I

    move-result v0

    .line 39
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 40
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
