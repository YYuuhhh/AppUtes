.class Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;
.super Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;
.source "HttpStrictMultipart.java"


# instance fields
.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;>;"
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 51
    iput-object p3, p0, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;->parts:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method protected formatMultipartHeader(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "part"    # Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getHeader()Lcz/msebera/android/httpclient/entity/mime/Header;

    move-result-object v0

    .line 66
    .local v0, "header":Lcz/msebera/android/httpclient/entity/mime/Header;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/entity/mime/Header;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    .line 67
    .local v2, "field":Lcz/msebera/android/httpclient/entity/mime/MinimalField;
    invoke-static {v2, p2}, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;->writeField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;Ljava/io/OutputStream;)V

    .line 68
    .end local v2    # "field":Lcz/msebera/android/httpclient/entity/mime/MinimalField;
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;->parts:Ljava/util/List;

    return-object v0
.end method
