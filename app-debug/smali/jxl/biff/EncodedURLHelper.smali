.class public Ljxl/biff/EncodedURLHelper;
.super Ljava/lang/Object;
.source "EncodedURLHelper.java"


# static fields
.field private static endOfSubdirectory:B

.field private static logger:Ljxl/common/Logger;

.field private static msDosDriveLetter:B

.field private static parentDirectory:B

.field private static sameDrive:B

.field private static unencodedUrl:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ljxl/biff/EncodedURLHelper;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/EncodedURLHelper;->logger:Ljxl/common/Logger;

    .line 37
    const/4 v0, 0x1

    sput-byte v0, Ljxl/biff/EncodedURLHelper;->msDosDriveLetter:B

    .line 38
    const/4 v0, 0x2

    sput-byte v0, Ljxl/biff/EncodedURLHelper;->sameDrive:B

    .line 39
    const/4 v0, 0x3

    sput-byte v0, Ljxl/biff/EncodedURLHelper;->endOfSubdirectory:B

    .line 40
    const/4 v0, 0x4

    sput-byte v0, Ljxl/biff/EncodedURLHelper;->parentDirectory:B

    .line 41
    const/4 v0, 0x5

    sput-byte v0, Ljxl/biff/EncodedURLHelper;->unencodedUrl:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodedURL(Ljava/lang/String;Ljxl/WorkbookSettings;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "ws"    # Ljxl/WorkbookSettings;

    .line 45
    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0, p1}, Ljxl/biff/EncodedURLHelper;->getURL(Ljava/lang/String;Ljxl/WorkbookSettings;)[B

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    invoke-static {p0, p1}, Ljxl/biff/EncodedURLHelper;->getFile(Ljava/lang/String;Ljxl/WorkbookSettings;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getFile(Ljava/lang/String;Ljxl/WorkbookSettings;)[B
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "ws"    # Ljxl/WorkbookSettings;

    .line 57
    new-instance v0, Ljxl/biff/ByteArray;

    invoke-direct {v0}, Ljxl/biff/ByteArray;-><init>()V

    .line 59
    .local v0, "byteArray":Ljxl/biff/ByteArray;
    const/4 v1, 0x0

    .line 60
    .local v1, "pos":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    const/16 v4, 0x5c

    const/16 v5, 0x3a

    if-ne v2, v5, :cond_0

    .line 63
    sget-byte v2, Ljxl/biff/EncodedURLHelper;->msDosDriveLetter:B

    invoke-virtual {v0, v2}, Ljxl/biff/ByteArray;->add(B)V

    .line 64
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljxl/biff/ByteArray;->add(B)V

    .line 65
    const/4 v1, 0x2

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 70
    :cond_1
    sget-byte v2, Ljxl/biff/EncodedURLHelper;->sameDrive:B

    invoke-virtual {v0, v2}, Ljxl/biff/ByteArray;->add(B)V

    .line 74
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    goto :goto_5

    .line 79
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 81
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 82
    .local v2, "nextSepIndex1":I
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 83
    .local v5, "nextSepIndex2":I
    const/4 v6, 0x0

    .line 84
    .local v6, "nextSepIndex":I
    const/4 v7, 0x0

    .line 86
    .local v7, "nextFileNameComponent":Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v2, v8, :cond_4

    if-eq v5, v8, :cond_4

    .line 89
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_2

    .line 91
    :cond_4
    if-eq v2, v8, :cond_5

    if-ne v5, v8, :cond_6

    .line 94
    :cond_5
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 97
    :cond_6
    :goto_2
    if-ne v6, v8, :cond_7

    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_3

    .line 105
    :cond_7
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 106
    add-int/lit8 v1, v6, 0x1

    .line 109
    :goto_3
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4

    .line 113
    :cond_8
    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 116
    sget-byte v8, Ljxl/biff/EncodedURLHelper;->parentDirectory:B

    invoke-virtual {v0, v8}, Ljxl/biff/ByteArray;->add(B)V

    goto :goto_4

    .line 121
    :cond_9
    invoke-static {v7, p1}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;Ljxl/WorkbookSettings;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljxl/biff/ByteArray;->add([B)V

    .line 125
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_a

    .line 127
    sget-byte v8, Ljxl/biff/EncodedURLHelper;->endOfSubdirectory:B

    invoke-virtual {v0, v8}, Ljxl/biff/ByteArray;->add(B)V

    .line 129
    .end local v2    # "nextSepIndex1":I
    .end local v5    # "nextSepIndex2":I
    .end local v6    # "nextSepIndex":I
    .end local v7    # "nextFileNameComponent":Ljava/lang/String;
    :cond_a
    goto :goto_1

    .line 131
    :cond_b
    invoke-virtual {v0}, Ljxl/biff/ByteArray;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 76
    :cond_c
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getURL(Ljava/lang/String;Ljxl/WorkbookSettings;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "ws"    # Ljxl/WorkbookSettings;

    .line 136
    new-instance v0, Ljxl/biff/ByteArray;

    invoke-direct {v0}, Ljxl/biff/ByteArray;-><init>()V

    .line 137
    .local v0, "byteArray":Ljxl/biff/ByteArray;
    sget-byte v1, Ljxl/biff/EncodedURLHelper;->unencodedUrl:B

    invoke-virtual {v0, v1}, Ljxl/biff/ByteArray;->add(B)V

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljxl/biff/ByteArray;->add(B)V

    .line 139
    invoke-static {p0, p1}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;Ljxl/WorkbookSettings;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/biff/ByteArray;->add([B)V

    .line 140
    invoke-virtual {v0}, Ljxl/biff/ByteArray;->getBytes()[B

    move-result-object v1

    return-object v1
.end method
