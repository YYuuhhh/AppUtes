.class Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$1;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "RequestProtocolCompliance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->addContentTypeHeaderIfMissing(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 0
    .param p1, "this$0"    # Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;
    .param p2, "wrappedEntity"    # Lcz/msebera/android/httpclient/HttpEntity;

    .line 200
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$1;->this$0:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .locals 3

    .line 204
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeader;

    sget-object v1, Lcz/msebera/android/httpclient/entity/ContentType;->APPLICATION_OCTET_STREAM:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-direct {v0, v2, v1}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
