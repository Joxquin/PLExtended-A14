.class public final Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLastSelectedViewHolder:Landroidx/recyclerview/widget/E0;

.field private mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private mTargetFastScrollPosition:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Landroidx/recyclerview/widget/E0;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/E0;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Landroidx/recyclerview/widget/E0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/E0;

    return-void
.end method

.method public static e(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/E0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/E0;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/E0;->setIsRecyclable(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onFastScrollCompleted()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/E0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/E0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/E0;->setIsRecyclable(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/E0;

    return-void
.end method

.method public final smoothScrollToSection(Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iget p1, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->position:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/l0;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;-><init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/l0;->startSmoothScroll(Landroidx/recyclerview/widget/O;)V

    return-void
.end method
