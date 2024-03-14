.class public final LT1/v;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 0

    iput-object p1, p0, LT1/v;->d:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 0

    iget-object p1, p2, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 p2, -0xcb

    iget-object p3, p0, LT1/v;->d:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, LT1/v;->d:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method
