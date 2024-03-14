.class public final Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/recyclerview/ViewHolderBinder;


# instance fields
.field private final mEmptySpaceHeightProvider:Ljava/util/function/IntSupplier;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/picker/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;->mEmptySpaceHeightProvider:Ljava/util/function/IntSupplier;

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroidx/recyclerview/widget/E0;Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;

    iget-object p1, p1, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;->mEmptySpaceHeightProvider:Ljava/util/function/IntSupplier;

    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setFixedHeight(I)V

    return-void
.end method

.method public final newViewHolder(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/E0;
    .locals 1

    new-instance p0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$1;

    new-instance v0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$1;-><init>(Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;)V

    return-object p0
.end method
