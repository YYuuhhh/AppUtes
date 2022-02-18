.class public final Lorg/apache/log4j/helpers/ThreadLocalMap;
.super Ljava/lang/InheritableThreadLocal;
.source "ThreadLocalMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "parentValue"    # Ljava/lang/Object;

    .line 34
    move-object v0, p1

    check-cast v0, Ljava/util/Hashtable;

    .line 35
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 38
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
