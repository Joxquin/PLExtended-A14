.class public final synthetic LG0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    sget p0, Lcom/android/launcher3/appprediction/PredictionRowView;->d:I

    instance-of p0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return p0
.end method
