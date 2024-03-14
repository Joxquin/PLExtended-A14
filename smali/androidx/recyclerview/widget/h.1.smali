.class public final Landroidx/recyclerview/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Landroidx/recyclerview/widget/n;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/n;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, Landroidx/recyclerview/widget/h;->d:I

    iput-object p1, p0, Landroidx/recyclerview/widget/h;->f:Landroidx/recyclerview/widget/n;

    iput-object p2, p0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/recyclerview/widget/h;->d:I

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/l;

    iget-object v11, v0, Landroidx/recyclerview/widget/h;->f:Landroidx/recyclerview/widget/n;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Landroidx/recyclerview/widget/l;->a:Landroidx/recyclerview/widget/E0;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v9, v6

    goto :goto_1

    :cond_0
    iget-object v5, v5, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    move-object v9, v5

    :goto_1
    iget-object v5, v4, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/E0;

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    move-object v12, v5

    goto :goto_2

    :cond_1
    move-object v12, v6

    :goto_2
    iget-object v13, v11, Landroidx/recyclerview/widget/n;->r:Ljava/util/ArrayList;

    iget-wide v14, v11, Landroidx/recyclerview/widget/h0;->f:J

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v5, v4, Landroidx/recyclerview/widget/l;->a:Landroidx/recyclerview/widget/E0;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v4, Landroidx/recyclerview/widget/l;->e:I

    iget v6, v4, Landroidx/recyclerview/widget/l;->c:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v8, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget v5, v4, Landroidx/recyclerview/widget/l;->f:I

    iget v6, v4, Landroidx/recyclerview/widget/l;->d:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v8, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v8, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    new-instance v7, Landroidx/recyclerview/widget/k;

    const/16 v16, 0x0

    move-object v5, v7

    move-object v6, v11

    move-object v2, v7

    move-object v7, v4

    move-object v3, v10

    move/from16 v10, v16

    invoke-direct/range {v5 .. v10}, Landroidx/recyclerview/widget/k;-><init>(Landroidx/recyclerview/widget/n;Landroidx/recyclerview/widget/l;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v2, v4, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/E0;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/k;

    const/4 v10, 0x1

    move-object v5, v3

    move-object v6, v11

    move-object v7, v4

    move-object v9, v12

    invoke-direct/range {v5 .. v10}, Landroidx/recyclerview/widget/k;-><init>(Landroidx/recyclerview/widget/n;Landroidx/recyclerview/widget/l;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Landroidx/recyclerview/widget/h;->f:Landroidx/recyclerview/widget/n;

    iget-object v1, v1, Landroidx/recyclerview/widget/n;->n:Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/m;

    iget-object v4, v0, Landroidx/recyclerview/widget/h;->f:Landroidx/recyclerview/widget/n;

    iget-object v5, v2, Landroidx/recyclerview/widget/m;->a:Landroidx/recyclerview/widget/E0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v5, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    iget v3, v2, Landroidx/recyclerview/widget/m;->d:I

    iget v6, v2, Landroidx/recyclerview/widget/m;->b:I

    sub-int v6, v3, v6

    iget v3, v2, Landroidx/recyclerview/widget/m;->e:I

    iget v2, v2, Landroidx/recyclerview/widget/m;->c:I

    sub-int v8, v3, v2

    if-eqz v6, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-eqz v8, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v2, v4, Landroidx/recyclerview/widget/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, v4, Landroidx/recyclerview/widget/h0;->e:J

    invoke-virtual {v9, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v11, Landroidx/recyclerview/widget/j;

    move-object v3, v11

    invoke-direct/range {v3 .. v9}, Landroidx/recyclerview/widget/j;-><init>(Landroidx/recyclerview/widget/n;Landroidx/recyclerview/widget/E0;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v2, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_7
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Landroidx/recyclerview/widget/h;->f:Landroidx/recyclerview/widget/n;

    iget-object v1, v1, Landroidx/recyclerview/widget/n;->m:Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :goto_5
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/E0;

    iget-object v3, v0, Landroidx/recyclerview/widget/h;->f:Landroidx/recyclerview/widget/n;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, v3, Landroidx/recyclerview/widget/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    iget-wide v8, v3, Landroidx/recyclerview/widget/h0;->c:J

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Landroidx/recyclerview/widget/i;

    invoke-direct {v8, v3, v2, v4, v5}, Landroidx/recyclerview/widget/i;-><init>(Landroidx/recyclerview/widget/n;Landroidx/recyclerview/widget/E0;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    :cond_8
    iget-object v1, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Landroidx/recyclerview/widget/h;->f:Landroidx/recyclerview/widget/n;

    iget-object v1, v1, Landroidx/recyclerview/widget/n;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
