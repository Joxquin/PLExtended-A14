.class public final synthetic LD0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-interface {p1}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->getExpectedHeight()I

    move-result p0

    return p0
.end method
