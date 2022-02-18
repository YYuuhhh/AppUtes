.class public Ljxl/biff/formula/FunctionNames;
.super Ljava/lang/Object;
.source "FunctionNames.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private functions:Ljava/util/HashMap;

.field private names:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Ljxl/biff/formula/FunctionNames;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/FunctionNames;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 7
    .param p1, "l"    # Ljava/util/Locale;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "functions"

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 60
    .local v0, "rb":Ljava/util/ResourceBundle;
    invoke-static {}, Ljxl/biff/formula/Function;->getFunctions()[Ljxl/biff/formula/Function;

    move-result-object v1

    .line 61
    .local v1, "allfunctions":[Ljxl/biff/formula/Function;
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Ljxl/biff/formula/FunctionNames;->names:Ljava/util/HashMap;

    .line 62
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Ljxl/biff/formula/FunctionNames;->functions:Ljava/util/HashMap;

    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, "f":Ljxl/biff/formula/Function;
    const/4 v3, 0x0

    .line 67
    .local v3, "n":Ljava/lang/String;
    const/4 v4, 0x0

    .line 68
    .local v4, "propname":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 70
    aget-object v2, v1, v5

    .line 71
    invoke-virtual {v2}, Ljxl/biff/formula/Function;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    move-object v3, v6

    .line 75
    if-eqz v3, :cond_1

    .line 77
    iget-object v6, p0, Ljxl/biff/formula/FunctionNames;->names:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v6, p0, Ljxl/biff/formula/FunctionNames;->functions:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    .end local v5    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method getFunction(Ljava/lang/String;)Ljxl/biff/formula/Function;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Ljxl/biff/formula/FunctionNames;->functions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/formula/Function;

    return-object v0
.end method

.method getName(Ljxl/biff/formula/Function;)Ljava/lang/String;
    .locals 1
    .param p1, "f"    # Ljxl/biff/formula/Function;

    .line 102
    iget-object v0, p0, Ljxl/biff/formula/FunctionNames;->names:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
