.class public final synthetic LG0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    sget p0, Lcom/android/launcher3/appprediction/PredictionRowView;->d:I

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-object p1
.end method
