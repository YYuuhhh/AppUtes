.class public Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixListParser;
.super Ljava/lang/Object;
.source "PublicSuffixListParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final filter:Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;

.field private final parser:Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;)V
    .locals 1
    .param p1, "filter"    # Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixListParser;->filter:Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;

    .line 53
    new-instance v0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixListParser;->parser:Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;

    .line 54
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixListParser;->parser:Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;->parse(Ljava/io/Reader;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;

    move-result-object v0

    .line 66
    .local v0, "suffixList":Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixListParser;->filter:Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->setPublicSuffixes(Ljava/util/Collection;)V

    .line 67
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixListParser;->filter:Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->getExceptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->setExceptions(Ljava/util/Collection;)V

    .line 68
    return-void
.end method
