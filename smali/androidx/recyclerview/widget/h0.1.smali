.class public abstract Landroidx/recyclerview/widget/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/recyclerview/widget/f0;

.field public final b:Ljava/util/ArrayList;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/h0;->a:Landroidx/recyclerview/widget/f0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/h0;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroidx/recyclerview/widget/h0;->c:J

    iput-wide v0, p0, Landroidx/recyclerview/widget/h0;->d:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroidx/recyclerview/widget/h0;->e:J

    iput-wide v0, p0, Landroidx/recyclerview/widget/h0;->f:J

    return-void
.end method

.method public static b(Landroidx/recyclerview/widget/E0;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroidx/recyclerview/widget/E0;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/E0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/E0;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/E0;Landroidx/recyclerview/widget/E0;Landroidx/recyclerview/widget/g0;Landroidx/recyclerview/widget/g0;)Z
.end method

.method public final c(Landroidx/recyclerview/widget/E0;)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/h0;->a:Landroidx/recyclerview/widget/f0;

    if-eqz p0, :cond_2

    check-cast p0, Landroidx/recyclerview/widget/Y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/E0;->setIsRecyclable(Z)V

    iget-object v1, p1, Landroidx/recyclerview/widget/E0;->mShadowedHolder:Landroidx/recyclerview/widget/E0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/E0;->mShadowingHolder:Landroidx/recyclerview/widget/E0;

    if-nez v1, :cond_0

    iput-object v2, p1, Landroidx/recyclerview/widget/E0;->mShadowedHolder:Landroidx/recyclerview/widget/E0;

    :cond_0
    iput-object v2, p1, Landroidx/recyclerview/widget/E0;->mShadowingHolder:Landroidx/recyclerview/widget/E0;

    iget v1, p1, Landroidx/recyclerview/widget/E0;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/Y;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->isTmpDetached()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method public abstract d(Landroidx/recyclerview/widget/E0;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method
