.class final Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;
.super Landroidx/recyclerview/widget/O;
.source "SourceFile"


# instance fields
.field private final mTargetPosition:I

.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->b(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/O;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->mTargetPosition:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/O;->g(I)V

    return-void
.end method


# virtual methods
.method public final getVerticalSnapPreference()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->c(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)I

    move-result v1

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->mTargetPosition:I

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->e(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->d(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Landroidx/recyclerview/widget/E0;)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/O;->onStop()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->c(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)I

    move-result v1

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;->mTargetPosition:I

    if-eq p0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->b(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/E0;

    move-result-object p0

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->a(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Landroidx/recyclerview/widget/E0;

    move-result-object v1

    if-ne p0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->e(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)V

    invoke-static {v0, p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->d(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Landroidx/recyclerview/widget/E0;)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->e(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)V

    return-void
.end method
