.class public final Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;
.super Ljava/lang/Object;
.source "PublicSuffixList.java"


# instance fields
.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcz/msebera/android/httpclient/conn/util/DomainType;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/DomainType;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Lcz/msebera/android/httpclient/conn/util/DomainType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/conn/util/DomainType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "Domain type"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/util/DomainType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->type:Lcz/msebera/android/httpclient/conn/util/DomainType;

    .line 57
    const-string v0, "Domain suffix rules"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->rules:Ljava/util/List;

    .line 58
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->exceptions:Ljava/util/List;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcz/msebera/android/httpclient/conn/util/DomainType;->UNKNOWN:Lcz/msebera/android/httpclient/conn/util/DomainType;

    invoke-direct {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;-><init>(Lcz/msebera/android/httpclient/conn/util/DomainType;Ljava/util/List;Ljava/util/List;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->exceptions:Ljava/util/List;

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->rules:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcz/msebera/android/httpclient/conn/util/DomainType;
    .locals 1

    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->type:Lcz/msebera/android/httpclient/conn/util/DomainType;

    return-object v0
.end method
