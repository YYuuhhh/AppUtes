.class public Ljxl/biff/CountryCode;
.super Ljava/lang/Object;
.source "CountryCode.java"


# static fields
.field public static final BELGIUM:Ljxl/biff/CountryCode;

.field public static final CANADA:Ljxl/biff/CountryCode;

.field public static final CHINA:Ljxl/biff/CountryCode;

.field public static final DENMARK:Ljxl/biff/CountryCode;

.field public static final FRANCE:Ljxl/biff/CountryCode;

.field public static final GERMANY:Ljxl/biff/CountryCode;

.field public static final GREECE:Ljxl/biff/CountryCode;

.field public static final INDIA:Ljxl/biff/CountryCode;

.field public static final ITALY:Ljxl/biff/CountryCode;

.field public static final NETHERLANDS:Ljxl/biff/CountryCode;

.field public static final NORWAY:Ljxl/biff/CountryCode;

.field public static final PHILIPPINES:Ljxl/biff/CountryCode;

.field public static final SPAIN:Ljxl/biff/CountryCode;

.field public static final SWEDEN:Ljxl/biff/CountryCode;

.field public static final SWITZERLAND:Ljxl/biff/CountryCode;

.field public static final UK:Ljxl/biff/CountryCode;

.field public static final UNKNOWN:Ljxl/biff/CountryCode;

.field public static final USA:Ljxl/biff/CountryCode;

.field private static codes:[Ljxl/biff/CountryCode;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    const-class v0, Ljxl/biff/CountryCode;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/CountryCode;->logger:Ljxl/common/Logger;

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/CountryCode;

    sput-object v0, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    .line 134
    new-instance v0, Ljxl/biff/CountryCode;

    const/4 v1, 0x1

    const-string v2, "US"

    const-string v3, "USA"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->USA:Ljxl/biff/CountryCode;

    .line 135
    new-instance v0, Ljxl/biff/CountryCode;

    const/4 v1, 0x2

    const-string v2, "CA"

    const-string v3, "Canada"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->CANADA:Ljxl/biff/CountryCode;

    .line 137
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x1e

    const-string v2, "GR"

    const-string v3, "Greece"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->GREECE:Ljxl/biff/CountryCode;

    .line 139
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x1f

    const-string v2, "NE"

    const-string v3, "Netherlands"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->NETHERLANDS:Ljxl/biff/CountryCode;

    .line 141
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x20

    const-string v2, "BE"

    const-string v3, "Belgium"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->BELGIUM:Ljxl/biff/CountryCode;

    .line 143
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x21

    const-string v2, "FR"

    const-string v3, "France"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->FRANCE:Ljxl/biff/CountryCode;

    .line 145
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x22

    const-string v2, "ES"

    const-string v3, "Spain"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->SPAIN:Ljxl/biff/CountryCode;

    .line 146
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x27

    const-string v2, "IT"

    const-string v3, "Italy"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->ITALY:Ljxl/biff/CountryCode;

    .line 147
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x29

    const-string v2, "CH"

    const-string v3, "Switzerland"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->SWITZERLAND:Ljxl/biff/CountryCode;

    .line 149
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x2c

    const-string v2, "UK"

    const-string v3, "United Kingdowm"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->UK:Ljxl/biff/CountryCode;

    .line 151
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x2d

    const-string v2, "DK"

    const-string v3, "Denmark"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->DENMARK:Ljxl/biff/CountryCode;

    .line 153
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x2e

    const-string v2, "SE"

    const-string v3, "Sweden"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->SWEDEN:Ljxl/biff/CountryCode;

    .line 155
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x2f

    const-string v2, "NO"

    const-string v3, "Norway"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->NORWAY:Ljxl/biff/CountryCode;

    .line 157
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x31

    const-string v2, "DE"

    const-string v3, "Germany"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->GERMANY:Ljxl/biff/CountryCode;

    .line 159
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x3f

    const-string v2, "PH"

    const-string v3, "Philippines"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->PHILIPPINES:Ljxl/biff/CountryCode;

    .line 161
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x56

    const-string v2, "CN"

    const-string v3, "China"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->CHINA:Ljxl/biff/CountryCode;

    .line 163
    new-instance v0, Ljxl/biff/CountryCode;

    const/16 v1, 0x5b

    const-string v2, "IN"

    const-string v3, "India"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->INDIA:Ljxl/biff/CountryCode;

    .line 165
    new-instance v0, Ljxl/biff/CountryCode;

    const v1, 0xffff

    const-string v2, "??"

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/CountryCode;->UNKNOWN:Ljxl/biff/CountryCode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "v"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Ljxl/biff/CountryCode;->value:I

    .line 76
    const-string v0, "Arbitrary"

    iput-object v0, p0, Ljxl/biff/CountryCode;->description:Ljava/lang/String;

    .line 77
    const-string v0, "??"

    iput-object v0, p0, Ljxl/biff/CountryCode;->code:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "v"    # I
    .param p2, "c"    # Ljava/lang/String;
    .param p3, "d"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Ljxl/biff/CountryCode;->value:I

    .line 60
    iput-object p2, p0, Ljxl/biff/CountryCode;->code:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Ljxl/biff/CountryCode;->description:Ljava/lang/String;

    .line 63
    sget-object v0, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljxl/biff/CountryCode;

    .line 64
    .local v1, "newcodes":[Ljxl/biff/CountryCode;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    sget-object v0, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    array-length v0, v0

    aput-object p0, v1, v0

    .line 66
    sput-object v1, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    .line 67
    return-void
.end method

.method public static createArbitraryCode(I)Ljxl/biff/CountryCode;
    .locals 1
    .param p0, "i"    # I

    .line 130
    new-instance v0, Ljxl/biff/CountryCode;

    invoke-direct {v0, p0}, Ljxl/biff/CountryCode;-><init>(I)V

    return-object v0
.end method

.method public static getCountryCode(Ljava/lang/String;)Ljxl/biff/CountryCode;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 105
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    sget-object v0, Ljxl/biff/CountryCode;->UNKNOWN:Ljxl/biff/CountryCode;

    .line 112
    .local v0, "code":Ljxl/biff/CountryCode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    sget-object v3, Ljxl/biff/CountryCode;->UNKNOWN:Ljxl/biff/CountryCode;

    if-ne v0, v3, :cond_2

    .line 114
    aget-object v2, v2, v1

    iget-object v2, v2, Ljxl/biff/CountryCode;->code:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    sget-object v2, Ljxl/biff/CountryCode;->codes:[Ljxl/biff/CountryCode;

    aget-object v0, v2, v1

    .line 112
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 107
    .end local v0    # "code":Ljxl/biff/CountryCode;
    :cond_3
    :goto_1
    sget-object v0, Ljxl/biff/CountryCode;->logger:Ljxl/common/Logger;

    const-string v1, "Please specify two character ISO 3166 country code"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 108
    sget-object v0, Ljxl/biff/CountryCode;->USA:Ljxl/biff/CountryCode;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Ljxl/biff/CountryCode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 87
    iget v0, p0, Ljxl/biff/CountryCode;->value:I

    return v0
.end method
