.class public interface abstract Ljxl/biff/WorkbookMethods;
.super Ljava/lang/Object;
.source "WorkbookMethods.java"


# virtual methods
.method public abstract getName(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/NameRangeException;
        }
    .end annotation
.end method

.method public abstract getNameIndex(Ljava/lang/String;)I
.end method

.method public abstract getReadSheet(I)Ljxl/Sheet;
.end method
