.class public final synthetic LF0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    sget p0, Lcom/android/launcher3/apppairs/AppPairIcon;->d:I

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    return p0
.end method
