.class public abstract Landroidx/recyclerview/widget/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroidx/recyclerview/widget/a0;

.field private mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/a0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/a0;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/Z;->mHasStableIds:Z

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->d:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    iput-object v0, p0, Landroidx/recyclerview/widget/Z;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroidx/recyclerview/widget/E0;I)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/E0;->mBindingAdapter:Landroidx/recyclerview/widget/Z;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iput p2, p1, Landroidx/recyclerview/widget/E0;->mPosition:I

    iget-boolean v2, p0, Landroidx/recyclerview/widget/Z;->mHasStableIds:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/Z;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroidx/recyclerview/widget/E0;->mItemId:J

    :cond_1
    iget v2, p1, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit16 v2, v2, -0x208

    or-int/2addr v2, v1

    iput v2, p1, Landroidx/recyclerview/widget/E0;->mFlags:I

    const-string v2, "RV OnBindView"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_2
    iput-object p0, p1, Landroidx/recyclerview/widget/E0;->mBindingAdapter:Landroidx/recyclerview/widget/Z;

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    iget-object v3, p1, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Landroidx/core/view/A;->b(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->isTmpDetached()Z

    move-result v4

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Temp-detached state out of sync with reality. holder.isTmpDetached(): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->isTmpDetached()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", attached to window: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroidx/core/view/A;->b(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", holder: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_6

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Landroidx/core/view/A;->b(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Attempting to bind attached holder with no parent (AKA temp detached): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Landroidx/recyclerview/widget/Z;->onBindViewHolder(Landroidx/recyclerview/widget/E0;ILjava/util/List;)V

    if-eqz v0, :cond_9

    iget-object p0, p1, Landroidx/recyclerview/widget/E0;->mPayloads:Ljava/util/List;

    if-eqz p0, :cond_7

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    iget p0, p1, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit16 p0, p0, -0x401

    iput p0, p1, Landroidx/recyclerview/widget/E0;->mFlags:I

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p1, p0, Landroidx/recyclerview/widget/m0;

    if-eqz p1, :cond_8

    check-cast p0, Landroidx/recyclerview/widget/m0;

    iput-boolean v1, p0, Landroidx/recyclerview/widget/m0;->c:Z

    :cond_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_9
    return-void
.end method

.method public final canRestoreState()Z
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/Z;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/Z;->getItemCount()I

    move-result p0

    if-lez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final createViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/E0;
    .locals 1

    :try_start_0
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/Z;->onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/E0;

    move-result-object p0

    iget-object p1, p0, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iput p2, p0, Landroidx/recyclerview/widget/E0;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/Z;->mHasStableIds:Z

    return p0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/a0;->b()V

    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/a0;->d(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/recyclerview/widget/a0;->d(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/a0;->c(II)V

    return-void
.end method

.method public final notifyItemRangeChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Landroidx/recyclerview/widget/a0;->d(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/a0;->d(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/a0;->e(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/a0;->f(II)V

    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/a0;->f(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract onBindViewHolder(Landroidx/recyclerview/widget/E0;I)V
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/E0;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/Z;->onBindViewHolder(Landroidx/recyclerview/widget/E0;I)V

    return-void
.end method

.method public abstract onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/E0;
.end method

.method public onDetachedFromRecyclerView()V
    .locals 0

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/E0;)Z
    .locals 0

    instance-of p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    return p0
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/E0;)V
    .locals 0

    return-void
.end method

.method public final registerAdapterDataObserver(Landroidx/recyclerview/widget/v0;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final setHasStableIds(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/Z;->mHasStableIds:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unregisterAdapterDataObserver(Landroidx/recyclerview/widget/v0;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/Z;->mObservable:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
