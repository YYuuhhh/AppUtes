.class public Lcz/msebera/android/httpclient/config/SocketConfig;
.super Ljava/lang/Object;
.source "SocketConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;


# instance fields
.field private final backlogSize:I

.field private final rcvBufSize:I

.field private final sndBufSize:I

.field private final soKeepAlive:Z

.field private final soLinger:I

.field private final soReuseAddress:Z

.field private final soTimeout:I

.field private final tcpNoDelay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->build()Lcz/msebera/android/httpclient/config/SocketConfig;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/config/SocketConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;

    return-void
.end method

.method constructor <init>(IZIZZIII)V
    .locals 0
    .param p1, "soTimeout"    # I
    .param p2, "soReuseAddress"    # Z
    .param p3, "soLinger"    # I
    .param p4, "soKeepAlive"    # Z
    .param p5, "tcpNoDelay"    # Z
    .param p6, "sndBufSize"    # I
    .param p7, "rcvBufSize"    # I
    .param p8, "backlogSize"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soTimeout:I

    .line 64
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soReuseAddress:Z

    .line 65
    iput p3, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soLinger:I

    .line 66
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soKeepAlive:Z

    .line 67
    iput-boolean p5, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->tcpNoDelay:Z

    .line 68
    iput p6, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->sndBufSize:I

    .line 69
    iput p7, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->rcvBufSize:I

    .line 70
    iput p8, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->backlogSize:I

    .line 71
    return-void
.end method

.method public static copy(Lcz/msebera/android/httpclient/config/SocketConfig;)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
    .locals 2
    .param p0, "config"    # Lcz/msebera/android/httpclient/config/SocketConfig;

    .line 210
    const-string v0, "Socket config"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    new-instance v0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;-><init>()V

    .line 212
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSoTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->setSoTimeout(I)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/SocketConfig;->isSoReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->setSoReuseAddress(Z)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSoLinger()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->setSoLinger(I)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/SocketConfig;->isSoKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->setSoKeepAlive(Z)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/SocketConfig;->isTcpNoDelay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->setTcpNoDelay(Z)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSndBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->setSndBufSize(I)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/SocketConfig;->getRcvBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->setRcvBufSize(I)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/SocketConfig;->getBacklogSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;->setBacklogSize(I)Lcz/msebera/android/httpclient/config/SocketConfig$Builder;

    move-result-object v0

    .line 211
    return-object v0
.end method

.method public static custom()Lcz/msebera/android/httpclient/config/SocketConfig$Builder;
    .locals 1

    .line 206
    new-instance v0, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/SocketConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected clone()Lcz/msebera/android/httpclient/config/SocketConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 187
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/config/SocketConfig;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/SocketConfig;->clone()Lcz/msebera/android/httpclient/config/SocketConfig;

    move-result-object v0

    return-object v0
.end method

.method public getBacklogSize()I
    .locals 1

    .line 182
    iget v0, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->backlogSize:I

    return v0
.end method

.method public getRcvBufSize()I
    .locals 1

    .line 169
    iget v0, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->rcvBufSize:I

    return v0
.end method

.method public getSndBufSize()I
    .locals 1

    .line 154
    iget v0, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->sndBufSize:I

    return v0
.end method

.method public getSoLinger()I
    .locals 1

    .line 111
    iget v0, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soLinger:I

    return v0
.end method

.method public getSoTimeout()I
    .locals 1

    .line 83
    iget v0, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soTimeout:I

    return v0
.end method

.method public isSoKeepAlive()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soKeepAlive:Z

    return v0
.end method

.method public isSoReuseAddress()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soReuseAddress:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->tcpNoDelay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[soTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    const-string v2, ", soReuseAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soReuseAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    const-string v2, ", soLinger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soLinger:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    const-string v2, ", soKeepAlive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->soKeepAlive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    const-string v2, ", tcpNoDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->tcpNoDelay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    const-string v2, ", sndBufSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->sndBufSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    const-string v2, ", rcvBufSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->rcvBufSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    const-string v2, ", backlogSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/config/SocketConfig;->backlogSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
