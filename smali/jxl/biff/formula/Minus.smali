.class Ljxl/biff/formula/Minus;
.super Ljxl/biff/formula/StringOperator;
.source "Minus.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Ljxl/biff/formula/StringOperator;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Minus;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljxl/biff/formula/StringOperator;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method getBinaryOperator()Ljxl/biff/formula/Operator;
    .locals 1

    .line 47
    new-instance v0, Ljxl/biff/formula/Subtract;

    invoke-direct {v0}, Ljxl/biff/formula/Subtract;-><init>()V

    return-object v0
.end method

.method getUnaryOperator()Ljxl/biff/formula/Operator;
    .locals 1

    .line 55
    new-instance v0, Ljxl/biff/formula/UnaryMinus;

    invoke-direct {v0}, Ljxl/biff/formula/UnaryMinus;-><init>()V

    return-object v0
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 65
    return-void
.end method
