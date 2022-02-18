.class public Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestWriterFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory<",
        "Lcz/msebera/android/httpclient/HttpRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;


# instance fields
.field private final lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;-><init>(Lcz/msebera/android/httpclient/message/LineFormatter;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/message/LineFormatter;)V
    .locals 1
    .param p1, "lineFormatter"    # Lcz/msebera/android/httpclient/message/LineFormatter;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;

    .line 54
    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;)Lcz/msebera/android/httpclient/io/HttpMessageWriter;
    .locals 2
    .param p1, "buffer"    # Lcz/msebera/android/httpclient/io/SessionOutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionOutputBuffer;",
            ")",
            "Lcz/msebera/android/httpclient/io/HttpMessageWriter<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriter;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;

    invoke-direct {v0, p1, v1}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriter;-><init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;)V

    return-object v0
.end method
