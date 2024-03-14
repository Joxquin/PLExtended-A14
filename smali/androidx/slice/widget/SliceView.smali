.class public Landroidx/slice/widget/SliceView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/z;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final I:Lf0/L;


# instance fields
.field public A:Landroid/view/View$OnClickListener;

.field public B:I

.field public C:I

.field public D:Z

.field public E:Z

.field public F:[I

.field public final G:Lf0/K;

.field public final H:Lf0/K;

.field public d:Lf0/j;

.field public e:Lf0/F;

.field public f:Landroid/view/View$OnLongClickListener;

.field public g:Landroid/os/Handler;

.field public h:Lb0/f;

.field public i:Landroidx/slice/Slice;

.field public j:Lf0/I;

.field public k:Ljava/util/List;

.field public l:Lf0/a;

.field public final m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Lf0/O;

.field public w:Lf0/J;

.field public x:I

.field public y:Lf0/M;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf0/L;

    invoke-direct {v0}, Lf0/L;-><init>()V

    sput-object v0, Landroidx/slice/widget/SliceView;->I:Lf0/L;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0404f6

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->m:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->n:Z

    .line 6
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->o:Z

    .line 7
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->p:Z

    .line 8
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->q:Z

    const/4 v2, -0x1

    .line 9
    iput v2, p0, Landroidx/slice/widget/SliceView;->x:I

    .line 10
    new-instance v2, Lf0/K;

    invoke-direct {v2, p0, v1}, Lf0/K;-><init>(Landroidx/slice/widget/SliceView;I)V

    iput-object v2, p0, Landroidx/slice/widget/SliceView;->G:Lf0/K;

    .line 11
    new-instance v1, Lf0/K;

    invoke-direct {v1, p0, v0}, Lf0/K;-><init>(Landroidx/slice/widget/SliceView;I)V

    iput-object v1, p0, Landroidx/slice/widget/SliceView;->H:Lf0/K;

    const v0, 0x7f1404bb

    .line 12
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/slice/widget/SliceView;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->m:Z

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->n:Z

    .line 16
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->o:Z

    .line 17
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->p:Z

    .line 18
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->q:Z

    const/4 v2, -0x1

    .line 19
    iput v2, p0, Landroidx/slice/widget/SliceView;->x:I

    .line 20
    new-instance v2, Lf0/K;

    invoke-direct {v2, p0, v1}, Lf0/K;-><init>(Landroidx/slice/widget/SliceView;I)V

    iput-object v2, p0, Landroidx/slice/widget/SliceView;->G:Lf0/K;

    .line 21
    new-instance v1, Lf0/K;

    invoke-direct {v1, p0, v0}, Lf0/K;-><init>(Landroidx/slice/widget/SliceView;I)V

    iput-object v1, p0, Landroidx/slice/widget/SliceView;->H:Lf0/K;

    .line 22
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceView;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->y:Lf0/M;

    invoke-virtual {v0, v1}, Lf0/F;->k(Lf0/M;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->w:Lf0/J;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf0/J;->b(Landroidx/slice/SliceItem;)Lf0/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf0/F;->o(Lf0/J;Lf0/q;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lf0/F;->p(I)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf0/G;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    invoke-virtual {p0}, Lf0/G;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :goto_0
    return-void
.end method

.method public final b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    instance-of p1, p1, Lf0/y;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget p0, p0, Landroidx/slice/widget/SliceView;->r:I

    invoke-direct {p1, p0, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p1

    :cond_0
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final c()I
    .locals 3

    iget v0, p0, Landroidx/slice/widget/SliceView;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->i:Landroidx/slice/Slice;

    const-string v1, "int"

    const-string v2, "color"

    invoke-static {v0, v1, v2}, Ld0/e;->h(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->d()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010435

    invoke-static {v0, p0}, Lf0/P;->b(ILandroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final d(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroidx/slice/widget/SliceView;->B:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Landroidx/slice/widget/SliceView;->C:I

    sub-int/2addr p1, v1

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr p1, v0

    iget v0, p0, Landroidx/slice/widget/SliceView;->z:I

    if-le p1, v0, :cond_1

    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->D:Z

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->g:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->G:Lf0/K;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean p0, p0, Landroidx/slice/widget/SliceView;->E:Z

    return p0

    :cond_2
    iget-boolean p1, p0, Landroidx/slice/widget/SliceView;->E:Z

    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->D:Z

    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->E:Z

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->g:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->G:Lf0/K;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return p1

    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->g:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->G:Lf0/K;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->B:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->C:I

    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->D:Z

    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->E:Z

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->g:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->G:Lf0/K;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    new-instance v0, Lf0/J;

    invoke-direct {v0, p1, p2, p3, p4}, Lf0/J;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->w:Lf0/J;

    iget p1, v0, Lf0/J;->a:I

    iput p1, p0, Landroidx/slice/widget/SliceView;->x:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070055

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->r:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07004d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->s:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070049

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->t:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07003b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->u:I

    new-instance p1, Lf0/O;

    invoke-direct {p1}, Lf0/O;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    new-instance p1, Lf0/Q;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lf0/Q;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-object p2, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    invoke-virtual {p1, p2}, Lf0/Q;->i(Lf0/O;)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->a()V

    new-instance p1, Lf0/a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lf0/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->l:Lf0/a;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const p3, -0x111112

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->l:Lf0/a;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->j()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/2addr p1, p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->z:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->g:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->j:Lf0/I;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->n:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lf0/I;->a:Landroid/app/slice/SliceMetrics;

    invoke-virtual {v0}, Landroid/app/slice/SliceMetrics;->logVisible()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->n:Z

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/slice/widget/SliceView;->n:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->j:Lf0/I;

    iget-object p1, p1, Lf0/I;->a:Landroid/app/slice/SliceMetrics;

    invoke-virtual {p1}, Landroid/app/slice/SliceMetrics;->logHidden()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->n:Z

    :cond_1
    return-void
.end method

.method public final g(Z)V
    .locals 13

    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->h:Lb0/f;

    if-eqz v0, :cond_5

    iget-wide v1, v0, Lb0/f;->b:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->g:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->H:Lf0/K;

    invoke-virtual {v0}, Lb0/f;->b()Z

    move-result v0

    const-wide/32 v5, 0xea60

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->h:Lb0/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lb0/f;->b:J

    const-wide/16 v11, 0x0

    cmp-long p0, v9, v11

    if-eqz p0, :cond_3

    cmp-long p0, v9, v3

    if-eqz p0, :cond_3

    cmp-long p0, v7, v9

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    sub-long v11, v9, v7

    :cond_3
    :goto_1
    add-long/2addr v5, v11

    :goto_2
    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_4
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->g:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->H:Lf0/K;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final h(I)V
    .locals 5

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    iget v0, v0, Lf0/O;->c:I

    if-ne v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " please use one of MODE_SHORTCUT, MODE_SMALL, MODE_LARGE"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SliceView"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :cond_1
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    iget v3, v2, Lf0/O;->c:I

    if-eq v3, p1, :cond_2

    iput p1, v2, Lf0/O;->c:I

    iget-object p1, v2, Lf0/O;->d:Lf0/N;

    if-eqz p1, :cond_2

    check-cast p1, Lf0/Q;

    iget-object v2, p1, Lf0/Q;->t:Lf0/j;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lf0/F;->m:Lf0/J;

    iget-object v4, p1, Lf0/F;->o:Lf0/O;

    invoke-virtual {v2, v3, v4}, Lf0/j;->a(Lf0/J;Lf0/O;)I

    invoke-virtual {p1}, Lf0/Q;->q()V

    :cond_2
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    iget p1, p1, Lf0/O;->c:I

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    instance-of v3, v2, Lf0/y;

    invoke-virtual {v2}, Lf0/F;->a()Ljava/util/Set;

    move-result-object v2

    if-ne p1, v0, :cond_3

    if-nez v3, :cond_3

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance p1, Lf0/y;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lf0/y;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    if-eq p1, v0, :cond_4

    if-eqz v3, :cond_4

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance p1, Lf0/Q;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lf0/Q;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    invoke-virtual {p1, v0}, Lf0/F;->i(Lf0/O;)V

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->a()V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lf0/j;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    invoke-virtual {p1, v0}, Lf0/F;->m(Lf0/j;)V

    :cond_5
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p1, v2}, Lf0/F;->h(Ljava/util/Set;)V

    :cond_6
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->j()V

    :goto_1
    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lf0/m;

    sget-object v2, Lf0/m;->g:Lf0/k;

    invoke-direct {v1, p0, v0, v2}, Lf0/m;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lf0/k;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_4

    new-instance v0, Lf0/m;

    sget-object v5, Lf0/m;->h:Lf0/k;

    invoke-direct {v0, p0, v4, v5}, Lf0/m;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lf0/k;)V

    :cond_4
    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/slice/Slice;->c()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->i:Landroidx/slice/Slice;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/slice/Slice;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/Slice;->c()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-virtual {p0, v2}, Landroidx/slice/widget/SliceView;->f(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/Slice;->c()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lf0/I;

    invoke-direct {v5, v0, v4}, Lf0/I;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v5, p0, Landroidx/slice/widget/SliceView;->j:Lf0/I;

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/slice/widget/SliceView;->f(Z)V

    iput-object v3, p0, Landroidx/slice/widget/SliceView;->j:Lf0/I;

    :cond_8
    :goto_3
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    iget-object v4, p0, Landroidx/slice/widget/SliceView;->i:Landroidx/slice/Slice;

    if-eqz v4, :cond_9

    invoke-virtual {p1}, Landroidx/slice/Slice;->c()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->i:Landroidx/slice/Slice;

    invoke-virtual {v5}, Landroidx/slice/Slice;->c()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v0

    goto :goto_4

    :cond_9
    move v4, v2

    :goto_4
    iget-object v5, p0, Landroidx/slice/widget/SliceView;->h:Lb0/f;

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->i:Landroidx/slice/Slice;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->i:Landroidx/slice/Slice;

    new-instance v7, Lb0/f;

    invoke-direct {v7, p1, v6}, Lb0/f;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    goto :goto_5

    :cond_a
    move-object v7, v3

    :goto_5
    iput-object v7, p0, Landroidx/slice/widget/SliceView;->h:Lb0/f;

    if-eqz v4, :cond_b

    invoke-virtual {v5}, Lb0/f;->a()I

    move-result p1

    if-ne p1, v1, :cond_c

    invoke-virtual {v7}, Lb0/f;->a()I

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_a

    :cond_b
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p1}, Lf0/F;->c()V

    :cond_c
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->h:Lb0/f;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lb0/f;->d:Lf0/j;

    goto :goto_6

    :cond_d
    move-object p1, v3

    :goto_6
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    iget-boolean v4, p0, Landroidx/slice/widget/SliceView;->o:Z

    if-eqz v4, :cond_e

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->o:Z

    if-eqz p1, :cond_e

    iget-object v4, p1, Lf0/j;->g:Lf0/p;

    if-eqz v4, :cond_e

    iput-boolean v0, v4, Lf0/p;->q:Z

    :cond_e
    iget-boolean v4, p0, Landroidx/slice/widget/SliceView;->p:Z

    if-eqz v4, :cond_f

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->p:Z

    if-eqz p1, :cond_f

    iget-object v4, p1, Lf0/j;->g:Lf0/p;

    if-eqz v4, :cond_f

    iget-object v4, p1, Lf0/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v0, :cond_f

    iget-object p1, p1, Lf0/j;->g:Lf0/p;

    iput-boolean v0, p1, Lf0/p;->r:Z

    :cond_f
    iget-boolean p1, p0, Landroidx/slice/widget/SliceView;->q:Z

    if-eqz p1, :cond_11

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->q:Z

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lf0/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf0/G;

    instance-of v5, v4, Lf0/p;

    if-eqz v5, :cond_10

    check-cast v4, Lf0/p;

    iput-boolean v0, v4, Lf0/p;->s:Z

    goto :goto_7

    :cond_11
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lf0/j;->f()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_9

    :cond_12
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p1, v3}, Lf0/F;->h(Ljava/util/Set;)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->h:Lb0/f;

    iget-object v3, p1, Lb0/f;->f:Ljava/util/List;

    iput-object v3, p0, Landroidx/slice/widget/SliceView;->k:Ljava/util/List;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-wide v4, p1, Lb0/f;->c:J

    invoke-virtual {v3, v4, v5}, Lf0/F;->g(J)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-boolean v3, p0, Landroidx/slice/widget/SliceView;->m:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->h:Lb0/f;

    invoke-virtual {v3}, Lb0/f;->b()Z

    move-result v3

    if-eqz v3, :cond_13

    move v2, v0

    :cond_13
    invoke-virtual {p1, v2}, Lf0/F;->j(Z)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->h:Lb0/f;

    iget-object v2, v2, Lb0/f;->a:Landroidx/slice/Slice;

    iget-object v2, v2, Landroidx/slice/Slice;->c:[Ljava/lang/String;

    const-string v3, "permission_request"

    invoke-static {v2, v3}, Lb0/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lf0/F;->e(Z)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->c()I

    move-result v2

    invoke-virtual {p1, v2}, Lf0/F;->p(I)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    invoke-virtual {p1}, Lf0/G;->b()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_14

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    invoke-virtual {v1}, Lf0/G;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    goto :goto_8

    :cond_14
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :goto_8
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    invoke-virtual {p1, v1}, Lf0/F;->m(Lf0/j;)V

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->j()V

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceView;->f(Z)V

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceView;->g(Z)V

    goto :goto_a

    :cond_15
    :goto_9
    iput-object v3, p0, Landroidx/slice/widget/SliceView;->k:Ljava/util/List;

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p1}, Lf0/F;->c()V

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->j()V

    :goto_a
    return-void
.end method

.method public final j()V
    .locals 6

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->k:Ljava/util/List;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->l:Lf0/a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf0/F;->l(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lf0/F;->f(IIII)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Landroidx/slice/widget/SliceView;->I:Lf0/L;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {v2, v0}, Lf0/F;->l(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lf0/F;->f(IIII)V

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->l:Lf0/a;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceView;->f(Z)V

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceView;->g(Z)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf0/j;->e(Landroid/content/Context;)Ld0/a;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf0/j;->e(Landroid/content/Context;)Ld0/a;

    move-result-object p1

    check-cast p1, Landroidx/slice/core/a;

    iget-object v0, p1, Landroidx/slice/core/a;->a:Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroidx/slice/SliceItem;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object p1, p1, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {v3, p1}, Lf0/F;->d(Landroidx/slice/SliceItem;)V

    :cond_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->y:Lf0/M;

    if-eqz v0, :cond_3

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->F:[I

    if-eqz v3, :cond_3

    array-length v4, v3

    if-le v4, v2, :cond_3

    new-instance v4, Lf0/c;

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    iget v5, v5, Lf0/O;->c:I

    aget v1, v3, v1

    aget v2, v3, v2

    const/4 v3, 0x3

    invoke-direct {v4, v5, v3, v1, v2}, Lf0/c;-><init>(IIII)V

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k(Landroidx/slice/SliceItem;Lf0/c;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->j:Lf0/I;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->c()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->j:Lf0/I;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->c()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lf0/I;->a:Landroid/app/slice/SliceMetrics;

    invoke-virtual {p0, v3, p1}, Landroid/app/slice/SliceMetrics;->logTouch(ILandroid/net/Uri;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "SliceView"

    const-string v0, "PendingIntent for slice cannot be sent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->A:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceView;->f(Z)V

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceView;->g(Z)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->f:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    iget-object p2, p0, Landroidx/slice/widget/SliceView;->l:Lf0/a;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    const/16 p3, 0x8

    if-eq p2, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Landroidx/slice/widget/SliceView;->l:Lf0/a;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->l:Lf0/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p2, p4, p1, p3, p0}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    iget v0, v0, Lf0/O;->c:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    iget p1, p0, Landroidx/slice/widget/SliceView;->r:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    add-int/2addr p1, v0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->l:Lf0/a;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroidx/slice/widget/SliceView;->u:I

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_3

    :cond_2
    if-nez p2, :cond_4

    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    iget-object v5, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lf0/j;->f()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    iget v6, v5, Lf0/O;->c:I

    if-eq v6, v1, :cond_8

    if-lez v4, :cond_6

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->w:Lf0/J;

    iget v6, v6, Lf0/J;->o:I

    if-ge v4, v6, :cond_6

    iget v6, p0, Landroidx/slice/widget/SliceView;->s:I

    if-gt v4, v6, :cond_5

    move v4, v6

    :cond_5
    iget v6, v5, Lf0/O;->b:I

    if-eq v6, v4, :cond_7

    iput v4, v5, Lf0/O;->b:I

    iget-object v5, v5, Lf0/O;->d:Lf0/N;

    if-eqz v5, :cond_7

    check-cast v5, Lf0/Q;

    iget-object v5, v5, Lf0/Q;->r:Lf0/E;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lf0/E;->b()V

    goto :goto_2

    :cond_6
    iget v6, v5, Lf0/O;->b:I

    if-eqz v6, :cond_7

    iput v3, v5, Lf0/O;->b:I

    iget-object v5, v5, Lf0/O;->d:Lf0/N;

    if-eqz v5, :cond_7

    check-cast v5, Lf0/Q;

    iget-object v5, v5, Lf0/Q;->r:Lf0/E;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lf0/E;->b()V

    :cond_7
    :goto_2
    iget-object v5, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    iget v6, v5, Lf0/O;->a:I

    if-eq v4, v6, :cond_8

    iput v4, v5, Lf0/O;->a:I

    iget-object v4, v5, Lf0/O;->d:Lf0/N;

    if-eqz v4, :cond_8

    check-cast v4, Lf0/Q;

    iget-object v5, v4, Lf0/Q;->t:Lf0/j;

    if-eqz v5, :cond_8

    iget-object v6, v4, Lf0/F;->m:Lf0/J;

    iget-object v7, v4, Lf0/F;->o:Lf0/O;

    invoke-virtual {v5, v6, v7}, Lf0/j;->a(Lf0/J;Lf0/O;)I

    invoke-virtual {v4}, Lf0/Q;->q()V

    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    if-eq p2, v4, :cond_10

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lf0/j;->f()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    iget-object v5, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    iget v6, v5, Lf0/O;->c:I

    if-ne v6, v1, :cond_a

    iget p2, p0, Landroidx/slice/widget/SliceView;->r:I

    goto :goto_3

    :cond_a
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->w:Lf0/J;

    invoke-virtual {v1, v6, v5}, Lf0/j;->a(Lf0/J;Lf0/O;)I

    move-result v1

    add-int/2addr v1, v0

    if-gt v2, v1, :cond_e

    if-nez p2, :cond_b

    goto :goto_4

    :cond_b
    iget-object p2, p0, Landroidx/slice/widget/SliceView;->w:Lf0/J;

    iget-boolean p2, p2, Lf0/J;->G:Z

    if-eqz p2, :cond_c

    goto :goto_6

    :cond_c
    iget-object p2, p0, Landroidx/slice/widget/SliceView;->v:Lf0/O;

    iget p2, p2, Lf0/O;->c:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_d

    iget p2, p0, Landroidx/slice/widget/SliceView;->t:I

    add-int v1, p2, v0

    if-lt v2, v1, :cond_d

    :goto_3
    add-int v2, p2, v0

    goto :goto_6

    :cond_d
    iget p2, p0, Landroidx/slice/widget/SliceView;->s:I

    if-gt v2, p2, :cond_10

    move v2, p2

    goto :goto_6

    :cond_e
    :goto_4
    move v2, v1

    goto :goto_6

    :cond_f
    :goto_5
    move v2, v0

    :cond_10
    :goto_6
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-lez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_7

    :cond_11
    move v1, v3

    :goto_7
    iget-object v5, p0, Landroidx/slice/widget/SliceView;->l:Lf0/a;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v5, p2, v1}, Landroid/widget/FrameLayout;->measure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v2

    if-lez v0, :cond_12

    goto :goto_8

    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    :goto_8
    add-int/2addr v1, v3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object p2, p0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->l:Lf0/a;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->f:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->f(Z)V

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->g(Z)V

    :cond_2
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/slice/widget/SliceView;->f(Z)V

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceView;->g(Z)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->A:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->f:Landroid/view/View$OnLongClickListener;

    return-void
.end method
