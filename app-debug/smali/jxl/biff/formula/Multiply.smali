.class Ljxl/biff/formula/Multiply;
.super Ljxl/biff/formula/BinaryOperator;
.source "Multiply.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljxl/biff/formula/BinaryOperator;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method getPrecedence()I
    .locals 1

    .line 57
    const/4 v0, 0x3

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "*"

    return-object v0
.end method

.method getToken()Ljxl/biff/formula/Token;
    .locals 1

    .line 46
    sget-object v0, Ljxl/biff/formula/Token;->MULTIPLY:Ljxl/biff/formula/Token;

    return-object v0
.end method
