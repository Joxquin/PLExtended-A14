.class public final Landroidx/fragment/app/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/a0;

.field public final b:Landroidx/fragment/app/A0;

.field public final c:Landroidx/fragment/app/K;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a0;Landroidx/fragment/app/A0;Landroidx/fragment/app/K;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/z0;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/z0;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/z0;->b:Landroidx/fragment/app/A0;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/a0;Landroidx/fragment/app/A0;Landroidx/fragment/app/K;Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Landroidx/fragment/app/z0;->d:Z

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Landroidx/fragment/app/z0;->e:I

    .line 39
    iput-object p1, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    .line 40
    iput-object p2, p0, Landroidx/fragment/app/z0;->b:Landroidx/fragment/app/A0;

    .line 41
    iput-object p3, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    const/4 p0, 0x0

    .line 42
    iput-object p0, p3, Landroidx/fragment/app/K;->mSavedViewState:Landroid/util/SparseArray;

    .line 43
    iput-object p0, p3, Landroidx/fragment/app/K;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 44
    iput v0, p3, Landroidx/fragment/app/K;->mBackStackNesting:I

    .line 45
    iput-boolean v0, p3, Landroidx/fragment/app/K;->mInLayout:Z

    .line 46
    iput-boolean v0, p3, Landroidx/fragment/app/K;->mAdded:Z

    .line 47
    iget-object p1, p3, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p3, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    .line 48
    iput-object p0, p3, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    .line 49
    iput-object p4, p3, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    const-string p0, "arguments"

    .line 50
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, p3, Landroidx/fragment/app/K;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/a0;Landroidx/fragment/app/A0;Ljava/lang/ClassLoader;Landroidx/fragment/app/h0;Landroid/os/Bundle;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/z0;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/z0;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/z0;->b:Landroidx/fragment/app/A0;

    const-string p1, "state"

    .line 12
    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/x0;

    .line 13
    iget-object p2, p1, Landroidx/fragment/app/x0;->d:Ljava/lang/String;

    .line 14
    invoke-virtual {p4, p2}, Landroidx/fragment/app/h0;->a(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object p2

    .line 15
    iget-object p4, p1, Landroidx/fragment/app/x0;->e:Ljava/lang/String;

    iput-object p4, p2, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    .line 16
    iget-boolean p4, p1, Landroidx/fragment/app/x0;->f:Z

    iput-boolean p4, p2, Landroidx/fragment/app/K;->mFromLayout:Z

    const/4 p4, 0x1

    .line 17
    iput-boolean p4, p2, Landroidx/fragment/app/K;->mRestored:Z

    .line 18
    iget p4, p1, Landroidx/fragment/app/x0;->g:I

    iput p4, p2, Landroidx/fragment/app/K;->mFragmentId:I

    .line 19
    iget p4, p1, Landroidx/fragment/app/x0;->h:I

    iput p4, p2, Landroidx/fragment/app/K;->mContainerId:I

    .line 20
    iget-object p4, p1, Landroidx/fragment/app/x0;->i:Ljava/lang/String;

    iput-object p4, p2, Landroidx/fragment/app/K;->mTag:Ljava/lang/String;

    .line 21
    iget-boolean p4, p1, Landroidx/fragment/app/x0;->j:Z

    iput-boolean p4, p2, Landroidx/fragment/app/K;->mRetainInstance:Z

    .line 22
    iget-boolean p4, p1, Landroidx/fragment/app/x0;->k:Z

    iput-boolean p4, p2, Landroidx/fragment/app/K;->mRemoving:Z

    .line 23
    iget-boolean p4, p1, Landroidx/fragment/app/x0;->l:Z

    iput-boolean p4, p2, Landroidx/fragment/app/K;->mDetached:Z

    .line 24
    iget-boolean p4, p1, Landroidx/fragment/app/x0;->m:Z

    iput-boolean p4, p2, Landroidx/fragment/app/K;->mHidden:Z

    .line 25
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object p4

    iget v0, p1, Landroidx/fragment/app/x0;->n:I

    aget-object p4, p4, v0

    iput-object p4, p2, Landroidx/fragment/app/K;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 26
    iget-object p4, p1, Landroidx/fragment/app/x0;->o:Ljava/lang/String;

    iput-object p4, p2, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    .line 27
    iget p4, p1, Landroidx/fragment/app/x0;->p:I

    iput p4, p2, Landroidx/fragment/app/K;->mTargetRequestCode:I

    .line 28
    iget-boolean p1, p1, Landroidx/fragment/app/x0;->q:Z

    iput-boolean p1, p2, Landroidx/fragment/app/K;->mUserVisibleHint:Z

    .line 29
    iput-object p2, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    .line 30
    iput-object p5, p2, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    const-string p0, "arguments"

    .line 31
    invoke-virtual {p5, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 33
    :cond_0
    invoke-virtual {p2, p0}, Landroidx/fragment/app/K;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x2

    .line 34
    invoke-static {p0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Instantiated fragment "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/K;->performActivityCreated(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-object v1, v0, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const v3, 0x7f0a0180

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/fragment/app/K;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/fragment/app/K;

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    move-object v2, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragment()Landroidx/fragment/app/K;

    move-result-object v1

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroidx/fragment/app/K;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Landroidx/fragment/app/K;->mContainerId:I

    sget-object v3, LT/c;->a:LT/b;

    new-instance v3, Landroidx/fragment/app/strictmode/WrongNestedHierarchyViolation;

    invoke-direct {v3, v0, v2, v1}, Landroidx/fragment/app/strictmode/WrongNestedHierarchyViolation;-><init>(Landroidx/fragment/app/K;Landroidx/fragment/app/K;I)V

    invoke-static {v3}, LT/c;->c(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {v0}, LT/c;->a(Landroidx/fragment/app/K;)LT/b;

    move-result-object v1

    iget-object v2, v1, LT/b;->a:Ljava/util/Set;

    sget-object v4, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->h:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Landroidx/fragment/app/strictmode/WrongNestedHierarchyViolation;

    invoke-static {v1, v2, v4}, LT/c;->e(LT/b;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1, v3}, LT/c;->b(LT/b;Landroidx/fragment/app/strictmode/Violation;)V

    :cond_4
    iget-object p0, p0, Landroidx/fragment/app/z0;->b:Landroidx/fragment/app/A0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object p0, p0, Landroidx/fragment/app/A0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-ltz v3, :cond_7

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/K;

    iget-object v5, v4, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-ne v5, v1, :cond_6

    iget-object v4, v4, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v4, :cond_6

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/K;

    iget-object v4, v3, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-ne v4, v1, :cond_7

    iget-object v3, v3, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v3, :cond_7

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p0, -0x1

    :goto_5
    iget-object v1, v0, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final c()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto ATTACHED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    const-string v2, " that does not belong to this FragmentManager!"

    const-string v3, " declared target fragment "

    const-string v4, "Fragment "

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/fragment/app/z0;->b:Landroidx/fragment/app/A0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    iget-object v6, v6, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/z0;

    if-eqz v0, :cond_1

    iget-object v2, v1, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    iget-object v2, v2, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    iput-object v5, v1, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    move-object v5, v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v5, v6, Landroidx/fragment/app/A0;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/fragment/app/z0;

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/fragment/app/z0;->k()V

    :cond_5
    iget-object v0, v1, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    iget-object v2, v0, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    iput-object v2, v1, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    iget-object v0, v0, Landroidx/fragment/app/p0;->w:Landroidx/fragment/app/K;

    iput-object v0, v1, Landroidx/fragment/app/K;->mParentFragment:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->g(Z)V

    invoke-virtual {v1}, Landroidx/fragment/app/K;->performAttach()V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->b(Z)V

    return-void
.end method

.method public final d()I
    .locals 14

    iget-object v0, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-object v1, v0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-nez v1, :cond_0

    iget p0, v0, Landroidx/fragment/app/K;->mState:I

    return p0

    :cond_0
    iget v1, p0, Landroidx/fragment/app/z0;->e:I

    iget-object v2, v0, Landroidx/fragment/app/K;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v7, :cond_4

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-boolean v2, v0, Landroidx/fragment/app/K;->mFromLayout:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Landroidx/fragment/app/K;->mInLayout:Z

    if-eqz v2, :cond_5

    iget p0, p0, Landroidx/fragment/app/z0;->e:I

    invoke-static {p0, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object p0, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_7

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget p0, p0, Landroidx/fragment/app/z0;->e:I

    if-ge p0, v7, :cond_6

    iget p0, v0, Landroidx/fragment/app/K;->mState:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-boolean p0, v0, Landroidx/fragment/app/K;->mAdded:Z

    if-nez p0, :cond_8

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-object p0, v0, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz p0, :cond_f

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v10

    invoke-static {p0, v10}, Landroidx/fragment/app/U0;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/p0;)Landroidx/fragment/app/U0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "fragmentStateManager.fragment"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/U0;->h(Landroidx/fragment/app/K;)Landroidx/fragment/app/S0;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v10, v10, Landroidx/fragment/app/S0;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    goto :goto_2

    :cond_9
    move-object v10, v2

    :goto_2
    iget-object p0, p0, Landroidx/fragment/app/U0;->c:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/fragment/app/S0;

    iget-object v13, v12, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    invoke-static {v13, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    iget-boolean v12, v12, Landroidx/fragment/app/S0;->f:Z

    if-nez v12, :cond_b

    move v12, v9

    goto :goto_3

    :cond_b
    move v12, v3

    :goto_3
    if-eqz v12, :cond_a

    goto :goto_4

    :cond_c
    move-object v11, v2

    :goto_4
    check-cast v11, Landroidx/fragment/app/S0;

    if-eqz v11, :cond_d

    iget-object v2, v11, Landroidx/fragment/app/S0;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    :cond_d
    if-nez v10, :cond_e

    move p0, v6

    goto :goto_5

    :cond_e
    sget-object p0, Landroidx/fragment/app/T0;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p0, p0, v3

    :goto_5
    if-eq p0, v6, :cond_f

    if-eq p0, v9, :cond_f

    move-object v2, v10

    :cond_f
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    if-ne v2, p0, :cond_10

    const/4 p0, 0x6

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6

    :cond_10
    sget-object p0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->f:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    if-ne v2, p0, :cond_11

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_6

    :cond_11
    iget-boolean p0, v0, Landroidx/fragment/app/K;->mRemoving:Z

    if-eqz p0, :cond_13

    invoke-virtual {v0}, Landroidx/fragment/app/K;->isInBackStack()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6

    :cond_12
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_13
    :goto_6
    iget-boolean p0, v0, Landroidx/fragment/app/K;->mDeferStart:Z

    if-eqz p0, :cond_14

    iget p0, v0, Landroidx/fragment/app/K;->mState:I

    if-ge p0, v4, :cond_14

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_14
    invoke-static {v8}, Landroidx/fragment/app/p0;->H(I)Z

    move-result p0

    if-eqz p0, :cond_15

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "computeExpectedState() of "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return v1
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, v1, Landroidx/fragment/app/K;->mIsCreated:Z

    if-nez v2, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/a0;->h(Z)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/K;->performCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/a0;->c(Z)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    iput p0, v1, Landroidx/fragment/app/K;->mState:I

    invoke-virtual {v1}, Landroidx/fragment/app/K;->restoreChildFragmentState()V

    :goto_1
    return-void
.end method

.method public final f()V
    .locals 9

    iget-object v0, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-boolean v1, v0, Landroidx/fragment/app/K;->mFromLayout:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATE_VIEW: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v4, "savedInstanceState"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/K;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, v0, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    move-object v3, v5

    goto/16 :goto_2

    :cond_3
    iget v5, v0, Landroidx/fragment/app/K;->mContainerId:I

    if-eqz v5, :cond_7

    const/4 v3, -0x1

    if-eq v5, v3, :cond_6

    iget-object v3, v0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    iget-object v3, v3, Landroidx/fragment/app/p0;->v:Landroidx/fragment/app/U;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/U;->b(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_5

    iget-boolean v5, v0, Landroidx/fragment/app/K;->mRestored:Z

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/K;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, v0, Landroidx/fragment/app/K;->mContainerId:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "unknown"

    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No view found for id 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroidx/fragment/app/K;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") for fragment "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    instance-of v5, v3, Landroidx/fragment/app/FragmentContainerView;

    if-nez v5, :cond_7

    sget-object v5, LT/c;->a:LT/b;

    new-instance v5, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;

    invoke-direct {v5, v0, v3}, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;-><init>(Landroidx/fragment/app/K;Landroid/view/ViewGroup;)V

    invoke-static {v5}, LT/c;->c(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {v0}, LT/c;->a(Landroidx/fragment/app/K;)LT/b;

    move-result-object v6

    iget-object v7, v6, LT/b;->a:Ljava/util/Set;

    sget-object v8, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->l:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;

    invoke-static {v6, v7, v8}, LT/c;->e(LT/b;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v6, v5}, LT/c;->b(LT/b;Landroidx/fragment/app/strictmode/Violation;)V

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create fragment "

    const-string v2, " for a container view with no id"

    invoke-static {v1, v0, v2}, Landroidx/fragment/app/B;->a(Ljava/lang/String;Landroidx/fragment/app/K;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    iput-object v3, v0, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v3, v1}, Landroidx/fragment/app/K;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const/4 v4, 0x2

    if-eqz v1, :cond_c

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const v6, 0x7f0a0180

    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/z0;->b()V

    :cond_8
    iget-boolean v1, v0, Landroidx/fragment/app/K;->mHidden:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    sget-object v3, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/A;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/B;->c(Landroid/view/View;)V

    goto :goto_3

    :cond_a
    iget-object v1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    new-instance v3, Landroidx/fragment/app/y0;

    invoke-direct {v3, v1}, Landroidx/fragment/app/y0;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_3
    invoke-virtual {v0}, Landroidx/fragment/app/K;->performViewCreated()V

    iget-object p0, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    invoke-virtual {p0, v5}, Landroidx/fragment/app/a0;->m(Z)V

    iget-object p0, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    iget-object v1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/K;->setPostOnViewCreatedAlpha(F)V

    iget-object v1, v0, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    if-nez p0, :cond_c

    iget-object p0, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {v0, p0}, Landroidx/fragment/app/K;->setFocusedView(Landroid/view/View;)V

    invoke-static {v4}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "requestFocus: Saved focused view "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for Fragment "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object p0, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    iput v4, v0, Landroidx/fragment/app/K;->mState:I

    return-void
.end method

.method public final g()V
    .locals 9

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/K;->mRemoving:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/K;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/fragment/app/z0;->b:Landroidx/fragment/app/A0;

    if-eqz v0, :cond_2

    iget-boolean v6, v1, Landroidx/fragment/app/K;->mBeingSaved:Z

    if-nez v6, :cond_2

    iget-object v6, v1, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroidx/fragment/app/A0;->i(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_2
    if-nez v0, :cond_6

    iget-object v6, v5, Landroidx/fragment/app/A0;->d:Landroidx/fragment/app/u0;

    iget-object v7, v6, Landroidx/fragment/app/u0;->d:Ljava/util/HashMap;

    iget-object v8, v1, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move v6, v2

    goto :goto_1

    :cond_4
    iget-boolean v7, v6, Landroidx/fragment/app/u0;->g:Z

    if-eqz v7, :cond_3

    iget-boolean v6, v6, Landroidx/fragment/app/u0;->h:Z

    :goto_1
    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v6, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v6, v2

    :goto_3
    if-eqz v6, :cond_f

    iget-object v6, v1, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    instance-of v7, v6, Landroidx/lifecycle/V;

    if-eqz v7, :cond_7

    iget-object v2, v5, Landroidx/fragment/app/A0;->d:Landroidx/fragment/app/u0;

    iget-boolean v2, v2, Landroidx/fragment/app/u0;->h:Z

    goto :goto_4

    :cond_7
    iget-object v6, v6, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    instance-of v7, v6, Landroid/app/Activity;

    if-eqz v7, :cond_8

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v6

    xor-int/2addr v2, v6

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    iget-boolean v0, v1, Landroidx/fragment/app/K;->mBeingSaved:Z

    if-eqz v0, :cond_a

    :cond_9
    if-eqz v2, :cond_b

    :cond_a
    iget-object v0, v5, Landroidx/fragment/app/A0;->d:Landroidx/fragment/app/u0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/u0;->d(Landroidx/fragment/app/K;)V

    :cond_b
    invoke-virtual {v1}, Landroidx/fragment/app/K;->performDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/a0;->d(Z)V

    invoke-virtual {v5}, Landroidx/fragment/app/A0;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/z0;

    if-eqz v2, :cond_c

    iget-object v3, v1, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    iget-object v2, v2, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-object v6, v2, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iput-object v1, v2, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    iput-object v4, v2, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    goto :goto_5

    :cond_d
    iget-object v0, v1, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v5, v0}, Landroidx/fragment/app/A0;->b(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object v0

    iput-object v0, v1, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    :cond_e
    invoke-virtual {v5, p0}, Landroidx/fragment/app/A0;->h(Landroidx/fragment/app/z0;)V

    goto :goto_6

    :cond_f
    iget-object p0, v1, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    if-eqz p0, :cond_10

    invoke-virtual {v5, p0}, Landroidx/fragment/app/A0;->b(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object p0

    if-eqz p0, :cond_10

    iget-boolean v0, p0, Landroidx/fragment/app/K;->mRetainInstance:Z

    if-eqz v0, :cond_10

    iput-object p0, v1, Landroidx/fragment/app/K;->mTarget:Landroidx/fragment/app/K;

    :cond_10
    iput v3, v1, Landroidx/fragment/app/K;->mState:I

    :goto_6
    return-void
.end method

.method public final h()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATE_VIEW: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, v1, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/K;->performDestroyView()V

    iget-object p0, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a0;->n(Z)V

    const/4 p0, 0x0

    iput-object p0, v1, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    iput-object p0, v1, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    iput-object p0, v1, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    iget-object v2, v1, Landroidx/fragment/app/K;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/y;

    invoke-virtual {v2, p0}, Landroidx/lifecycle/y;->h(Ljava/lang/Object;)V

    iput-boolean v0, v1, Landroidx/fragment/app/K;->mInLayout:Z

    return-void
.end method

.method public final i()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "movefrom ATTACHED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v3}, Landroidx/fragment/app/K;->performDetach()V

    iget-object v1, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/fragment/app/a0;->e(Z)V

    const/4 v1, -0x1

    iput v1, v3, Landroidx/fragment/app/K;->mState:I

    const/4 v1, 0x0

    iput-object v1, v3, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    iput-object v1, v3, Landroidx/fragment/app/K;->mParentFragment:Landroidx/fragment/app/K;

    iput-object v1, v3, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    iget-boolean v1, v3, Landroidx/fragment/app/K;->mRemoving:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/K;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_1

    move v4, v5

    :cond_1
    if-nez v4, :cond_4

    iget-object p0, p0, Landroidx/fragment/app/z0;->b:Landroidx/fragment/app/A0;

    iget-object p0, p0, Landroidx/fragment/app/A0;->d:Landroidx/fragment/app/u0;

    iget-object v1, p0, Landroidx/fragment/app/u0;->d:Ljava/util/HashMap;

    iget-object v4, v3, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Landroidx/fragment/app/u0;->g:Z

    if-eqz v1, :cond_3

    iget-boolean v5, p0, Landroidx/fragment/app/u0;->h:Z

    :cond_3
    :goto_0
    if-eqz v5, :cond_6

    :cond_4
    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "initState called for fragment: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/K;->initState()V

    :cond_6
    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-boolean v1, v0, Landroidx/fragment/app/K;->mFromLayout:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Landroidx/fragment/app/K;->mInLayout:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Landroidx/fragment/app/K;->mPerformedCreateView:Z

    if-nez v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATE_VIEW: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "savedInstanceState"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/K;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/K;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const v3, 0x7f0a0180

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v1, v0, Landroidx/fragment/app/K;->mHidden:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/K;->performViewCreated()V

    iget-object p0, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/a0;->m(Z)V

    const/4 p0, 0x2

    iput p0, v0, Landroidx/fragment/app/K;->mState:I

    :cond_3
    return-void
.end method

.method public final k()V
    .locals 10

    iget-boolean v0, p0, Landroidx/fragment/app/z0;->d:Z

    const/4 v1, 0x2

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroidx/fragment/app/p0;->H(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/z0;->d:Z

    move v5, v4

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/z0;->d()I

    move-result v6

    iget v7, v3, Landroidx/fragment/app/K;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Landroidx/fragment/app/z0;->b:Landroidx/fragment/app/A0;

    const/4 v9, 0x3

    if-eq v6, v7, :cond_f

    iget-object v5, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    if-le v6, v7, :cond_7

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/z0;->m()V

    goto/16 :goto_3

    :pswitch_1
    const/4 v5, 0x6

    iput v5, v3, Landroidx/fragment/app/K;->mState:I

    goto/16 :goto_3

    :pswitch_2
    invoke-static {v9}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "moveto STARTED: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/K;->performStart()V

    invoke-virtual {v5, v4}, Landroidx/fragment/app/a0;->k(Z)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v5, v3, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const/4 v6, 0x4

    if-eqz v5, :cond_6

    iget-object v5, v3, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v7

    invoke-static {v5, v7}, Landroidx/fragment/app/U0;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/p0;)Landroidx/fragment/app/U0;

    move-result-object v5

    iget-object v7, v3, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_5

    if-eq v7, v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    sget-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->f:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown visibility "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->g:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    goto :goto_1

    :cond_5
    sget-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    :goto_1
    invoke-virtual {v5, v7, p0}, Landroidx/fragment/app/U0;->b(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/z0;)V

    :cond_6
    iput v6, v3, Landroidx/fragment/app/K;->mState:I

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/z0;->a()V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/z0;->j()V

    invoke-virtual {p0}, Landroidx/fragment/app/z0;->f()V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/z0;->e()V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/z0;->c()V

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v7, v7, -0x1

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_8
    invoke-static {v9}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "movefrom RESUMED: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v3}, Landroidx/fragment/app/K;->performPause()V

    invoke-virtual {v5, v4}, Landroidx/fragment/app/a0;->f(Z)V

    goto/16 :goto_3

    :pswitch_9
    const/4 v5, 0x5

    iput v5, v3, Landroidx/fragment/app/K;->mState:I

    goto/16 :goto_3

    :pswitch_a
    invoke-static {v9}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "movefrom STARTED: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v3}, Landroidx/fragment/app/K;->performStop()V

    invoke-virtual {v5, v4}, Landroidx/fragment/app/a0;->l(Z)V

    goto/16 :goto_3

    :pswitch_b
    invoke-static {v9}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean v5, v3, Landroidx/fragment/app/K;->mBeingSaved:Z

    if-eqz v5, :cond_b

    iget-object v5, v3, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/z0;->n()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroidx/fragment/app/A0;->i(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_2

    :cond_b
    iget-object v5, v3, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v5, :cond_c

    iget-object v5, v3, Landroidx/fragment/app/K;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v5, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/z0;->o()V

    :cond_c
    :goto_2
    iget-object v5, v3, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v5, :cond_d

    iget-object v5, v3, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/fragment/app/U0;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/p0;)Landroidx/fragment/app/U0;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroidx/fragment/app/U0;->d(Landroidx/fragment/app/z0;)V

    :cond_d
    iput v9, v3, Landroidx/fragment/app/K;->mState:I

    goto :goto_3

    :pswitch_c
    iput-boolean v4, v3, Landroidx/fragment/app/K;->mInLayout:Z

    iput v1, v3, Landroidx/fragment/app/K;->mState:I

    goto :goto_3

    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/z0;->h()V

    iput v0, v3, Landroidx/fragment/app/K;->mState:I

    goto :goto_3

    :pswitch_e
    iget-boolean v5, v3, Landroidx/fragment/app/K;->mBeingSaved:Z

    if-eqz v5, :cond_e

    iget-object v5, v3, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    iget-object v6, v8, Landroidx/fragment/app/A0;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    if-nez v5, :cond_e

    iget-object v5, v3, Landroidx/fragment/app/K;->mWho:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/z0;->n()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroidx/fragment/app/A0;->i(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/z0;->g()V

    goto :goto_3

    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/z0;->i()V

    :goto_3
    move v5, v0

    goto/16 :goto_0

    :cond_f
    if-nez v5, :cond_12

    const/4 v1, -0x1

    if-ne v7, v1, :cond_12

    iget-boolean v1, v3, Landroidx/fragment/app/K;->mRemoving:Z

    if-eqz v1, :cond_12

    invoke-virtual {v3}, Landroidx/fragment/app/K;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_12

    iget-boolean v1, v3, Landroidx/fragment/app/K;->mBeingSaved:Z

    if-nez v1, :cond_12

    invoke-static {v9}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up state of never attached fragment: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v1, v8, Landroidx/fragment/app/A0;->d:Landroidx/fragment/app/u0;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/u0;->d(Landroidx/fragment/app/K;)V

    invoke-virtual {v8, p0}, Landroidx/fragment/app/A0;->h(Landroidx/fragment/app/z0;)V

    invoke-static {v9}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initState called for fragment: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v3}, Landroidx/fragment/app/K;->initState()V

    :cond_12
    iget-boolean v1, v3, Landroidx/fragment/app/K;->mHiddenChanged:Z

    if-eqz v1, :cond_16

    iget-object v1, v3, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v1, :cond_14

    iget-object v1, v3, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_14

    invoke-virtual {v3}, Landroidx/fragment/app/K;->getParentFragmentManager()Landroidx/fragment/app/p0;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/fragment/app/U0;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/p0;)Landroidx/fragment/app/U0;

    move-result-object v1

    iget-boolean v2, v3, Landroidx/fragment/app/K;->mHidden:Z

    if-eqz v2, :cond_13

    invoke-virtual {v1, p0}, Landroidx/fragment/app/U0;->c(Landroidx/fragment/app/z0;)V

    goto :goto_4

    :cond_13
    invoke-virtual {v1, p0}, Landroidx/fragment/app/U0;->e(Landroidx/fragment/app/z0;)V

    :cond_14
    :goto_4
    iget-object v1, v3, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    if-eqz v1, :cond_15

    iget-boolean v2, v3, Landroidx/fragment/app/K;->mAdded:Z

    if-eqz v2, :cond_15

    invoke-static {v3}, Landroidx/fragment/app/p0;->I(Landroidx/fragment/app/K;)Z

    move-result v2

    if-eqz v2, :cond_15

    iput-boolean v0, v1, Landroidx/fragment/app/p0;->E:Z

    :cond_15
    iput-boolean v4, v3, Landroidx/fragment/app/K;->mHiddenChanged:Z

    iget-boolean v0, v3, Landroidx/fragment/app/K;->mHidden:Z

    invoke-virtual {v3, v0}, Landroidx/fragment/app/K;->onHiddenChanged(Z)V

    iget-object v0, v3, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_16
    iput-boolean v4, p0, Landroidx/fragment/app/z0;->d:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Landroidx/fragment/app/z0;->d:Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l(Ljava/lang/ClassLoader;)V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v0, "savedInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v0, "viewState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/K;->mSavedViewState:Landroid/util/SparseArray;

    iget-object p1, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v0, "viewRegistryState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/K;->mSavedViewRegistryState:Landroid/os/Bundle;

    iget-object p1, p0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/x0;

    if-eqz p1, :cond_3

    iget-object v0, p1, Landroidx/fragment/app/x0;->o:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/K;->mTargetWho:Ljava/lang/String;

    iget v0, p1, Landroidx/fragment/app/x0;->p:I

    iput v0, p0, Landroidx/fragment/app/K;->mTargetRequestCode:I

    iget-object v0, p0, Landroidx/fragment/app/K;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/fragment/app/K;->mUserVisibleHint:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/K;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-boolean p1, p1, Landroidx/fragment/app/x0;->q:Z

    iput-boolean p1, p0, Landroidx/fragment/app/K;->mUserVisibleHint:Z

    :cond_3
    :goto_0
    iget-boolean p1, p0, Landroidx/fragment/app/K;->mUserVisibleHint:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/K;->mDeferStart:Z

    :cond_4
    return-void
.end method

.method public final m()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    iget-object v2, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto RESUMED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/K;->getFocusedView()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v4, v2, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, v2, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-ne v4, v5, :cond_2

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v4

    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestFocus: Restoring focused view "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    const-string v0, "succeeded"

    goto :goto_3

    :cond_4
    const-string v0, "failed"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/fragment/app/K;->setFocusedView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroidx/fragment/app/K;->performResume()V

    iget-object p0, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/a0;->i(Z)V

    iput-object v0, v2, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v0, v2, Landroidx/fragment/app/K;->mSavedViewState:Landroid/util/SparseArray;

    iput-object v0, v2, Landroidx/fragment/app/K;->mSavedViewRegistryState:Landroid/os/Bundle;

    return-void
.end method

.method public final n()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget v2, v1, Landroidx/fragment/app/K;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v2, Landroidx/fragment/app/x0;

    invoke-direct {v2, v1}, Landroidx/fragment/app/x0;-><init>(Landroidx/fragment/app/K;)V

    const-string v4, "state"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v2, v1, Landroidx/fragment/app/K;->mState:I

    if-le v2, v3, :cond_6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/K;->performSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "savedInstanceState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v2, p0, Landroidx/fragment/app/z0;->a:Landroidx/fragment/app/a0;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/fragment/app/a0;->j(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Landroidx/fragment/app/K;->mSavedStateRegistryController:La0/f;

    invoke-virtual {v3, v2}, La0/f;->c(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "registryState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/K;->mChildFragmentManager:Landroidx/fragment/app/p0;

    invoke-virtual {v2}, Landroidx/fragment/app/p0;->U()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "childFragmentManager"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/z0;->o()V

    :cond_4
    iget-object p0, v1, Landroidx/fragment/app/K;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz p0, :cond_5

    const-string v2, "viewState"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_5
    iget-object p0, v1, Landroidx/fragment/app/K;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz p0, :cond_6

    const-string v2, "viewRegistryState"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iget-object p0, v1, Landroidx/fragment/app/K;->mArguments:Landroid/os/Bundle;

    if-eqz p0, :cond_7

    const-string v1, "arguments"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    return-object v0
.end method

.method public final o()V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    iget-object v0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving view state for fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iput-object v0, p0, Landroidx/fragment/app/K;->mSavedViewState:Landroid/util/SparseArray;

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/K;->mViewLifecycleOwner:Landroidx/fragment/app/K0;

    iget-object v1, v1, Landroidx/fragment/app/K0;->h:La0/f;

    invoke-virtual {v1, v0}, La0/f;->c(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iput-object v0, p0, Landroidx/fragment/app/K;->mSavedViewRegistryState:Landroid/os/Bundle;

    :cond_3
    return-void
.end method
