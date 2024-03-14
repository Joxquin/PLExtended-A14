.class final Lcom/android/launcher3/views/RecyclerViewFastScroller$2;
.super Landroidx/recyclerview/widget/q0;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;->this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/q0;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;->this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-static {p0, p3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->b(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)V

    iget-object p0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/FastScrollRecyclerView;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/FastScrollRecyclerView;->onUpdateScrollbar(I)V

    return-void
.end method
