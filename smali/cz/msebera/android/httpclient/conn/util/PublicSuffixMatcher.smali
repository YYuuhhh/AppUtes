.class public final Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
.super Ljava/lang/Object;
.source "PublicSuffixMatcher.java"


# instance fields
.field private final exceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/conn/util/DomainType;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/conn/util/DomainType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/DomainType;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .param p1, "domainType"    # Lcz/msebera/android/httpclient/conn/util/DomainType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/conn/util/DomainType;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p2, "rules":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "Domain type"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string v0, "Domain suffix rules"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    .line 68
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, "rule":Ljava/lang/String;
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v1    # "rule":Ljava/lang/String;
    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    .line 72
    if-eqz p3, :cond_1

    .line 73
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "exception":Ljava/lang/String;
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v1    # "exception":Ljava/lang/String;
    goto :goto_1

    .line 77
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, "Domain suffix lists"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    .line 86
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;

    .line 87
    .local v1, "list":Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->getType()Lcz/msebera/android/httpclient/conn/util/DomainType;

    move-result-object v2

    .line 88
    .local v2, "domainType":Lcz/msebera/android/httpclient/conn/util/DomainType;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->getRules()Ljava/util/List;

    move-result-object v3

    .line 89
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 90
    .local v5, "rule":Ljava/lang/String;
    iget-object v6, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .end local v5    # "rule":Ljava/lang/String;
    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->getExceptions()Ljava/util/List;

    move-result-object v4

    .line 93
    .local v4, "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 94
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 95
    .local v6, "exception":Ljava/lang/String;
    iget-object v7, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v6    # "exception":Ljava/lang/String;
    goto :goto_2

    .line 98
    .end local v1    # "list":Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;
    .end local v2    # "domainType":Lcz/msebera/android/httpclient/conn/util/DomainType;
    .end local v3    # "rules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "rules":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcz/msebera/android/httpclient/conn/util/DomainType;->UNKNOWN:Lcz/msebera/android/httpclient/conn/util/DomainType;

    invoke-direct {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;-><init>(Lcz/msebera/android/httpclient/conn/util/DomainType;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 58
    return-void
.end method

.method private static hasEntry(Ljava/util/Map;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Z
    .locals 3
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "expectedType"    # Lcz/msebera/android/httpclient/conn/util/DomainType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/conn/util/DomainType;",
            ">;",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/conn/util/DomainType;",
            ")Z"
        }
    .end annotation

    .line 102
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 103
    return v0

    .line 105
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/util/DomainType;

    .line 106
    .local v1, "domainType":Lcz/msebera/android/httpclient/conn/util/DomainType;
    if-nez v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v1, p2}, Lcz/msebera/android/httpclient/conn/util/DomainType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private hasException(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Z
    .locals 1
    .param p1, "exception"    # Ljava/lang/String;
    .param p2, "expectedType"    # Lcz/msebera/android/httpclient/conn/util/DomainType;

    .line 114
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->hasEntry(Ljava/util/Map;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Z

    move-result v0

    return v0
.end method

.method private hasRule(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Z
    .locals 1
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "expectedType"    # Lcz/msebera/android/httpclient/conn/util/DomainType;

    .line 110
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->hasEntry(Ljava/util/Map;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDomainRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->getDomainRoot(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomainRoot(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Ljava/lang/String;
    .locals 8
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "expectedType"    # Lcz/msebera/android/httpclient/conn/util/DomainType;

    .line 139
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 140
    return-object v0

    .line 142
    :cond_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    return-object v0

    .line 145
    :cond_1
    const/4 v1, 0x0

    .line 146
    .local v1, "domainName":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "segment":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_7

    .line 150
    invoke-static {v2}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->hasException(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    return-object v2

    .line 154
    :cond_2
    invoke-static {v2}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->hasRule(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    goto :goto_2

    .line 158
    :cond_3
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 159
    .local v3, "nextdot":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v0

    .line 161
    .local v5, "nextSegment":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_5

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->hasRule(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 163
    goto :goto_2

    .line 166
    :cond_5
    if-eq v3, v4, :cond_6

    .line 167
    move-object v1, v2

    .line 169
    :cond_6
    move-object v2, v5

    .line 170
    .end local v3    # "nextdot":I
    .end local v5    # "nextSegment":Ljava/lang/String;
    goto :goto_0

    .line 171
    :cond_7
    :goto_2
    return-object v1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->matches(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Z
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "expectedType"    # Lcz/msebera/android/httpclient/conn/util/DomainType;

    .line 191
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 192
    return v0

    .line 194
    :cond_0
    nop

    .line 195
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 194
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->getDomainRoot(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/DomainType;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "domainRoot":Ljava/lang/String;
    if-nez v1, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method
