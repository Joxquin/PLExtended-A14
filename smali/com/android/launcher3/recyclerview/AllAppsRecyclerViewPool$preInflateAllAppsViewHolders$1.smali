.class final Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic $activeRv:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic $adapter:Landroidx/recyclerview/widget/Z;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $preInflateCount:I

.field final synthetic this$0:Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;


# direct methods
.method public constructor <init>(ILcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$adapter$1;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;Landroid/content/Context;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;->$preInflateCount:I

    iput-object p2, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;->$adapter:Landroidx/recyclerview/widget/Z;

    iput-object p3, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;->$activeRv:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;->this$0:Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    iput-object p5, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;->$preInflateCount:I

    new-array v1, v0, [Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;->$adapter:Landroidx/recyclerview/widget/Z;

    iget-object v4, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;->$activeRv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/Z;->createViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/E0;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1$1;

    iget-object v3, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;->this$0:Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    iget-object p0, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1;->$context:Landroid/content/Context;

    invoke-direct {v2, v1, v3, p0}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1$1;-><init>([Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return-object p0
.end method
