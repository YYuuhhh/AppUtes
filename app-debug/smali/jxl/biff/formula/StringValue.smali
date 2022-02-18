.class Ljxl/biff/formula/StringValue;
.super Ljxl/biff/formula/Operand;
.source "StringValue.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static final logger:Ljxl/common/Logger;


# instance fields
.field private settings:Ljxl/WorkbookSettings;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Ljxl/biff/formula/StringValue;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/StringValue;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 65
    iput-object p1, p0, Ljxl/biff/formula/StringValue;->value:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljxl/WorkbookSettings;)V
    .locals 0
    .param p1, "ws"    # Ljxl/WorkbookSettings;

    .line 53
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 54
    iput-object p1, p0, Ljxl/biff/formula/StringValue;->settings:Ljxl/WorkbookSettings;

    .line 55
    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 5

    .line 101
    iget-object v0, p0, Ljxl/biff/formula/StringValue;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    const/4 v2, 0x3

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 102
    .local v0, "data":[B
    sget-object v3, Ljxl/biff/formula/Token;->STRING:Ljxl/biff/formula/Token;

    invoke-virtual {v3}, Ljxl/biff/formula/Token;->getCode()B

    move-result v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 103
    iget-object v3, p0, Ljxl/biff/formula/StringValue;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    .line 104
    aput-byte v4, v0, v1

    .line 105
    iget-object v1, p0, Ljxl/biff/formula/StringValue;->value:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 107
    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 118
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    iget-object v1, p0, Ljxl/biff/formula/StringValue;->value:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 130
    return-void
.end method

.method public read([BI)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 77
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 78
    .local v0, "length":I
    const/4 v1, 0x2

    .line 80
    .local v1, "consumed":I
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 82
    add-int/lit8 v2, p2, 0x2

    iget-object v3, p0, Ljxl/biff/formula/StringValue;->settings:Ljxl/WorkbookSettings;

    invoke-static {p1, v0, v2, v3}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/biff/formula/StringValue;->value:Ljava/lang/String;

    .line 83
    add-int/2addr v1, v0

    goto :goto_0

    .line 87
    :cond_0
    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, v0, v2}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljxl/biff/formula/StringValue;->value:Ljava/lang/String;

    .line 88
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 91
    :goto_0
    return v1
.end method
