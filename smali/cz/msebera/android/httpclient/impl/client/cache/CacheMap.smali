.class final Lcz/msebera/android/httpclient/impl/client/cache/CacheMap;
.super Ljava/util/LinkedHashMap;
.source "CacheMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b8d9edd67bb1cbfL


# instance fields
.field private final maxEntries:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "maxEntries"    # I

    .line 41
    const/16 v0, 0x14

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 42
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheMap;->maxEntries:I

    .line 43
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;",
            ">;)Z"
        }
    .end annotation

    .line 47
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;>;"
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheMap;->size()I

    move-result v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheMap;->maxEntries:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
