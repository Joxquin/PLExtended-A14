.class public final Landroidx/fragment/app/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final d:Landroidx/fragment/app/p0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/Y;->d:Landroidx/fragment/app/p0;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .line 2
    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Landroidx/fragment/app/FragmentContainerView;

    iget-object p0, p0, Landroidx/fragment/app/Y;->d:Landroidx/fragment/app/p0;

    invoke-direct {p1, p3, p4, p0}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/p0;)V

    return-object p1

    :cond_0
    const-string v0, "fragment"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "class"

    .line 5
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    sget-object v1, LS/a;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 8
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x2

    .line 9
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_12

    .line 11
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 12
    :try_start_0
    invoke-static {v1, p2}, Landroidx/fragment/app/h0;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 13
    const-class v8, Landroidx/fragment/app/K;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    :cond_4
    if-ne v2, v4, :cond_6

    if-ne v5, v4, :cond_6

    if-eqz v7, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    if-eq v5, v4, :cond_7

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/Y;->d:Landroidx/fragment/app/p0;

    invoke-virtual {v0, v5}, Landroidx/fragment/app/p0;->B(I)Landroidx/fragment/app/K;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    if-eqz v7, :cond_8

    .line 17
    iget-object v0, p0, Landroidx/fragment/app/Y;->d:Landroidx/fragment/app/p0;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/p0;->C(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_9

    if-eq v2, v4, :cond_9

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/Y;->d:Landroidx/fragment/app/p0;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/p0;->B(I)Landroidx/fragment/app/K;

    move-result-object v0

    :cond_9
    const-string v1, "Fragment "

    const-string v4, "FragmentManager"

    if-nez v0, :cond_b

    .line 19
    iget-object v0, p0, Landroidx/fragment/app/Y;->d:Landroidx/fragment/app/p0;

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->E()Landroidx/fragment/app/h0;

    move-result-object v0

    .line 20
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 21
    invoke-virtual {v0, p2}, Landroidx/fragment/app/h0;->a(Ljava/lang/String;)Landroidx/fragment/app/K;

    move-result-object v0

    .line 22
    iput-boolean v3, v0, Landroidx/fragment/app/K;->mFromLayout:Z

    if-eqz v5, :cond_a

    move p3, v5

    goto :goto_2

    :cond_a
    move p3, v2

    .line 23
    :goto_2
    iput p3, v0, Landroidx/fragment/app/K;->mFragmentId:I

    .line 24
    iput v2, v0, Landroidx/fragment/app/K;->mContainerId:I

    .line 25
    iput-object v7, v0, Landroidx/fragment/app/K;->mTag:Ljava/lang/String;

    .line 26
    iput-boolean v3, v0, Landroidx/fragment/app/K;->mInLayout:Z

    .line 27
    iget-object p3, p0, Landroidx/fragment/app/Y;->d:Landroidx/fragment/app/p0;

    iput-object p3, v0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    .line 28
    iget-object p3, p3, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    .line 29
    iput-object p3, v0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    .line 30
    iget-object p3, p3, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    .line 31
    iget-object v2, v0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, p3, p4, v2}, Landroidx/fragment/app/K;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 32
    iget-object p3, p0, Landroidx/fragment/app/Y;->d:Landroidx/fragment/app/p0;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/p0;->a(Landroidx/fragment/app/K;)Landroidx/fragment/app/z0;

    move-result-object p3

    .line 33
    invoke-static {v6}, Landroidx/fragment/app/p0;->H(I)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 34
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 36
    invoke-static {v4, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 37
    :cond_b
    iget-boolean p3, v0, Landroidx/fragment/app/K;->mInLayout:Z

    if-nez p3, :cond_11

    .line 38
    iput-boolean v3, v0, Landroidx/fragment/app/K;->mInLayout:Z

    .line 39
    iget-object p3, p0, Landroidx/fragment/app/Y;->d:Landroidx/fragment/app/p0;

    iput-object p3, v0, Landroidx/fragment/app/K;->mFragmentManager:Landroidx/fragment/app/p0;

    .line 40
    iget-object p3, p3, Landroidx/fragment/app/p0;->u:Landroidx/fragment/app/W;

    .line 41
    iput-object p3, v0, Landroidx/fragment/app/K;->mHost:Landroidx/fragment/app/W;

    .line 42
    iget-object p3, p3, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    .line 43
    iget-object v2, v0, Landroidx/fragment/app/K;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, p3, p4, v2}, Landroidx/fragment/app/K;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 44
    iget-object p3, p0, Landroidx/fragment/app/Y;->d:Landroidx/fragment/app/p0;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/p0;->f(Landroidx/fragment/app/K;)Landroidx/fragment/app/z0;

    move-result-object p3

    .line 45
    invoke-static {v6}, Landroidx/fragment/app/p0;->H(I)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 46
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "Retained Fragment "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 48
    invoke-static {v4, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_c
    :goto_3
    check-cast p1, Landroid/view/ViewGroup;

    sget-object p4, LT/c;->a:LT/b;

    .line 50
    new-instance p4, Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;

    invoke-direct {p4, v0, p1}, Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;-><init>(Landroidx/fragment/app/K;Landroid/view/ViewGroup;)V

    .line 51
    invoke-static {p4}, LT/c;->c(Landroidx/fragment/app/strictmode/Violation;)V

    .line 52
    invoke-static {v0}, LT/c;->a(Landroidx/fragment/app/K;)LT/b;

    move-result-object v2

    .line 53
    iget-object v3, v2, LT/b;->a:Ljava/util/Set;

    .line 54
    sget-object v4, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->g:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroidx/fragment/app/strictmode/FragmentTagUsageViolation;

    invoke-static {v2, v3, v4}, LT/c;->e(LT/b;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 56
    invoke-static {v2, p4}, LT/c;->b(LT/b;Landroidx/fragment/app/strictmode/Violation;)V

    .line 57
    :cond_d
    iput-object p1, v0, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    .line 58
    invoke-virtual {p3}, Landroidx/fragment/app/z0;->k()V

    .line 59
    invoke-virtual {p3}, Landroidx/fragment/app/z0;->j()V

    .line 60
    iget-object p1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    if-eqz p1, :cond_10

    if-eqz v5, :cond_e

    .line 61
    invoke-virtual {p1, v5}, Landroid/view/View;->setId(I)V

    .line 62
    :cond_e
    iget-object p1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_f

    .line 63
    iget-object p1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :cond_f
    iget-object p1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    new-instance p2, Landroidx/fragment/app/X;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/X;-><init>(Landroidx/fragment/app/Y;Landroidx/fragment/app/z0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 65
    iget-object p0, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    return-object p0

    .line 66
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, " did not create a view."

    .line 67
    invoke-static {v1, p2, p1}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Duplicate id 0x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", tag "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", or parent id 0x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " with another fragment for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_4
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/Y;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
