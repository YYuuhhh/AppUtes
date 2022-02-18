.class Ljxl/biff/formula/TokenFormulaParser;
.super Ljava/lang/Object;
.source "TokenFormulaParser.java"

# interfaces
.implements Ljxl/biff/formula/Parser;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private parseContext:Ljxl/biff/formula/ParseContext;

.field private pos:I

.field private relativeTo:Ljxl/Cell;

.field private root:Ljxl/biff/formula/ParseItem;

.field private settings:Ljxl/WorkbookSettings;

.field private tokenData:[B

.field private tokenStack:Ljava/util/Stack;

.field private workbook:Ljxl/biff/formula/ExternalSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Ljxl/biff/formula/TokenFormulaParser;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/TokenFormulaParser;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;Ljxl/biff/formula/ParseContext;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "c"    # Ljxl/Cell;
    .param p3, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p4, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p5, "ws"    # Ljxl/WorkbookSettings;
    .param p6, "pc"    # Ljxl/biff/formula/ParseContext;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 100
    iput-object p2, p0, Ljxl/biff/formula/TokenFormulaParser;->relativeTo:Ljxl/Cell;

    .line 101
    iput-object p3, p0, Ljxl/biff/formula/TokenFormulaParser;->workbook:Ljxl/biff/formula/ExternalSheet;

    .line 102
    iput-object p4, p0, Ljxl/biff/formula/TokenFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 103
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    .line 104
    iput-object p5, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    .line 105
    iput-object p6, p0, Ljxl/biff/formula/TokenFormulaParser;->parseContext:Ljxl/biff/formula/ParseContext;

    .line 107
    iget-object v1, p0, Ljxl/biff/formula/TokenFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 108
    return-void
.end method

.method private addOperator(Ljxl/biff/formula/Operator;)V
    .locals 1
    .param p1, "o"    # Ljxl/biff/formula/Operator;

    .line 459
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljxl/biff/formula/Operator;->getOperands(Ljava/util/Stack;)V

    .line 462
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    return-void
.end method

.method private handleMemoryFunction(Ljxl/biff/formula/SubExpression;)V
    .locals 4
    .param p1, "subxp"    # Ljxl/biff/formula/SubExpression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 430
    iget v0, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v1, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {p1, v1, v0}, Ljxl/biff/formula/SubExpression;->read([BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 433
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    .line 434
    .local v0, "oldStack":Ljava/util/Stack;
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    .line 436
    invoke-virtual {p1}, Ljxl/biff/formula/SubExpression;->getLength()I

    move-result v1

    invoke-direct {p0, v1}, Ljxl/biff/formula/TokenFormulaParser;->parseSubExpression(I)V

    .line 438
    iget-object v1, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    new-array v1, v1, [Ljxl/biff/formula/ParseItem;

    .line 439
    .local v1, "subexpr":[Ljxl/biff/formula/ParseItem;
    const/4 v2, 0x0

    .line 440
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 442
    iget-object v3, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/formula/ParseItem;

    aput-object v3, v1, v2

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p1, v1}, Ljxl/biff/formula/SubExpression;->setSubExpression([Ljxl/biff/formula/ParseItem;)V

    .line 448
    iput-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    .line 449
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    return-void
.end method

.method private parseSubExpression(I)V
    .locals 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "tokenVal":I
    const/4 v1, 0x0

    .line 142
    .local v1, "t":Ljxl/biff/formula/Token;
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 145
    .local v2, "ifStack":Ljava/util/Stack;
    iget v3, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    add-int/2addr v3, p1

    .line 147
    .local v3, "endpos":I
    :cond_0
    :goto_0
    iget v4, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    if-ge v4, v3, :cond_2a

    .line 149
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    aget-byte v0, v5, v4

    .line 150
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 152
    invoke-static {v0}, Ljxl/biff/formula/Token;->getToken(I)Ljxl/biff/formula/Token;

    move-result-object v1

    .line 154
    sget-object v4, Ljxl/biff/formula/Token;->UNKNOWN:Ljxl/biff/formula/Token;

    if-eq v1, v4, :cond_29

    .line 160
    sget-object v4, Ljxl/biff/formula/Token;->UNKNOWN:Ljxl/biff/formula/Token;

    if-eq v1, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljxl/common/Assert;->verify(Z)V

    .line 163
    sget-object v4, Ljxl/biff/formula/Token;->REF:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_2

    .line 165
    new-instance v4, Ljxl/biff/formula/CellReference;

    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->relativeTo:Ljxl/Cell;

    invoke-direct {v4, v5}, Ljxl/biff/formula/CellReference;-><init>(Ljxl/Cell;)V

    .line 166
    .local v4, "cr":Ljxl/biff/formula/CellReference;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/CellReference;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 167
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .end local v4    # "cr":Ljxl/biff/formula/CellReference;
    goto :goto_0

    .line 169
    :cond_2
    sget-object v4, Ljxl/biff/formula/Token;->REFERR:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_3

    .line 171
    new-instance v4, Ljxl/biff/formula/CellReferenceError;

    invoke-direct {v4}, Ljxl/biff/formula/CellReferenceError;-><init>()V

    .line 172
    .local v4, "cr":Ljxl/biff/formula/CellReferenceError;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/CellReferenceError;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 173
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v4    # "cr":Ljxl/biff/formula/CellReferenceError;
    goto :goto_0

    .line 175
    :cond_3
    sget-object v4, Ljxl/biff/formula/Token;->ERR:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_4

    .line 177
    new-instance v4, Ljxl/biff/formula/ErrorConstant;

    invoke-direct {v4}, Ljxl/biff/formula/ErrorConstant;-><init>()V

    .line 178
    .local v4, "ec":Ljxl/biff/formula/ErrorConstant;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/ErrorConstant;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 179
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v4    # "ec":Ljxl/biff/formula/ErrorConstant;
    goto :goto_0

    .line 181
    :cond_4
    sget-object v4, Ljxl/biff/formula/Token;->REFV:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_5

    .line 183
    new-instance v4, Ljxl/biff/formula/SharedFormulaCellReference;

    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->relativeTo:Ljxl/Cell;

    invoke-direct {v4, v5}, Ljxl/biff/formula/SharedFormulaCellReference;-><init>(Ljxl/Cell;)V

    .line 185
    .local v4, "cr":Ljxl/biff/formula/SharedFormulaCellReference;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/SharedFormulaCellReference;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 186
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .end local v4    # "cr":Ljxl/biff/formula/SharedFormulaCellReference;
    goto/16 :goto_0

    .line 188
    :cond_5
    sget-object v4, Ljxl/biff/formula/Token;->REF3D:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_6

    .line 190
    new-instance v4, Ljxl/biff/formula/CellReference3d;

    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->relativeTo:Ljxl/Cell;

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->workbook:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {v4, v5, v6}, Ljxl/biff/formula/CellReference3d;-><init>(Ljxl/Cell;Ljxl/biff/formula/ExternalSheet;)V

    .line 191
    .local v4, "cr":Ljxl/biff/formula/CellReference3d;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/CellReference3d;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 192
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v4    # "cr":Ljxl/biff/formula/CellReference3d;
    goto/16 :goto_0

    .line 194
    :cond_6
    sget-object v4, Ljxl/biff/formula/Token;->AREA:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_7

    .line 196
    new-instance v4, Ljxl/biff/formula/Area;

    invoke-direct {v4}, Ljxl/biff/formula/Area;-><init>()V

    .line 197
    .local v4, "a":Ljxl/biff/formula/Area;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Area;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 198
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v4    # "a":Ljxl/biff/formula/Area;
    goto/16 :goto_0

    .line 200
    :cond_7
    sget-object v4, Ljxl/biff/formula/Token;->AREAV:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_8

    .line 202
    new-instance v4, Ljxl/biff/formula/SharedFormulaArea;

    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->relativeTo:Ljxl/Cell;

    invoke-direct {v4, v5}, Ljxl/biff/formula/SharedFormulaArea;-><init>(Ljxl/Cell;)V

    .line 203
    .local v4, "a":Ljxl/biff/formula/SharedFormulaArea;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/SharedFormulaArea;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 204
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v4    # "a":Ljxl/biff/formula/SharedFormulaArea;
    goto/16 :goto_0

    .line 206
    :cond_8
    sget-object v4, Ljxl/biff/formula/Token;->AREA3D:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_9

    .line 208
    new-instance v4, Ljxl/biff/formula/Area3d;

    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->workbook:Ljxl/biff/formula/ExternalSheet;

    invoke-direct {v4, v5}, Ljxl/biff/formula/Area3d;-><init>(Ljxl/biff/formula/ExternalSheet;)V

    .line 209
    .local v4, "a":Ljxl/biff/formula/Area3d;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Area3d;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 210
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .end local v4    # "a":Ljxl/biff/formula/Area3d;
    goto/16 :goto_0

    .line 212
    :cond_9
    sget-object v4, Ljxl/biff/formula/Token;->NAME:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_a

    .line 214
    new-instance v4, Ljxl/biff/formula/Name;

    invoke-direct {v4}, Ljxl/biff/formula/Name;-><init>()V

    .line 215
    .local v4, "n":Ljxl/biff/formula/Name;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Name;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 216
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->parseContext:Ljxl/biff/formula/ParseContext;

    invoke-virtual {v4, v5}, Ljxl/biff/formula/Name;->setParseContext(Ljxl/biff/formula/ParseContext;)V

    .line 217
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v4    # "n":Ljxl/biff/formula/Name;
    goto/16 :goto_0

    .line 219
    :cond_a
    sget-object v4, Ljxl/biff/formula/Token;->NAMED_RANGE:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_b

    .line 221
    new-instance v4, Ljxl/biff/formula/NameRange;

    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-direct {v4, v5}, Ljxl/biff/formula/NameRange;-><init>(Ljxl/biff/WorkbookMethods;)V

    .line 222
    .local v4, "nr":Ljxl/biff/formula/NameRange;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/NameRange;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 223
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->parseContext:Ljxl/biff/formula/ParseContext;

    invoke-virtual {v4, v5}, Ljxl/biff/formula/NameRange;->setParseContext(Ljxl/biff/formula/ParseContext;)V

    .line 224
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v4    # "nr":Ljxl/biff/formula/NameRange;
    goto/16 :goto_0

    .line 226
    :cond_b
    sget-object v4, Ljxl/biff/formula/Token;->INTEGER:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_c

    .line 228
    new-instance v4, Ljxl/biff/formula/IntegerValue;

    invoke-direct {v4}, Ljxl/biff/formula/IntegerValue;-><init>()V

    .line 229
    .local v4, "i":Ljxl/biff/formula/IntegerValue;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/IntegerValue;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 230
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v4    # "i":Ljxl/biff/formula/IntegerValue;
    goto/16 :goto_0

    .line 232
    :cond_c
    sget-object v4, Ljxl/biff/formula/Token;->DOUBLE:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_d

    .line 234
    new-instance v4, Ljxl/biff/formula/DoubleValue;

    invoke-direct {v4}, Ljxl/biff/formula/DoubleValue;-><init>()V

    .line 235
    .local v4, "d":Ljxl/biff/formula/DoubleValue;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/DoubleValue;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 236
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v4    # "d":Ljxl/biff/formula/DoubleValue;
    goto/16 :goto_0

    .line 238
    :cond_d
    sget-object v4, Ljxl/biff/formula/Token;->BOOL:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_e

    .line 240
    new-instance v4, Ljxl/biff/formula/BooleanValue;

    invoke-direct {v4}, Ljxl/biff/formula/BooleanValue;-><init>()V

    .line 241
    .local v4, "bv":Ljxl/biff/formula/BooleanValue;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/BooleanValue;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 242
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .end local v4    # "bv":Ljxl/biff/formula/BooleanValue;
    goto/16 :goto_0

    .line 244
    :cond_e
    sget-object v4, Ljxl/biff/formula/Token;->STRING:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_f

    .line 246
    new-instance v4, Ljxl/biff/formula/StringValue;

    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5}, Ljxl/biff/formula/StringValue;-><init>(Ljxl/WorkbookSettings;)V

    .line 247
    .local v4, "sv":Ljxl/biff/formula/StringValue;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/StringValue;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 248
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v4    # "sv":Ljxl/biff/formula/StringValue;
    goto/16 :goto_0

    .line 250
    :cond_f
    sget-object v4, Ljxl/biff/formula/Token;->MISSING_ARG:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_10

    .line 252
    new-instance v4, Ljxl/biff/formula/MissingArg;

    invoke-direct {v4}, Ljxl/biff/formula/MissingArg;-><init>()V

    .line 253
    .local v4, "ma":Ljxl/biff/formula/MissingArg;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/MissingArg;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 254
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v4    # "ma":Ljxl/biff/formula/MissingArg;
    goto/16 :goto_0

    .line 258
    :cond_10
    sget-object v4, Ljxl/biff/formula/Token;->UNARY_PLUS:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_11

    .line 260
    new-instance v4, Ljxl/biff/formula/UnaryPlus;

    invoke-direct {v4}, Ljxl/biff/formula/UnaryPlus;-><init>()V

    .line 261
    .local v4, "up":Ljxl/biff/formula/UnaryPlus;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/UnaryPlus;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 262
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 263
    .end local v4    # "up":Ljxl/biff/formula/UnaryPlus;
    goto/16 :goto_0

    .line 264
    :cond_11
    sget-object v4, Ljxl/biff/formula/Token;->UNARY_MINUS:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_12

    .line 266
    new-instance v4, Ljxl/biff/formula/UnaryMinus;

    invoke-direct {v4}, Ljxl/biff/formula/UnaryMinus;-><init>()V

    .line 267
    .local v4, "um":Ljxl/biff/formula/UnaryMinus;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/UnaryMinus;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 268
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 269
    .end local v4    # "um":Ljxl/biff/formula/UnaryMinus;
    goto/16 :goto_0

    .line 270
    :cond_12
    sget-object v4, Ljxl/biff/formula/Token;->PERCENT:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_13

    .line 272
    new-instance v4, Ljxl/biff/formula/Percent;

    invoke-direct {v4}, Ljxl/biff/formula/Percent;-><init>()V

    .line 273
    .local v4, "p":Ljxl/biff/formula/Percent;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Percent;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 274
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 275
    .end local v4    # "p":Ljxl/biff/formula/Percent;
    goto/16 :goto_0

    .line 278
    :cond_13
    sget-object v4, Ljxl/biff/formula/Token;->SUBTRACT:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_14

    .line 280
    new-instance v4, Ljxl/biff/formula/Subtract;

    invoke-direct {v4}, Ljxl/biff/formula/Subtract;-><init>()V

    .line 281
    .local v4, "s":Ljxl/biff/formula/Subtract;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Subtract;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 282
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 283
    .end local v4    # "s":Ljxl/biff/formula/Subtract;
    goto/16 :goto_0

    .line 284
    :cond_14
    sget-object v4, Ljxl/biff/formula/Token;->ADD:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_15

    .line 286
    new-instance v4, Ljxl/biff/formula/Add;

    invoke-direct {v4}, Ljxl/biff/formula/Add;-><init>()V

    .line 287
    .local v4, "s":Ljxl/biff/formula/Add;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Add;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 288
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 289
    .end local v4    # "s":Ljxl/biff/formula/Add;
    goto/16 :goto_0

    .line 290
    :cond_15
    sget-object v4, Ljxl/biff/formula/Token;->MULTIPLY:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_16

    .line 292
    new-instance v4, Ljxl/biff/formula/Multiply;

    invoke-direct {v4}, Ljxl/biff/formula/Multiply;-><init>()V

    .line 293
    .local v4, "s":Ljxl/biff/formula/Multiply;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Multiply;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 294
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 295
    .end local v4    # "s":Ljxl/biff/formula/Multiply;
    goto/16 :goto_0

    .line 296
    :cond_16
    sget-object v4, Ljxl/biff/formula/Token;->DIVIDE:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_17

    .line 298
    new-instance v4, Ljxl/biff/formula/Divide;

    invoke-direct {v4}, Ljxl/biff/formula/Divide;-><init>()V

    .line 299
    .local v4, "s":Ljxl/biff/formula/Divide;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Divide;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 300
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 301
    .end local v4    # "s":Ljxl/biff/formula/Divide;
    goto/16 :goto_0

    .line 302
    :cond_17
    sget-object v4, Ljxl/biff/formula/Token;->CONCAT:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_18

    .line 304
    new-instance v4, Ljxl/biff/formula/Concatenate;

    invoke-direct {v4}, Ljxl/biff/formula/Concatenate;-><init>()V

    .line 305
    .local v4, "c":Ljxl/biff/formula/Concatenate;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Concatenate;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 306
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 307
    .end local v4    # "c":Ljxl/biff/formula/Concatenate;
    goto/16 :goto_0

    .line 308
    :cond_18
    sget-object v4, Ljxl/biff/formula/Token;->POWER:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_19

    .line 310
    new-instance v4, Ljxl/biff/formula/Power;

    invoke-direct {v4}, Ljxl/biff/formula/Power;-><init>()V

    .line 311
    .local v4, "p":Ljxl/biff/formula/Power;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Power;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 312
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 313
    .end local v4    # "p":Ljxl/biff/formula/Power;
    goto/16 :goto_0

    .line 314
    :cond_19
    sget-object v4, Ljxl/biff/formula/Token;->LESS_THAN:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_1a

    .line 316
    new-instance v4, Ljxl/biff/formula/LessThan;

    invoke-direct {v4}, Ljxl/biff/formula/LessThan;-><init>()V

    .line 317
    .local v4, "lt":Ljxl/biff/formula/LessThan;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/LessThan;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 318
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 319
    .end local v4    # "lt":Ljxl/biff/formula/LessThan;
    goto/16 :goto_0

    .line 320
    :cond_1a
    sget-object v4, Ljxl/biff/formula/Token;->LESS_EQUAL:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_1b

    .line 322
    new-instance v4, Ljxl/biff/formula/LessEqual;

    invoke-direct {v4}, Ljxl/biff/formula/LessEqual;-><init>()V

    .line 323
    .local v4, "lte":Ljxl/biff/formula/LessEqual;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/LessEqual;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 324
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 325
    .end local v4    # "lte":Ljxl/biff/formula/LessEqual;
    goto/16 :goto_0

    .line 326
    :cond_1b
    sget-object v4, Ljxl/biff/formula/Token;->GREATER_THAN:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_1c

    .line 328
    new-instance v4, Ljxl/biff/formula/GreaterThan;

    invoke-direct {v4}, Ljxl/biff/formula/GreaterThan;-><init>()V

    .line 329
    .local v4, "gt":Ljxl/biff/formula/GreaterThan;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/GreaterThan;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 330
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 331
    .end local v4    # "gt":Ljxl/biff/formula/GreaterThan;
    goto/16 :goto_0

    .line 332
    :cond_1c
    sget-object v4, Ljxl/biff/formula/Token;->GREATER_EQUAL:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_1d

    .line 334
    new-instance v4, Ljxl/biff/formula/GreaterEqual;

    invoke-direct {v4}, Ljxl/biff/formula/GreaterEqual;-><init>()V

    .line 335
    .local v4, "gte":Ljxl/biff/formula/GreaterEqual;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/GreaterEqual;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 336
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 337
    .end local v4    # "gte":Ljxl/biff/formula/GreaterEqual;
    goto/16 :goto_0

    .line 338
    :cond_1d
    sget-object v4, Ljxl/biff/formula/Token;->NOT_EQUAL:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_1e

    .line 340
    new-instance v4, Ljxl/biff/formula/NotEqual;

    invoke-direct {v4}, Ljxl/biff/formula/NotEqual;-><init>()V

    .line 341
    .local v4, "ne":Ljxl/biff/formula/NotEqual;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/NotEqual;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 342
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 343
    .end local v4    # "ne":Ljxl/biff/formula/NotEqual;
    goto/16 :goto_0

    .line 344
    :cond_1e
    sget-object v4, Ljxl/biff/formula/Token;->EQUAL:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_1f

    .line 346
    new-instance v4, Ljxl/biff/formula/Equal;

    invoke-direct {v4}, Ljxl/biff/formula/Equal;-><init>()V

    .line 347
    .local v4, "e":Ljxl/biff/formula/Equal;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Equal;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 348
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 349
    .end local v4    # "e":Ljxl/biff/formula/Equal;
    goto/16 :goto_0

    .line 350
    :cond_1f
    sget-object v4, Ljxl/biff/formula/Token;->PARENTHESIS:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_20

    .line 352
    new-instance v4, Ljxl/biff/formula/Parenthesis;

    invoke-direct {v4}, Ljxl/biff/formula/Parenthesis;-><init>()V

    .line 353
    .local v4, "p":Ljxl/biff/formula/Parenthesis;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Parenthesis;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 354
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 355
    .end local v4    # "p":Ljxl/biff/formula/Parenthesis;
    goto/16 :goto_0

    .line 358
    :cond_20
    sget-object v4, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_23

    .line 360
    new-instance v4, Ljxl/biff/formula/Attribute;

    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5}, Ljxl/biff/formula/Attribute;-><init>(Ljxl/WorkbookSettings;)V

    .line 361
    .local v4, "a":Ljxl/biff/formula/Attribute;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/Attribute;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 363
    invoke-virtual {v4}, Ljxl/biff/formula/Attribute;->isSum()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 365
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto :goto_2

    .line 367
    :cond_21
    invoke-virtual {v4}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 370
    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .end local v4    # "a":Ljxl/biff/formula/Attribute;
    :cond_22
    :goto_2
    goto/16 :goto_0

    .line 373
    :cond_23
    sget-object v4, Ljxl/biff/formula/Token;->FUNCTION:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_24

    .line 375
    new-instance v4, Ljxl/biff/formula/BuiltInFunction;

    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5}, Ljxl/biff/formula/BuiltInFunction;-><init>(Ljxl/WorkbookSettings;)V

    .line 376
    .local v4, "bif":Ljxl/biff/formula/BuiltInFunction;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/BuiltInFunction;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 378
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    .line 379
    .end local v4    # "bif":Ljxl/biff/formula/BuiltInFunction;
    goto/16 :goto_0

    .line 380
    :cond_24
    sget-object v4, Ljxl/biff/formula/Token;->FUNCTIONVARARG:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_27

    .line 382
    new-instance v4, Ljxl/biff/formula/VariableArgFunction;

    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5}, Ljxl/biff/formula/VariableArgFunction;-><init>(Ljxl/WorkbookSettings;)V

    .line 383
    .local v4, "vaf":Ljxl/biff/formula/VariableArgFunction;
    iget v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    invoke-virtual {v4, v6, v5}, Ljxl/biff/formula/VariableArgFunction;->read([BI)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljxl/biff/formula/TokenFormulaParser;->pos:I

    .line 385
    invoke-virtual {v4}, Ljxl/biff/formula/VariableArgFunction;->getFunction()Ljxl/biff/formula/Function;

    move-result-object v5

    sget-object v6, Ljxl/biff/formula/Function;->ATTRIBUTE:Ljxl/biff/formula/Function;

    if-eq v5, v6, :cond_25

    .line 387
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->addOperator(Ljxl/biff/formula/Operator;)V

    goto :goto_4

    .line 393
    :cond_25
    iget-object v5, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v4, v5}, Ljxl/biff/formula/VariableArgFunction;->getOperands(Ljava/util/Stack;)V

    .line 395
    const/4 v5, 0x0

    .line 396
    .local v5, "ifattr":Ljxl/biff/formula/Attribute;
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 398
    new-instance v6, Ljxl/biff/formula/Attribute;

    iget-object v7, p0, Ljxl/biff/formula/TokenFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v7}, Ljxl/biff/formula/Attribute;-><init>(Ljxl/WorkbookSettings;)V

    move-object v5, v6

    goto :goto_3

    .line 402
    :cond_26
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljxl/biff/formula/Attribute;

    .line 405
    :goto_3
    invoke-virtual {v5, v4}, Ljxl/biff/formula/Attribute;->setIfConditions(Ljxl/biff/formula/VariableArgFunction;)V

    .line 406
    iget-object v6, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v6, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .end local v4    # "vaf":Ljxl/biff/formula/VariableArgFunction;
    .end local v5    # "ifattr":Ljxl/biff/formula/Attribute;
    :goto_4
    goto/16 :goto_0

    .line 411
    :cond_27
    sget-object v4, Ljxl/biff/formula/Token;->MEM_FUNC:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_28

    .line 413
    new-instance v4, Ljxl/biff/formula/MemFunc;

    invoke-direct {v4}, Ljxl/biff/formula/MemFunc;-><init>()V

    .line 414
    .local v4, "memFunc":Ljxl/biff/formula/MemFunc;
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->handleMemoryFunction(Ljxl/biff/formula/SubExpression;)V

    .line 415
    .end local v4    # "memFunc":Ljxl/biff/formula/MemFunc;
    goto/16 :goto_0

    .line 416
    :cond_28
    sget-object v4, Ljxl/biff/formula/Token;->MEM_AREA:Ljxl/biff/formula/Token;

    if-ne v1, v4, :cond_0

    .line 418
    new-instance v4, Ljxl/biff/formula/MemArea;

    invoke-direct {v4}, Ljxl/biff/formula/MemArea;-><init>()V

    .line 419
    .local v4, "memArea":Ljxl/biff/formula/MemArea;
    invoke-direct {p0, v4}, Ljxl/biff/formula/TokenFormulaParser;->handleMemoryFunction(Ljxl/biff/formula/SubExpression;)V

    .line 420
    .end local v4    # "memArea":Ljxl/biff/formula/MemArea;
    goto/16 :goto_0

    .line 156
    :cond_29
    new-instance v4, Ljxl/biff/formula/FormulaException;

    sget-object v5, Ljxl/biff/formula/FormulaException;->UNRECOGNIZED_TOKEN:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v4, v5, v0}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;I)V

    throw v4

    .line 422
    :cond_2a
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 1
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 484
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    .line 485
    return-void
.end method

.method public columnInserted(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 510
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    .line 511
    return-void
.end method

.method public columnRemoved(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 524
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    .line 525
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .line 495
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 2

    .line 470
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 471
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v1, v0}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 472
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handleImportedCellReferences()Z
    .locals 1

    .line 565
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 566
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->isValid()Z

    move-result v0

    return v0
.end method

.method public parse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenData:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Ljxl/biff/formula/TokenFormulaParser;->parseSubExpression(I)V

    .line 122
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/formula/ParseItem;

    iput-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    .line 124
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 126
    return-void
.end method

.method public rowInserted(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 539
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    .line 540
    return-void
.end method

.method public rowRemoved(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 554
    iget-object v0, p0, Ljxl/biff/formula/TokenFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    .line 555
    return-void
.end method
