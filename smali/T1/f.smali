.class public final LT1/f;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:LT1/g;


# direct methods
.method public constructor <init>(LT1/g;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, LT1/f;->e:LT1/g;

    iput-object p2, p0, LT1/f;->d:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 1

    iget-object p1, p0, LT1/f;->e:LT1/g;

    iget-object p3, p0, LT1/f;->d:Ljava/util/List;

    invoke-virtual {p1, p3}, LT1/g;->e(Ljava/util/List;)V

    new-instance p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object p3, p0, LT1/f;->e:LT1/g;

    iget p3, p3, LT1/g;->b:I

    iget-object v0, p0, LT1/f;->d:Ljava/util/List;

    invoke-direct {p1, p3, v0}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;-><init>(ILjava/util/List;)V

    iget-object p2, p2, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object p3, p0, LT1/f;->e:LT1/g;

    iget p3, p3, LT1/g;->b:I

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method
