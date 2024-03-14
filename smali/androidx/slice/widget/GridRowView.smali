.class public Landroidx/slice/widget/GridRowView;
.super Lf0/F;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:Landroid/widget/LinearLayout;

.field public final D:Lf0/g;

.field public final p:I

.field public final q:I

.field public final r:[I

.field public s:Z

.field public final t:Landroid/view/View;

.field public u:I

.field public v:I

.field public w:I

.field public x:Lf0/e;

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Lf0/F;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Landroidx/slice/widget/GridRowView;->r:[I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroidx/slice/widget/GridRowView;->w:I

    .line 5
    new-instance p2, Lf0/g;

    invoke-direct {p2, p0}, Lf0/g;-><init>(Landroidx/slice/widget/GridRowView;)V

    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->D:Lf0/g;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 7
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f070048

    .line 11
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->B:I

    const v0, 0x7f070057

    .line 12
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->z:I

    const v0, 0x7f070040

    .line 13
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->y:I

    const v0, 0x7f07003f

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->A:I

    const v0, 0x7f07003e

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->p:I

    const v0, 0x7f070047

    .line 16
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/GridRowView;->q:I

    .line 17
    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->t:Landroid/view/View;

    .line 18
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-boolean v0, p0, Landroidx/slice/widget/GridRowView;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->s:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->D:Lf0/g;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    invoke-virtual {p0, v1}, Landroidx/slice/widget/GridRowView;->w(Z)V

    return-void
.end method

.method public final f(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lf0/F;->f(IIII)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lf0/e;->f:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/slice/widget/GridRowView;->u:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lf0/F;->m:Lf0/J;

    if-eqz v1, :cond_0

    iget v1, v1, Lf0/J;->m:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->t()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {v0, p1, v1, p3, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public final n(Lf0/G;ZIILf0/M;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->c()V

    iput-object p5, p0, Lf0/F;->d:Lf0/M;

    iput p3, p0, Landroidx/slice/widget/GridRowView;->u:I

    iput p4, p0, Landroidx/slice/widget/GridRowView;->v:I

    check-cast p1, Lf0/e;

    iput-object p1, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->y()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->x()V

    :cond_0
    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    iget p2, p0, Lf0/F;->h:I

    iget p3, p0, Lf0/F;->i:I

    iget-object p4, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    if-eqz p4, :cond_1

    iget-boolean p4, p4, Lf0/e;->f:Z

    if-eqz p4, :cond_1

    iget p4, p0, Landroidx/slice/widget/GridRowView;->u:I

    if-nez p4, :cond_1

    iget-object p4, p0, Lf0/F;->m:Lf0/J;

    if-eqz p4, :cond_1

    iget p4, p4, Lf0/J;->m:I

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    add-int/2addr p4, p3

    iget p3, p0, Lf0/F;->j:I

    iget p5, p0, Lf0/F;->k:I

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->t()I

    move-result p0

    add-int/2addr p0, p5

    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidx/slice/SliceItem;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lf0/c;

    if-eqz v0, :cond_0

    const-string v1, "action"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v2, v2}, Landroidx/slice/SliceItem;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    iget-object p0, p0, Lf0/F;->d:Lf0/M;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k(Landroidx/slice/SliceItem;Lf0/c;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GridRowView"

    const-string v0, "PendingIntent for slice cannot be sent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    iget-object p2, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    iget-object v0, p0, Lf0/F;->m:Lf0/J;

    iget-object v1, p0, Lf0/F;->o:Lf0/O;

    invoke-virtual {p2, v0, v1}, Lf0/e;->a(Lf0/J;Lf0/O;)I

    move-result p2

    iget v0, p0, Lf0/F;->i:I

    add-int/2addr p2, v0

    iget v0, p0, Lf0/F;->k:I

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->t:Landroid/view/View;

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->r:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->r:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->r:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->t:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->t:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    if-eq p1, v3, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->t:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lf0/F;->e:I

    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->c()V

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->x()V

    :cond_0
    return-void
.end method

.method public final q(Lf0/d;II)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lf0/F;->b()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    iget-object v4, v0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    iget-object v4, v4, Lf0/e;->m:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v4, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v9, v1, Lf0/d;->c:Ljava/util/ArrayList;

    iget-object v10, v1, Lf0/d;->a:Landroidx/slice/SliceItem;

    iget-object v11, v1, Lf0/d;->b:Landroidx/slice/SliceItem;

    iget-object v12, v1, Lf0/d;->k:Landroidx/slice/SliceItem;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v13, v7, :cond_2

    move v13, v7

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    const-string v15, "title"

    const-string v5, "large"

    const-string v6, "text"

    if-nez v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lf0/F;->b()I

    move-result v14

    if-ne v14, v7, :cond_7

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Landroidx/slice/SliceItem;

    move-object/from16 v18, v10

    iget-object v10, v7, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v10, v18

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v18, v10

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v4, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/slice/SliceItem;

    move-object/from16 v17, v14

    filled-new-array {v15, v5}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroidx/slice/SliceItem;->h([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    :cond_5
    move-object/from16 v14, v17

    goto :goto_4

    :cond_6
    move-object/from16 v17, v14

    goto :goto_5

    :cond_7
    move-object/from16 v18, v10

    const/4 v14, 0x0

    :goto_5
    move-object/from16 v19, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v20, v11

    if-ge v7, v12, :cond_24

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/slice/SliceItem;

    iget-object v11, v12, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    move-object/from16 v22, v9

    invoke-virtual {v0, v3}, Landroidx/slice/widget/GridRowView;->s(Landroidx/slice/SliceItem;)I

    move-result v9

    if-ge v10, v4, :cond_12

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v24, v4

    const-string v4, "long"

    if-nez v23, :cond_9

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_7

    :cond_8
    move-object/from16 v16, v3

    goto/16 :goto_d

    :cond_9
    :goto_7
    if-eqz v14, :cond_a

    invoke-interface {v14, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    move-object/from16 v16, v3

    move-object/from16 v23, v6

    move v4, v7

    move/from16 v27, v10

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    goto/16 :goto_1c

    :cond_a
    iget-object v11, v12, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    move-object/from16 v16, v3

    move-object/from16 v23, v6

    move v4, v7

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_b
    move-object/from16 v23, v6

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Ld0/e;->k(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v25, v14

    invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    if-eqz v6, :cond_c

    const v21, 0x7f0d002d

    goto :goto_8

    :cond_c
    const v21, 0x7f0d0029

    :goto_8
    move-object/from16 v16, v3

    move-object/from16 v26, v15

    move/from16 v15, v21

    const/4 v3, 0x0

    invoke-virtual {v14, v15, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iget-object v15, v0, Lf0/F;->m:Lf0/J;

    if-eqz v15, :cond_10

    iget-object v3, v0, Lf0/F;->n:Lf0/q;

    if-eqz v3, :cond_10

    if-eqz v6, :cond_d

    iget v3, v15, Lf0/J;->j:I

    goto :goto_9

    :cond_d
    iget v3, v15, Lf0/J;->k:I

    :goto_9
    int-to-float v3, v3

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v6, :cond_f

    iget-object v3, v0, Lf0/F;->n:Lf0/q;

    iget-object v6, v3, Lf0/q;->x:Ljava/lang/Integer;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_a

    :cond_e
    iget-object v3, v3, Lf0/q;->a:Lf0/J;

    iget v3, v3, Lf0/J;->b:I

    goto :goto_a

    :cond_f
    iget-object v3, v0, Lf0/F;->n:Lf0/q;

    invoke-virtual {v3}, Lf0/q;->b()I

    move-result v3

    :goto_a
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v7

    invoke-virtual {v12}, Landroidx/slice/SliceItem;->e()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lf0/P;->d(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_b

    :cond_11
    move v4, v7

    invoke-virtual {v12}, Landroidx/slice/SliceItem;->f()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_b
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v9, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v3, 0x1

    :goto_c
    if-eqz v3, :cond_22

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1b

    :cond_12
    move-object/from16 v16, v3

    move/from16 v24, v4

    :goto_d
    move-object/from16 v23, v6

    move v4, v7

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    const/4 v3, 0x1

    if-ge v2, v3, :cond_22

    iget-object v3, v12, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v6, "image"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v1, Lf0/d;->h:Landroidx/slice/SliceItem;

    iget v7, v0, Lf0/F;->e:I

    iget-object v9, v12, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    iget-object v11, v0, Lf0/F;->m:Lf0/J;

    if-eqz v11, :cond_14

    iget v11, v11, Lf0/J;->L:F

    const/4 v14, 0x0

    cmpl-float v11, v11, v14

    if-lez v11, :cond_13

    const/4 v11, 0x1

    goto :goto_e

    :cond_13
    const/4 v11, 0x0

    :goto_e
    if-eqz v11, :cond_14

    const/4 v11, 0x1

    goto :goto_f

    :cond_14
    const/4 v11, 0x0

    :goto_f
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, v12, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v6, Landroidx/core/graphics/drawable/IconCompat;

    if-nez v6, :cond_15

    goto/16 :goto_19

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/graphics/drawable/IconCompat;->h(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_16

    goto/16 :goto_19

    :cond_16
    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v9, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz v11, :cond_17

    new-instance v14, Lb0/b;

    iget-object v15, v0, Lf0/F;->m:Lf0/J;

    iget v15, v15, Lf0/J;->L:F

    invoke-direct {v14, v6, v15}, Lb0/b;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    :cond_17
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_10
    const-string v6, "raw"

    invoke-virtual {v12, v6}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v6

    const-string v15, "no_tint"

    if-eqz v6, :cond_18

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v11, v0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v11, v14}, Lf0/e;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v14, v0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v14, v10}, Lf0/e;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_15

    :cond_18
    move/from16 v27, v10

    invoke-virtual {v12, v5}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    if-eqz v11, :cond_19

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_11

    :cond_19
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_11
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz v13, :cond_1a

    const/4 v6, -0x1

    goto :goto_12

    :cond_1a
    iget v6, v0, Landroidx/slice/widget/GridRowView;->y:I

    :goto_12
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move v6, v11

    goto :goto_16

    :cond_1b
    invoke-virtual {v12, v15}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v6

    const/4 v10, 0x1

    xor-int/2addr v6, v10

    if-nez v6, :cond_1c

    iget v10, v0, Landroidx/slice/widget/GridRowView;->z:I

    goto :goto_13

    :cond_1c
    iget v10, v0, Landroidx/slice/widget/GridRowView;->B:I

    :goto_13
    if-eqz v6, :cond_1d

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_14

    :cond_1d
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_14
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_15
    move-object v10, v6

    const/4 v6, -0x1

    :goto_16
    if-eq v7, v6, :cond_1e

    invoke-virtual {v12, v15}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1e
    if-eqz v3, :cond_20

    iget-object v6, v0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    iget v7, v0, Landroidx/slice/widget/GridRowView;->w:I

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    if-ne v6, v7, :cond_1f

    goto :goto_17

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d001e

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v7, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const v7, 0x7f0a0380

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v3, v3, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a039a

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v7, Lb0/b;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v11, LB/c;->a:Ljava/lang/Object;

    const v11, 0x7f0801e3

    invoke-virtual {v9, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v11, v0, Lf0/F;->m:Lf0/J;

    iget v11, v11, Lf0/J;->L:F

    invoke-direct {v7, v9, v11}, Lb0/b;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_18

    :cond_20
    :goto_17
    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_18
    const/4 v3, 0x1

    goto :goto_1a

    :cond_21
    :goto_19
    move/from16 v27, v10

    const/4 v3, 0x0

    :goto_1a
    if-eqz v3, :cond_23

    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v27

    :goto_1b
    move-object v3, v12

    const/16 v17, 0x1

    goto :goto_1d

    :cond_22
    move/from16 v27, v10

    :cond_23
    :goto_1c
    move-object/from16 v3, v16

    move/from16 v10, v27

    :goto_1d
    add-int/lit8 v7, v4, 0x1

    move-object/from16 v11, v20

    move-object/from16 v9, v22

    move-object/from16 v6, v23

    move/from16 v4, v24

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    goto/16 :goto_6

    :cond_24
    move-object/from16 v16, v3

    if-eqz v20, :cond_26

    move-object/from16 v2, v20

    iget-object v3, v2, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v4, "date_picker"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move-object/from16 v3, v16

    invoke-virtual {v0, v3}, Landroidx/slice/widget/GridRowView;->s(Landroidx/slice/SliceItem;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v8, v3, v4}, Landroidx/slice/widget/GridRowView;->r(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z

    move-result v17

    goto :goto_1e

    :cond_25
    move-object/from16 v3, v16

    iget-object v4, v2, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v5, "time_picker"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v0, v3}, Landroidx/slice/widget/GridRowView;->s(Landroidx/slice/SliceItem;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v8, v3, v4}, Landroidx/slice/widget/GridRowView;->r(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z

    move-result v17

    :cond_26
    :goto_1e
    if-eqz v19, :cond_27

    new-instance v2, Lf0/A;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lf0/F;->n:Lf0/q;

    invoke-direct {v2, v3, v4}, Lf0/A;-><init>(Landroid/content/Context;Lf0/q;)V

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v9, v2

    const/4 v3, 0x1

    goto :goto_1f

    :cond_27
    move/from16 v3, v17

    const/4 v9, 0x0

    :goto_1f
    if-eqz v3, :cond_2c

    iget-object v1, v1, Lf0/d;->d:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_28

    iget-object v1, v1, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Ljava/lang/CharSequence;

    goto :goto_20

    :cond_28
    const/4 v14, 0x0

    :goto_20
    if-eqz v14, :cond_29

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_29
    iget-object v1, v0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v1, p3

    add-int/lit8 v2, v1, -0x1

    move/from16 v3, p2

    if-eq v3, v2, :cond_2a

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Landroidx/slice/widget/GridRowView;->p:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2a
    if-eqz v18, :cond_2b

    new-instance v2, Lf0/c;

    invoke-virtual/range {p0 .. p0}, Lf0/F;->b()I

    move-result v4

    iget v5, v0, Landroidx/slice/widget/GridRowView;->u:I

    const/4 v6, 0x1

    invoke-direct {v2, v4, v6, v6, v5}, Lf0/c;-><init>(IIII)V

    const/4 v4, 0x2

    iput v4, v2, Lf0/c;->g:I

    iput v3, v2, Lf0/c;->e:I

    iput v1, v2, Lf0/c;->f:I

    new-instance v4, Landroid/util/Pair;

    move-object/from16 v5, v18

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Landroidx/slice/widget/GridRowView;->v(Landroid/view/View;)V

    :cond_2b
    if-eqz v19, :cond_2c

    new-instance v2, Lf0/c;

    invoke-virtual/range {p0 .. p0}, Lf0/F;->b()I

    move-result v4

    const/4 v5, 0x3

    iget v6, v0, Landroidx/slice/widget/GridRowView;->u:I

    const/4 v7, 0x0

    invoke-direct {v2, v4, v7, v5, v6}, Lf0/c;-><init>(IIII)V

    new-instance v10, Landroidx/slice/core/a;

    move-object/from16 v4, v19

    invoke-direct {v10, v4}, Landroidx/slice/core/a;-><init>(Landroidx/slice/SliceItem;)V

    iget-object v12, v0, Lf0/F;->d:Lf0/M;

    iget v13, v0, Lf0/F;->e:I

    iget-object v14, v0, Lf0/F;->l:Lf0/E;

    move-object v11, v2

    invoke-virtual/range {v9 .. v14}, Lf0/A;->b(Landroidx/slice/core/a;Lf0/c;Lf0/M;ILf0/E;)V

    const/4 v0, 0x2

    iput v0, v2, Lf0/c;->g:I

    iput v3, v2, Lf0/c;->e:I

    iput v1, v2, Lf0/c;->f:I

    :cond_2c
    return-void
.end method

.method public final r(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z
    .locals 11

    const-string v0, "long"

    const-string v1, "millis"

    invoke-static {p1, v0, v1}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->e()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0d002d

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lf0/F;->m:Lf0/J;

    if-eqz v4, :cond_1

    iget v4, v4, Lf0/J;->j:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lf0/F;->m:Lf0/J;

    iget v4, v4, Lf0/J;->b:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "text"

    const-string v3, "title"

    invoke-static {p1, v2, v3}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget v10, p0, Landroidx/slice/widget/GridRowView;->u:I

    new-instance v2, Lf0/f;

    move-object v5, v2

    move-object v6, p0

    move v8, p4

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lf0/f;-><init>(Landroidx/slice/widget/GridRowView;Ljava/util/Date;ZLandroidx/slice/SliceItem;I)V

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p4, 0x101045c

    invoke-static {p4, p0}, Lf0/P;->c(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1, p3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return p1
.end method

.method public final s(Landroidx/slice/SliceItem;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Landroidx/slice/widget/GridRowView;->q:I

    return p0

    :cond_1
    iget-object v1, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v1, "long"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    iget-object p0, p0, Lf0/F;->m:Lf0/J;

    if-eqz p0, :cond_4

    iget v0, p0, Lf0/J;->l:I

    :cond_4
    return v0
.end method

.method public final t()I
    .locals 4

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lf0/e;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/slice/widget/GridRowView;->u:I

    iget v2, p0, Landroidx/slice/widget/GridRowView;->v:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lf0/F;->b()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object p0, p0, Lf0/F;->m:Lf0/J;

    if-eqz p0, :cond_1

    iget v1, p0, Lf0/J;->n:I

    :cond_1
    return v1
.end method

.method public final u()I
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lf0/e;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    iget-object v0, v0, Lf0/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    iget v1, v0, Lf0/e;->k:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v0, p0, Landroidx/slice/widget/GridRowView;->A:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf0/e;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/slice/widget/GridRowView;->y:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget p0, p0, Landroidx/slice/widget/GridRowView;->p:I

    add-int/2addr v0, p0

    div-int/2addr v1, v0

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public final v(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x101045c

    invoke-static {v0, p0}, Lf0/P;->c(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public final w(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->t:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101030e

    invoke-static {v2, v1}, Lf0/P;->c(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public final x()V
    .locals 15

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lf0/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    invoke-virtual {v0}, Lf0/G;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    invoke-virtual {v0}, Lf0/G;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    iget-object v0, v0, Lf0/e;->g:Landroidx/slice/SliceItem;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    new-instance v0, Lf0/c;

    invoke-virtual {p0}, Lf0/F;->b()I

    move-result v3

    const/4 v4, 0x3

    iget v5, p0, Landroidx/slice/widget/GridRowView;->u:I

    invoke-direct {v0, v3, v4, v2, v5}, Lf0/c;-><init>(IIII)V

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    iget-object v4, v4, Lf0/e;->g:Landroidx/slice/SliceItem;

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroidx/slice/widget/GridRowView;->w(Z)V

    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    iget-object v0, v0, Lf0/G;->d:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    iget-object v3, v0, Lf0/e;->h:Ljava/util/ArrayList;

    iget v0, v0, Lf0/e;->k:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_7

    if-ne v0, v4, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_2
    iget v0, p0, Landroidx/slice/widget/GridRowView;->w:I

    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    iget-object v6, v6, Lf0/e;->i:Landroidx/slice/SliceItem;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    move v6, v2

    goto :goto_3

    :cond_8
    move v6, v7

    :goto_3
    move v8, v7

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    iget-object v9, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-lt v9, v0, :cond_e

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-eqz v6, :cond_f

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    iget-object v6, v6, Lf0/e;->i:Landroidx/slice/SliceItem;

    iget-object v8, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    iget v9, p0, Landroidx/slice/widget/GridRowView;->w:I

    iget-object v10, v6, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v11, "slice"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v6, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v11, "action"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    new-instance v0, Lf0/d;

    invoke-direct {v0, v6}, Lf0/d;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {p0, v0, v8, v9}, Landroidx/slice/widget/GridRowView;->q(Lf0/d;II)V

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    iget-boolean v11, v11, Lf0/e;->f:Z

    const v12, 0x7f0a0383

    if-eqz v11, :cond_b

    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    const v13, 0x7f0d001d

    invoke-virtual {v10, v13, v11, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v11, 0x7f0a0276

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lb0/b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1010030

    invoke-static {v14, v13}, Lf0/P;->c(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iget-object v14, p0, Lf0/F;->m:Lf0/J;

    iget v14, v14, Lf0/J;->L:F

    invoke-direct {v12, v13, v14}, Lb0/b;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    const v11, 0x7f0d001c

    invoke-virtual {v10, v11, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v11, 0x7f0a0382

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, p0, Lf0/F;->m:Lf0/J;

    if-eqz v12, :cond_d

    iget-object v13, p0, Lf0/F;->n:Lf0/q;

    if-eqz v13, :cond_d

    iget v12, v12, Lf0/J;->j:I

    int-to-float v12, v12

    invoke-virtual {v11, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v12, p0, Lf0/F;->n:Lf0/q;

    iget-object v13, v12, Lf0/q;->x:Ljava/lang/Integer;

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_5

    :cond_c
    iget-object v12, v12, Lf0/q;->a:Lf0/J;

    iget v12, v12, Lf0/J;->b:I

    :goto_5
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    :goto_6
    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->C:Landroid/widget/LinearLayout;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v7, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v7, 0x7f130020

    invoke-virtual {v1, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lf0/c;

    invoke-virtual {p0}, Lf0/F;->b()I

    move-result v1

    iget v3, p0, Landroidx/slice/widget/GridRowView;->u:I

    invoke-direct {v0, v1, v4, v2, v3}, Lf0/c;-><init>(IIII)V

    iput v5, v0, Lf0/c;->g:I

    iput v8, v0, Lf0/c;->e:I

    iput v9, v0, Lf0/c;->f:I

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v10}, Landroidx/slice/widget/GridRowView;->v(Landroid/view/View;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lf0/d;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p0, v9, v8, v10}, Landroidx/slice/widget/GridRowView;->q(Lf0/d;II)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_f
    :goto_7
    return-void

    :cond_10
    :goto_8
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->c()V

    return-void
.end method

.method public final y()Z
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->x:Lf0/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf0/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->s:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->D:Lf0/g;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->u()I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->w:I

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method
