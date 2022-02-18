.class abstract Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;
.super Ljava/lang/Object;
.source "AbstractMultipartForm.java"


# static fields
.field private static final CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private static final FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private static final TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;


# instance fields
.field final boundary:Ljava/lang/String;

.field final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, ": "

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    .line 93
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    .line 94
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "boundary"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "boundary"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string v0, "Multipart boundary"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->charset:Ljava/nio/charset/Charset;

    .line 110
    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->boundary:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "string"    # Ljava/lang/String;

    .line 53
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    .local v0, "encoded":Ljava/nio/ByteBuffer;
    new-instance v1, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    .line 55
    .local v1, "bab":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    .line 56
    return-object v1
.end method

.method private static writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "b"    # Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    .line 73
    .local v0, "b":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 74
    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-static {p1, p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    .line 67
    .local v0, "b":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 68
    return-void
.end method

.method protected static writeField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "field"    # Lcz/msebera/android/httpclient/entity/mime/MinimalField;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 79
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 80
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 81
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 82
    return-void
.end method

.method protected static writeField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "field"    # Lcz/msebera/android/httpclient/entity/mime/MinimalField;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 87
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 88
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 89
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 90
    return-void
.end method


# virtual methods
.method doWriteTo(Ljava/io/OutputStream;Z)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "writeContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->charset:Ljava/nio/charset/Charset;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->boundary:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    .line 124
    .local v0, "boundaryEncoded":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->getBodyParts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;

    .line 125
    .local v2, "part":Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
    sget-object v3, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 126
    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 127
    sget-object v3, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 129
    invoke-virtual {p0, v2, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->formatMultipartHeader(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V

    .line 131
    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 133
    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getBody()Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    move-result-object v4

    invoke-interface {v4, p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->writeTo(Ljava/io/OutputStream;)V

    .line 136
    :cond_0
    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 137
    .end local v2    # "part":Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
    goto :goto_0

    .line 138
    :cond_1
    sget-object v1, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v1, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 139
    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 140
    invoke-static {v1, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 141
    sget-object v1, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v1, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 142
    return-void
.end method

.method protected abstract formatMultipartHeader(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBodyParts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end method

.method public getTotalLength()J
    .locals 11

    .line 175
    const-wide/16 v0, 0x0

    .line 176
    .local v0, "contentLen":J
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->getBodyParts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;

    .line 177
    .local v3, "part":Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getBody()Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    move-result-object v6

    .line 178
    .local v6, "body":Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    invoke-interface {v6}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v7

    .line 179
    .local v7, "len":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_0

    .line 180
    add-long/2addr v0, v7

    .line 184
    .end local v3    # "part":Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
    .end local v6    # "body":Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    .end local v7    # "len":J
    goto :goto_0

    .line 182
    .restart local v3    # "part":Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
    .restart local v6    # "body":Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    .restart local v7    # "len":J
    :cond_0
    return-wide v4

    .line 185
    .end local v3    # "part":Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
    .end local v6    # "body":Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    .end local v7    # "len":J
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 187
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->doWriteTo(Ljava/io/OutputStream;Z)V

    .line 188
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 189
    .local v3, "extra":[B
    array-length v4, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v4, v4

    add-long/2addr v4, v0

    return-wide v4

    .line 190
    .end local v3    # "extra":[B
    :catch_0
    move-exception v3

    .line 192
    .local v3, "ex":Ljava/io/IOException;
    return-wide v4
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->doWriteTo(Ljava/io/OutputStream;Z)V

    .line 158
    return-void
.end method
