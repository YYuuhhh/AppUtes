.class public final Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;
.super Ljava/lang/Object;
.source "DefaultedHttpContext.java"

# interfaces
.implements Lcz/msebera/android/httpclient/protocol/HttpContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final defaults:Lcz/msebera/android/httpclient/protocol/HttpContext;

.field private final local:Lcz/msebera/android/httpclient/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 1
    .param p1, "local"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .param p2, "defaults"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "HTTP context"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->local:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 51
    iput-object p2, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->defaults:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 52
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->local:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 58
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->defaults:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 60
    :cond_0
    return-object v0
.end method

.method public getDefaults()Lcz/msebera/android/httpclient/protocol/HttpContext;
    .locals 1

    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->defaults:Lcz/msebera/android/httpclient/protocol/HttpContext;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->local:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->local:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "[local: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->local:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "defaults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;->defaults:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
