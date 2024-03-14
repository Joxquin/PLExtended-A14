.class public Lcom/android/launcher3/allapps/SearchRecyclerView;
.super Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.source "SourceFile"


# instance fields
.field private mChildAttachedConsumer:LL/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/SearchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/SearchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/SearchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onChildAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchRecyclerView;->mChildAttachedConsumer:LL/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LL/a;->accept(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    return-void
.end method

.method public final setChildAttachedConsumer(LD0/s;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/SearchRecyclerView;->mChildAttachedConsumer:LL/a;

    return-void
.end method

.method public final updatePoolSize()V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/s0;

    move-result-object v0

    const/4 v1, 0x2

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/s0;->setMaxRecycledViews(II)V

    return-void
.end method
