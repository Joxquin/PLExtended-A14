.class public final synthetic Lcom/android/launcher3/model/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

.field public final synthetic b:Lcom/android/launcher3/model/WidgetItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/r1;->a:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    iput-object p2, p0, Lcom/android/launcher3/model/r1;->b:Lcom/android/launcher3/model/WidgetItem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/r1;->a:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    iget-object p0, p0, Lcom/android/launcher3/model/r1;->b:Lcom/android/launcher3/model/WidgetItem;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->getOrCreate(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
