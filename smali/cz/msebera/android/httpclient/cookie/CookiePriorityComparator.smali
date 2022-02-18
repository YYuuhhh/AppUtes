.class public Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;
.super Ljava/lang/Object;
.source "CookiePriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcz/msebera/android/httpclient/cookie/Cookie;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;->INSTANCE:Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPathLength(Lcz/msebera/android/httpclient/cookie/Cookie;)I
    .locals 2
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 50
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method


# virtual methods
.method public compare(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/Cookie;)I
    .locals 9
    .param p1, "c1"    # Lcz/msebera/android/httpclient/cookie/Cookie;
    .param p2, "c2"    # Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 56
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;->getPathLength(Lcz/msebera/android/httpclient/cookie/Cookie;)I

    move-result v0

    .line 57
    .local v0, "l1":I
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;->getPathLength(Lcz/msebera/android/httpclient/cookie/Cookie;)I

    move-result v1

    .line 59
    .local v1, "l2":I
    sub-int v2, v1, v0

    .line 60
    .local v2, "result":I
    if-nez v2, :cond_0

    instance-of v3, p1, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    if-eqz v3, :cond_0

    .line 61
    move-object v3, p1

    check-cast v3, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->getCreationDate()Ljava/util/Date;

    move-result-object v3

    .line 62
    .local v3, "d1":Ljava/util/Date;
    move-object v4, p2

    check-cast v4, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->getCreationDate()Ljava/util/Date;

    move-result-object v4

    .line 63
    .local v4, "d2":Ljava/util/Date;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    return v5

    .line 67
    .end local v3    # "d1":Ljava/util/Date;
    .end local v4    # "d2":Ljava/util/Date;
    :cond_0
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lcz/msebera/android/httpclient/cookie/Cookie;

    check-cast p2, Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;->compare(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/Cookie;)I

    move-result p1

    return p1
.end method
