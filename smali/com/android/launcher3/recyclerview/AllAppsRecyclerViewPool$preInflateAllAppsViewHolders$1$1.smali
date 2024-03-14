.class final Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $viewHolders:[Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

.field final synthetic this$0:Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;


# direct methods
.method public constructor <init>([Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1$1;->$viewHolders:[Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iput-object p2, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1$1;->this$0:Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    iput-object p3, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1$1;->$viewHolders:[Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1$1;->this$0:Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    iget-object v2, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1$1;->$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;->getPreinflateCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1$1;->this$0:Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool;

    iget-object v3, p0, Lcom/android/launcher3/recyclerview/AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1$1;->$viewHolders:[Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/s0;->putRecycledView(Landroidx/recyclerview/widget/E0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
