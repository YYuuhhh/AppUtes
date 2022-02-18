.class Ljxl/biff/formula/StringFormulaParser;
.super Ljava/lang/Object;
.source "StringFormulaParser.java"

# interfaces
.implements Ljxl/biff/formula/Parser;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private arguments:Ljava/util/Stack;

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private formula:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private parseContext:Ljxl/biff/formula/ParseContext;

.field private parsedFormula:Ljava/lang/String;

.field private root:Ljxl/biff/formula/ParseItem;

.field private settings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Ljxl/biff/formula/StringFormulaParser;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/StringFormulaParser;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;Ljxl/biff/formula/ParseContext;)V
    .locals 0
    .param p1, "f"    # Ljava/lang/String;
    .param p2, "es"    # Ljxl/biff/formula/ExternalSheet;
    .param p3, "nt"    # Ljxl/biff/WorkbookMethods;
    .param p4, "ws"    # Ljxl/WorkbookSettings;
    .param p5, "pc"    # Ljxl/biff/formula/ParseContext;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    .line 97
    iput-object p2, p0, Ljxl/biff/formula/StringFormulaParser;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 98
    iput-object p3, p0, Ljxl/biff/formula/StringFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 99
    iput-object p5, p0, Ljxl/biff/formula/StringFormulaParser;->parseContext:Ljxl/biff/formula/ParseContext;

    .line 100
    return-void
.end method

.method private getTokens()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "tokens":Ljava/util/ArrayList;
    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 275
    .local v1, "sr":Ljava/io/StringReader;
    new-instance v2, Ljxl/biff/formula/Yylex;

    invoke-direct {v2, v1}, Ljxl/biff/formula/Yylex;-><init>(Ljava/io/Reader;)V

    .line 276
    .local v2, "lex":Ljxl/biff/formula/Yylex;
    iget-object v3, p0, Ljxl/biff/formula/StringFormulaParser;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    invoke-virtual {v2, v3}, Ljxl/biff/formula/Yylex;->setExternalSheet(Ljxl/biff/formula/ExternalSheet;)V

    .line 277
    iget-object v3, p0, Ljxl/biff/formula/StringFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-virtual {v2, v3}, Ljxl/biff/formula/Yylex;->setNameTable(Ljxl/biff/WorkbookMethods;)V

    .line 280
    :try_start_0
    invoke-virtual {v2}, Ljxl/biff/formula/Yylex;->yylex()Ljxl/biff/formula/ParseItem;

    move-result-object v3

    .line 281
    .local v3, "pi":Ljxl/biff/formula/ParseItem;
    :goto_0
    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {v2}, Ljxl/biff/formula/Yylex;->yylex()Ljxl/biff/formula/ParseItem;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 281
    .end local v3    # "pi":Ljxl/biff/formula/ParseItem;
    :cond_0
    goto :goto_1

    .line 291
    :catch_0
    move-exception v3

    .line 293
    .local v3, "e":Ljava/lang/Error;
    new-instance v4, Ljxl/biff/formula/FormulaException;

    sget-object v5, Ljxl/biff/formula/FormulaException;->LEXICAL_ERROR:Ljxl/biff/formula/FormulaException$FormulaMessage;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at char  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljxl/biff/formula/Yylex;->getPos()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw v4

    .line 287
    .end local v3    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v3

    .line 289
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Ljxl/biff/formula/StringFormulaParser;->logger:Ljxl/common/Logger;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 295
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 297
    return-object v0
.end method

.method private handleFunction(Ljxl/biff/formula/StringFunction;Ljava/util/Iterator;Ljava/util/Stack;)V
    .locals 8
    .param p1, "sf"    # Ljxl/biff/formula/StringFunction;
    .param p2, "i"    # Ljava/util/Iterator;
    .param p3, "stack"    # Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 349
    invoke-direct {p0, p2}, Ljxl/biff/formula/StringFormulaParser;->parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 352
    .local v0, "pi2":Ljxl/biff/formula/ParseItem;
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v1

    sget-object v2, Ljxl/biff/formula/Function;->UNKNOWN:Ljxl/biff/formula/Function;

    if-eq v1, v2, :cond_e

    .line 359
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v1

    sget-object v2, Ljxl/biff/formula/Function;->SUM:Ljxl/biff/formula/Function;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    if-nez v1, :cond_0

    .line 362
    new-instance v1, Ljxl/biff/formula/Attribute;

    iget-object v2, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v1, p1, v2}, Ljxl/biff/formula/Attribute;-><init>(Ljxl/biff/formula/StringFunction;Ljxl/WorkbookSettings;)V

    .line 363
    .local v1, "a":Ljxl/biff/formula/Attribute;
    invoke-virtual {v1, v0}, Ljxl/biff/formula/Attribute;->add(Ljxl/biff/formula/ParseItem;)V

    .line 364
    invoke-virtual {p3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    return-void

    .line 368
    .end local v1    # "a":Ljxl/biff/formula/Attribute;
    :cond_0
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v1

    sget-object v2, Ljxl/biff/formula/Function;->IF:Ljxl/biff/formula/Function;

    if-ne v1, v2, :cond_2

    .line 371
    new-instance v1, Ljxl/biff/formula/Attribute;

    iget-object v2, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v1, p1, v2}, Ljxl/biff/formula/Attribute;-><init>(Ljxl/biff/formula/StringFunction;Ljxl/WorkbookSettings;)V

    .line 375
    .restart local v1    # "a":Ljxl/biff/formula/Attribute;
    new-instance v2, Ljxl/biff/formula/VariableArgFunction;

    iget-object v3, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v2, v3}, Ljxl/biff/formula/VariableArgFunction;-><init>(Ljxl/WorkbookSettings;)V

    .line 376
    .local v2, "vaf":Ljxl/biff/formula/VariableArgFunction;
    iget-object v3, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    .line 377
    .local v3, "numargs":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 379
    iget-object v5, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/formula/ParseItem;

    .line 380
    .local v5, "pi3":Ljxl/biff/formula/ParseItem;
    invoke-virtual {v2, v5}, Ljxl/biff/formula/VariableArgFunction;->add(Ljxl/biff/formula/ParseItem;)V

    .line 377
    .end local v5    # "pi3":Ljxl/biff/formula/ParseItem;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 383
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {v1, v2}, Ljxl/biff/formula/Attribute;->setIfConditions(Ljxl/biff/formula/VariableArgFunction;)V

    .line 384
    invoke-virtual {p3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-void

    .line 390
    .end local v1    # "a":Ljxl/biff/formula/Attribute;
    .end local v2    # "vaf":Ljxl/biff/formula/VariableArgFunction;
    .end local v3    # "numargs":I
    :cond_2
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/biff/formula/Function;->getNumArgs()I

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-ne v1, v2, :cond_8

    .line 395
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    if-nez v1, :cond_5

    .line 397
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    move v1, v3

    .line 398
    .local v1, "numArgs":I
    new-instance v2, Ljxl/biff/formula/VariableArgFunction;

    iget-object v3, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v3}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v3

    iget-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v2, v3, v1, v4}, Ljxl/biff/formula/VariableArgFunction;-><init>(Ljxl/biff/formula/Function;ILjxl/WorkbookSettings;)V

    .line 401
    .restart local v2    # "vaf":Ljxl/biff/formula/VariableArgFunction;
    if-eqz v0, :cond_4

    .line 403
    invoke-virtual {v2, v0}, Ljxl/biff/formula/VariableArgFunction;->add(Ljxl/biff/formula/ParseItem;)V

    .line 406
    :cond_4
    invoke-virtual {p3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .end local v1    # "numArgs":I
    .end local v2    # "vaf":Ljxl/biff/formula/VariableArgFunction;
    goto :goto_4

    .line 411
    :cond_5
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    .line 412
    .local v1, "numargs":I
    new-instance v2, Ljxl/biff/formula/VariableArgFunction;

    iget-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v4}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v4

    iget-object v5, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v2, v4, v1, v5}, Ljxl/biff/formula/VariableArgFunction;-><init>(Ljxl/biff/formula/Function;ILjxl/WorkbookSettings;)V

    .line 415
    .restart local v2    # "vaf":Ljxl/biff/formula/VariableArgFunction;
    new-array v4, v1, [Ljxl/biff/formula/ParseItem;

    .line 416
    .local v4, "args":[Ljxl/biff/formula/ParseItem;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_6

    .line 418
    iget-object v6, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/biff/formula/ParseItem;

    .line 419
    .local v6, "pi3":Ljxl/biff/formula/ParseItem;
    sub-int v7, v1, v5

    sub-int/2addr v7, v3

    aput-object v6, v4, v7

    .line 416
    .end local v6    # "pi3":Ljxl/biff/formula/ParseItem;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 422
    .end local v5    # "j":I
    :cond_6
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    array-length v5, v4

    if-ge v3, v5, :cond_7

    .line 424
    aget-object v5, v4, v3

    invoke-virtual {v2, v5}, Ljxl/biff/formula/VariableArgFunction;->add(Ljxl/biff/formula/ParseItem;)V

    .line 422
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 426
    .end local v3    # "j":I
    :cond_7
    invoke-virtual {p3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v3, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    .line 428
    const/4 v3, 0x0

    iput-object v3, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    .line 430
    .end local v1    # "numargs":I
    .end local v2    # "vaf":Ljxl/biff/formula/VariableArgFunction;
    .end local v4    # "args":[Ljxl/biff/formula/ParseItem;
    :goto_4
    return-void

    .line 434
    :cond_8
    new-instance v1, Ljxl/biff/formula/BuiltInFunction;

    iget-object v2, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v2}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v2

    iget-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v2, v4}, Ljxl/biff/formula/BuiltInFunction;-><init>(Ljxl/biff/formula/Function;Ljxl/WorkbookSettings;)V

    .line 437
    .local v1, "bif":Ljxl/biff/formula/BuiltInFunction;
    iget-object v2, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v2}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/biff/formula/Function;->getNumArgs()I

    move-result v2

    .line 438
    .local v2, "numargs":I
    if-ne v2, v3, :cond_9

    .line 441
    invoke-virtual {v1, v0}, Ljxl/biff/formula/BuiltInFunction;->add(Ljxl/biff/formula/ParseItem;)V

    goto :goto_7

    .line 445
    :cond_9
    iget-object v3, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    if-nez v3, :cond_a

    if-nez v2, :cond_b

    :cond_a
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-ne v2, v3, :cond_b

    goto :goto_5

    .line 448
    :cond_b
    new-instance v3, Ljxl/biff/formula/FormulaException;

    sget-object v4, Ljxl/biff/formula/FormulaException;->INCORRECT_ARGUMENTS:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v3, v4}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v3

    .line 453
    :cond_c
    :goto_5
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_6
    if-ge v3, v2, :cond_d

    .line 455
    iget-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/biff/formula/ParseItem;

    .line 456
    .local v4, "pi3":Ljxl/biff/formula/ParseItem;
    invoke-virtual {v1, v4}, Ljxl/biff/formula/BuiltInFunction;->add(Ljxl/biff/formula/ParseItem;)V

    .line 453
    .end local v4    # "pi3":Ljxl/biff/formula/ParseItem;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 459
    .end local v3    # "j":I
    :cond_d
    :goto_7
    invoke-virtual {p3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    return-void

    .line 354
    .end local v1    # "bif":Ljxl/biff/formula/BuiltInFunction;
    .end local v2    # "numargs":I
    :cond_e
    new-instance v1, Ljxl/biff/formula/FormulaException;

    sget-object v2, Ljxl/biff/formula/FormulaException;->UNRECOGNIZED_FUNCTION:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v1, v2}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v1
.end method

.method private handleOperand(Ljxl/biff/formula/Operand;Ljava/util/Stack;)V
    .locals 4
    .param p1, "o"    # Ljxl/biff/formula/Operand;
    .param p2, "stack"    # Ljava/util/Stack;

    .line 542
    instance-of v0, p1, Ljxl/biff/formula/IntegerValue;

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    return-void

    .line 548
    :cond_0
    instance-of v0, p1, Ljxl/biff/formula/IntegerValue;

    if-eqz v0, :cond_2

    .line 550
    move-object v0, p1

    check-cast v0, Ljxl/biff/formula/IntegerValue;

    .line 551
    .local v0, "iv":Ljxl/biff/formula/IntegerValue;
    invoke-virtual {v0}, Ljxl/biff/formula/IntegerValue;->isOutOfRange()Z

    move-result v1

    if-nez v1, :cond_1

    .line 553
    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 558
    :cond_1
    new-instance v1, Ljxl/biff/formula/DoubleValue;

    invoke-virtual {v0}, Ljxl/biff/formula/IntegerValue;->getValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljxl/biff/formula/DoubleValue;-><init>(D)V

    .line 559
    .local v1, "dv":Ljxl/biff/formula/DoubleValue;
    invoke-virtual {p2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .end local v0    # "iv":Ljxl/biff/formula/IntegerValue;
    .end local v1    # "dv":Ljxl/biff/formula/DoubleValue;
    :cond_2
    :goto_0
    return-void
.end method

.method private parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;
    .locals 10
    .param p1, "i"    # Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 127
    .local v0, "stack":Ljava/util/Stack;
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 128
    .local v1, "operators":Ljava/util/Stack;
    const/4 v2, 0x0

    .line 130
    .local v2, "args":Ljava/util/Stack;
    const/4 v3, 0x0

    .line 131
    .local v3, "parenthesesClosed":Z
    const/4 v4, 0x0

    .line 133
    .local v4, "lastParseItem":Ljxl/biff/formula/ParseItem;
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez v3, :cond_e

    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/formula/ParseItem;

    .line 136
    .local v5, "pi":Ljxl/biff/formula/ParseItem;
    iget-object v6, p0, Ljxl/biff/formula/StringFormulaParser;->parseContext:Ljxl/biff/formula/ParseContext;

    invoke-virtual {v5, v6}, Ljxl/biff/formula/ParseItem;->setParseContext(Ljxl/biff/formula/ParseContext;)V

    .line 138
    instance-of v6, v5, Ljxl/biff/formula/Operand;

    if-eqz v6, :cond_0

    .line 140
    move-object v6, v5

    check-cast v6, Ljxl/biff/formula/Operand;

    invoke-direct {p0, v6, v0}, Ljxl/biff/formula/StringFormulaParser;->handleOperand(Ljxl/biff/formula/Operand;Ljava/util/Stack;)V

    goto/16 :goto_5

    .line 142
    :cond_0
    instance-of v6, v5, Ljxl/biff/formula/StringFunction;

    if-eqz v6, :cond_1

    .line 144
    move-object v6, v5

    check-cast v6, Ljxl/biff/formula/StringFunction;

    invoke-direct {p0, v6, p1, v0}, Ljxl/biff/formula/StringFormulaParser;->handleFunction(Ljxl/biff/formula/StringFunction;Ljava/util/Iterator;Ljava/util/Stack;)V

    goto/16 :goto_5

    .line 146
    :cond_1
    instance-of v6, v5, Ljxl/biff/formula/Operator;

    if-eqz v6, :cond_8

    .line 148
    move-object v6, v5

    check-cast v6, Ljxl/biff/formula/Operator;

    .line 153
    .local v6, "op":Ljxl/biff/formula/Operator;
    instance-of v7, v6, Ljxl/biff/formula/StringOperator;

    if-eqz v7, :cond_4

    .line 155
    move-object v7, v6

    check-cast v7, Ljxl/biff/formula/StringOperator;

    .line 156
    .local v7, "sop":Ljxl/biff/formula/StringOperator;
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    instance-of v8, v4, Ljxl/biff/formula/Operator;

    if-eqz v8, :cond_2

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {v7}, Ljxl/biff/formula/StringOperator;->getBinaryOperator()Ljxl/biff/formula/Operator;

    move-result-object v6

    goto :goto_2

    .line 158
    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljxl/biff/formula/StringOperator;->getUnaryOperator()Ljxl/biff/formula/Operator;

    move-result-object v6

    .line 166
    .end local v7    # "sop":Ljxl/biff/formula/StringOperator;
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 169
    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 173
    :cond_5
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/biff/formula/Operator;

    .line 177
    .local v7, "operator":Ljxl/biff/formula/Operator;
    invoke-virtual {v6}, Ljxl/biff/formula/Operator;->getPrecedence()I

    move-result v8

    invoke-virtual {v7}, Ljxl/biff/formula/Operator;->getPrecedence()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 179
    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 181
    :cond_6
    invoke-virtual {v6}, Ljxl/biff/formula/Operator;->getPrecedence()I

    move-result v8

    invoke-virtual {v7}, Ljxl/biff/formula/Operator;->getPrecedence()I

    move-result v9

    if-ne v8, v9, :cond_7

    instance-of v8, v6, Ljxl/biff/formula/UnaryOperator;

    if-eqz v8, :cond_7

    .line 187
    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 193
    :cond_7
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 194
    invoke-virtual {v7, v0}, Ljxl/biff/formula/Operator;->getOperands(Ljava/util/Stack;)V

    .line 195
    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v6    # "op":Ljxl/biff/formula/Operator;
    .end local v7    # "operator":Ljxl/biff/formula/Operator;
    :goto_3
    goto :goto_5

    .line 200
    :cond_8
    instance-of v6, v5, Ljxl/biff/formula/ArgumentSeparator;

    if-eqz v6, :cond_b

    .line 203
    :goto_4
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 205
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/biff/formula/Operator;

    .line 206
    .local v6, "o":Ljxl/biff/formula/Operator;
    invoke-virtual {v6, v0}, Ljxl/biff/formula/Operator;->getOperands(Ljava/util/Stack;)V

    .line 207
    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v6    # "o":Ljxl/biff/formula/Operator;
    goto :goto_4

    .line 213
    :cond_9
    if-nez v2, :cond_a

    .line 215
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    move-object v2, v6

    .line 218
    :cond_a
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_5

    .line 221
    :cond_b
    instance-of v6, v5, Ljxl/biff/formula/OpenParentheses;

    if-eqz v6, :cond_c

    .line 223
    invoke-direct {p0, p1}, Ljxl/biff/formula/StringFormulaParser;->parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;

    move-result-object v6

    .line 224
    .local v6, "pi2":Ljxl/biff/formula/ParseItem;
    new-instance v7, Ljxl/biff/formula/Parenthesis;

    invoke-direct {v7}, Ljxl/biff/formula/Parenthesis;-><init>()V

    .line 225
    .local v7, "p":Ljxl/biff/formula/Parenthesis;
    invoke-virtual {v6, v7}, Ljxl/biff/formula/ParseItem;->setParent(Ljxl/biff/formula/ParseItem;)V

    .line 226
    invoke-virtual {v7, v6}, Ljxl/biff/formula/Parenthesis;->add(Ljxl/biff/formula/ParseItem;)V

    .line 227
    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v6    # "pi2":Ljxl/biff/formula/ParseItem;
    .end local v7    # "p":Ljxl/biff/formula/Parenthesis;
    goto :goto_5

    .line 229
    :cond_c
    instance-of v6, v5, Ljxl/biff/formula/CloseParentheses;

    if-eqz v6, :cond_d

    .line 231
    const/4 v3, 0x1

    .line 234
    :cond_d
    :goto_5
    move-object v4, v5

    .line 235
    .end local v5    # "pi":Ljxl/biff/formula/ParseItem;
    goto/16 :goto_0

    .line 237
    :cond_e
    :goto_6
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 239
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/formula/Operator;

    .line 240
    .local v5, "o":Ljxl/biff/formula/Operator;
    invoke-virtual {v5, v0}, Ljxl/biff/formula/Operator;->getOperands(Ljava/util/Stack;)V

    .line 241
    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .end local v5    # "o":Ljxl/biff/formula/Operator;
    goto :goto_6

    .line 244
    :cond_f
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/formula/ParseItem;

    goto :goto_7

    :cond_10
    const/4 v5, 0x0

    .line 248
    .local v5, "rt":Ljxl/biff/formula/ParseItem;
    :goto_7
    if-eqz v2, :cond_11

    if-eqz v5, :cond_11

    .line 250
    invoke-virtual {v2, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_11
    iput-object v2, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    .line 255
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-nez v6, :cond_13

    .line 257
    :cond_12
    sget-object v6, Ljxl/biff/formula/StringFormulaParser;->logger:Ljxl/common/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Formula "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has a non-empty parse stack"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 261
    :cond_13
    return-object v5
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 1
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 470
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    .line 471
    return-void
.end method

.method public columnInserted(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 485
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    .line 486
    return-void
.end method

.method public columnRemoved(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 501
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    .line 502
    return-void
.end method

.method public getBytes()[B
    .locals 5

    .line 323
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v0

    .line 325
    .local v0, "bytes":[B
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v1}, Ljxl/biff/formula/ParseItem;->isVolatile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    array-length v1, v0

    const/4 v2, 0x4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 328
    .local v1, "newBytes":[B
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    sget-object v2, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v2}, Ljxl/biff/formula/Token;->getCode()B

    move-result v2

    aput-byte v2, v1, v4

    .line 330
    const/4 v2, 0x1

    aput-byte v2, v1, v2

    .line 331
    move-object v0, v1

    .line 334
    .end local v1    # "newBytes":[B
    :cond_0
    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 2

    .line 306
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->parsedFormula:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 309
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v1, v0}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->parsedFormula:Ljava/lang/String;

    .line 313
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->parsedFormula:Ljava/lang/String;

    return-object v0
.end method

.method public handleImportedCellReferences()Z
    .locals 1

    .line 572
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 573
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->isValid()Z

    move-result v0

    return v0
.end method

.method public parse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljxl/biff/formula/StringFormulaParser;->getTokens()Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    .local v0, "tokens":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    .local v1, "i":Ljava/util/Iterator;
    invoke-direct {p0, v1}, Ljxl/biff/formula/StringFormulaParser;->parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;

    move-result-object v2

    iput-object v2, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    .line 114
    return-void
.end method

.method public rowInserted(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 516
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    .line 517
    return-void
.end method

.method public rowRemoved(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 531
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    .line 532
    return-void
.end method
