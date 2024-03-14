.class public final Landroidx/fragment/app/l;
.super Landroidx/fragment/app/m;
.source "SourceFile"


# instance fields
.field public final c:Z

.field public d:Z

.field public e:Landroidx/fragment/app/Q;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/S0;LI/d;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/S0;LI/d;)V

    iput-boolean p3, p0, Landroidx/fragment/app/l;->c:Z

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Landroidx/fragment/app/Q;
    .locals 9

    iget-boolean v0, p0, Landroidx/fragment/app/l;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/l;->e:Landroidx/fragment/app/Q;

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/S0;

    iget-object v1, v0, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    iget-object v0, v0, Landroidx/fragment/app/S0;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/K;->getNextTransition()I

    move-result v2

    iget-boolean v5, p0, Landroidx/fragment/app/l;->c:Z

    if-eqz v5, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/K;->getPopEnterAnim()I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/K;->getPopExitAnim()I

    move-result v5

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroidx/fragment/app/K;->getEnterAnim()I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/K;->getExitAnim()I

    move-result v5

    :goto_1
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/K;->setAnimations(IIII)V

    iget-object v6, v1, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    const v8, 0x7f0a03d0

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, v1, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8, v7}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_5
    iget-object v6, v1, Landroidx/fragment/app/K;->mContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v6

    if-eqz v6, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v1, v2, v0, v5}, Landroidx/fragment/app/K;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_7

    new-instance p1, Landroidx/fragment/app/Q;

    invoke-direct {p1, v6}, Landroidx/fragment/app/Q;-><init>(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v1, v2, v0, v5}, Landroidx/fragment/app/K;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance p1, Landroidx/fragment/app/Q;

    invoke-direct {p1, v1}, Landroidx/fragment/app/Q;-><init>(Landroid/animation/Animator;)V

    goto/16 :goto_6

    :cond_8
    if-nez v5, :cond_13

    if-eqz v2, :cond_13

    const/16 v1, 0x1001

    if-eq v2, v1, :cond_11

    const/16 v1, 0x2002

    if-eq v2, v1, :cond_f

    const/16 v1, 0x2005

    if-eq v2, v1, :cond_d

    const/16 v1, 0x1003

    if-eq v2, v1, :cond_b

    const/16 v1, 0x1004

    if-eq v2, v1, :cond_9

    const/4 v0, -0x1

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_a

    const v0, 0x10100b8

    invoke-static {v0, p1}, Landroidx/fragment/app/T;->a(ILandroid/content/Context;)I

    move-result v0

    goto :goto_2

    :cond_a
    const v0, 0x10100b9

    invoke-static {v0, p1}, Landroidx/fragment/app/T;->a(ILandroid/content/Context;)I

    move-result v0

    goto :goto_2

    :cond_b
    if-eqz v0, :cond_c

    const v0, 0x7f020007

    goto :goto_2

    :cond_c
    const v0, 0x7f020008

    goto :goto_2

    :cond_d
    if-eqz v0, :cond_e

    const v0, 0x10100ba

    invoke-static {v0, p1}, Landroidx/fragment/app/T;->a(ILandroid/content/Context;)I

    move-result v0

    goto :goto_2

    :cond_e
    const v0, 0x10100bb

    invoke-static {v0, p1}, Landroidx/fragment/app/T;->a(ILandroid/content/Context;)I

    move-result v0

    goto :goto_2

    :cond_f
    if-eqz v0, :cond_10

    const v0, 0x7f020005

    goto :goto_2

    :cond_10
    const v0, 0x7f020006

    goto :goto_2

    :cond_11
    if-eqz v0, :cond_12

    const v0, 0x7f020009

    goto :goto_2

    :cond_12
    const v0, 0x7f02000a

    :goto_2
    move v5, v0

    :cond_13
    if-eqz v5, :cond_17

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "anim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_0
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v2, Landroidx/fragment/app/Q;

    invoke-direct {v2, v1}, Landroidx/fragment/app/Q;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :cond_14
    move v3, v4

    goto :goto_3

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_15
    :goto_3
    if-nez v3, :cond_17

    :try_start_1
    invoke-static {p1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_17

    new-instance v2, Landroidx/fragment/app/Q;

    invoke-direct {v2, v1}, Landroidx/fragment/app/Q;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    move-object p1, v2

    goto :goto_6

    :catch_2
    move-exception v1

    if-nez v0, :cond_16

    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_17

    new-instance v0, Landroidx/fragment/app/Q;

    invoke-direct {v0, p1}, Landroidx/fragment/app/Q;-><init>(Landroid/view/animation/Animation;)V

    move-object p1, v0

    goto :goto_6

    :cond_16
    throw v1

    :cond_17
    :goto_5
    move-object p1, v7

    :goto_6
    iput-object p1, p0, Landroidx/fragment/app/l;->e:Landroidx/fragment/app/Q;

    iput-boolean v4, p0, Landroidx/fragment/app/l;->d:Z

    move-object p0, p1

    :goto_7
    return-object p0
.end method
