.class public final Lq2/f;
.super LC2/i;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lx2/o;


# static fields
.field public static final I0:[I

.field public static final J0:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field public A0:[I

.field public B0:Z

.field public C:Landroid/content/res/ColorStateList;

.field public C0:Landroid/content/res/ColorStateList;

.field public D:Landroid/content/res/ColorStateList;

.field public D0:Ljava/lang/ref/WeakReference;

.field public E:F

.field public E0:Landroid/text/TextUtils$TruncateAt;

.field public F:F

.field public F0:Z

.field public G:Landroid/content/res/ColorStateList;

.field public G0:I

.field public H:F

.field public H0:Z

.field public I:Landroid/content/res/ColorStateList;

.field public J:Ljava/lang/CharSequence;

.field public K:Z

.field public L:Landroid/graphics/drawable/Drawable;

.field public M:Landroid/content/res/ColorStateList;

.field public N:F

.field public O:Z

.field public P:Z

.field public Q:Landroid/graphics/drawable/Drawable;

.field public R:Landroid/graphics/drawable/Drawable;

.field public S:Landroid/content/res/ColorStateList;

.field public T:F

.field public U:Z

.field public V:Z

.field public W:Landroid/graphics/drawable/Drawable;

.field public X:Landroid/content/res/ColorStateList;

.field public Y:F

.field public Z:F

.field public a0:F

.field public b0:F

.field public c0:F

.field public d0:F

.field public e0:F

.field public f0:F

.field public final g0:Landroid/content/Context;

.field public final h0:Landroid/graphics/Paint;

.field public final i0:Landroid/graphics/Paint$FontMetrics;

.field public final j0:Landroid/graphics/RectF;

.field public final k0:Landroid/graphics/PointF;

.field public final l0:Landroid/graphics/Path;

.field public final m0:Lx2/p;

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:Z

.field public u0:I

.field public v0:I

.field public w0:Landroid/graphics/ColorFilter;

.field public x0:Landroid/graphics/PorterDuffColorFilter;

.field public y0:Landroid/content/res/ColorStateList;

.field public z0:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const v0, 0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lq2/f;->I0:[I

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lq2/f;->J0:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f140461

    invoke-direct {p0, p1, p2, p3, v0}, LC2/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lq2/f;->F:F

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lq2/f;->h0:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lq2/f;->i0:Landroid/graphics/Paint$FontMetrics;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lq2/f;->j0:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lq2/f;->k0:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lq2/f;->l0:Landroid/graphics/Path;

    const/16 p2, 0xff

    iput p2, p0, Lq2/f;->v0:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lq2/f;->z0:Landroid/graphics/PorterDuff$Mode;

    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lq2/f;->D0:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, LC2/i;->j(Landroid/content/Context;)V

    iput-object p1, p0, Lq2/f;->g0:Landroid/content/Context;

    new-instance p2, Lx2/p;

    invoke-direct {p2, p0}, Lx2/p;-><init>(Lx2/o;)V

    iput-object p2, p0, Lq2/f;->m0:Lx2/p;

    const-string v0, ""

    iput-object v0, p0, Lq2/f;->J:Ljava/lang/CharSequence;

    iget-object p2, p2, Lx2/p;->a:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    sget-object p1, Lq2/f;->I0:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p2, p0, Lq2/f;->A0:[I

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p1, p0, Lq2/f;->A0:[I

    invoke-virtual {p0}, Lq2/f;->E()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lq2/f;->x([I[I)Z

    :cond_0
    iput-boolean p3, p0, Lq2/f;->F0:Z

    sget p0, Lcom/google/android/material/ripple/a;->a:I

    sget-object p0, Lq2/f;->J0:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    return-void
.end method

.method public static F(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public static u(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static v(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final A(Z)V
    .locals 1

    iget-boolean v0, p0, Lq2/f;->P:Z

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lq2/f;->E()Z

    move-result v0

    iput-boolean p1, p0, Lq2/f;->P:Z

    invoke-virtual {p0}, Lq2/f;->E()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lq2/f;->p(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lq2/f;->F(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    invoke-virtual {p0}, Lq2/f;->w()V

    :cond_2
    return-void
.end method

.method public final B(LA2/g;)V
    .locals 4

    iget-object v0, p0, Lq2/f;->m0:Lx2/p;

    iget-object p0, p0, Lq2/f;->g0:Landroid/content/Context;

    iget-object v1, v0, Lx2/p;->f:LA2/g;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lx2/p;->f:LA2/g;

    iget-object v1, v0, Lx2/p;->a:Landroid/text/TextPaint;

    iget-object v2, v0, Lx2/p;->b:Lx2/n;

    invoke-virtual {p1, p0, v1, v2}, LA2/g;->e(Landroid/content/Context;Landroid/text/TextPaint;LA2/h;)V

    iget-object v3, v0, Lx2/p;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx2/o;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lx2/o;->getState()[I

    move-result-object v3

    iput-object v3, v1, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    invoke-virtual {p1, p0, v1, v2}, LA2/g;->d(Landroid/content/Context;Landroid/text/TextPaint;LA2/h;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lx2/p;->d:Z

    iget-object p0, v0, Lx2/p;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx2/o;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lx2/o;->a()V

    invoke-interface {p0}, Lx2/o;->getState()[I

    move-result-object p1

    invoke-interface {p0, p1}, Lx2/o;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final C()Z
    .locals 1

    iget-boolean v0, p0, Lq2/f;->V:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lq2/f;->t0:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final D()Z
    .locals 1

    iget-boolean v0, p0, Lq2/f;->K:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Lq2/f;->P:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lq2/f;->w()V

    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget v5, v6, Lq2/f;->v0:I

    if-nez v5, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v13, 0x0

    const/16 v12, 0xff

    if-ge v5, v12, :cond_1

    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_1
    move v11, v13

    :goto_0
    iget-boolean v0, v6, Lq2/f;->H0:Z

    if-nez v0, :cond_2

    iget-object v0, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    iget v1, v6, Lq2/f;->n0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lq2/f;->t()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lq2/f;->t()F

    move-result v2

    iget-object v3, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-boolean v0, v6, Lq2/f;->H0:Z

    if-nez v0, :cond_4

    iget-object v0, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    iget v1, v6, Lq2/f;->o0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    iget-object v1, v6, Lq2/f;->w0:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v6, Lq2/f;->x0:Landroid/graphics/PorterDuffColorFilter;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lq2/f;->t()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lq2/f;->t()F

    move-result v2

    iget-object v3, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    iget-boolean v0, v6, Lq2/f;->H0:Z

    if-eqz v0, :cond_5

    invoke-super/range {p0 .. p1}, LC2/i;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget v0, v6, Lq2/f;->H:F

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    const/high16 v16, 0x40000000    # 2.0f

    if-lez v0, :cond_8

    iget-boolean v0, v6, Lq2/f;->H0:Z

    if-nez v0, :cond_8

    iget-object v0, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    iget v1, v6, Lq2/f;->q0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v0, v6, Lq2/f;->H0:Z

    if-nez v0, :cond_7

    iget-object v0, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    iget-object v1, v6, Lq2/f;->w0:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v6, Lq2/f;->x0:Landroid/graphics/PorterDuffColorFilter;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_7
    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    iget v1, v15, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v6, Lq2/f;->H:F

    div-float v2, v2, v16

    add-float/2addr v1, v2

    iget v3, v15, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, v15, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, v6, Lq2/f;->F:F

    iget v1, v6, Lq2/f;->H:F

    div-float v1, v1, v16

    sub-float/2addr v0, v1

    iget-object v1, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    iget-object v2, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    invoke-virtual {v14, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_8
    iget-object v0, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    iget v1, v6, Lq2/f;->r0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, v6, Lq2/f;->H0:Z

    if-nez v0, :cond_9

    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lq2/f;->t()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lq2/f;->t()F

    move-result v2

    iget-object v3, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v15}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, v6, Lq2/f;->l0:Landroid/graphics/Path;

    iget-object v2, v6, LC2/i;->u:LC2/p;

    iget-object v3, v6, LC2/i;->d:LC2/h;

    iget-object v4, v3, LC2/h;->a:LC2/n;

    iget v3, v3, LC2/h;->j:F

    iget-object v5, v6, LC2/i;->t:LC2/g;

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move/from16 v19, v3

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    move-object/from16 v22, v1

    invoke-virtual/range {v17 .. v22}, LC2/p;->a(LC2/n;FLandroid/graphics/RectF;LC2/g;Landroid/graphics/Path;)V

    iget-object v2, v6, Lq2/f;->h0:Landroid/graphics/Paint;

    iget-object v3, v6, Lq2/f;->l0:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v5

    iget-object v0, v6, LC2/i;->d:LC2/h;

    iget-object v4, v0, LC2/h;->a:LC2/n;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, LC2/i;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LC2/n;Landroid/graphics/RectF;)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lq2/f;->D()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v6, v15, v0}, Lq2/f;->q(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v6, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    iget-object v3, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v13, v13, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v6, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lq2/f;->C()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v6, v15, v0}, Lq2/f;->q(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v6, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    iget-object v3, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v13, v13, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v6, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_b
    iget-boolean v0, v6, Lq2/f;->F0:Z

    if-eqz v0, :cond_16

    iget-object v0, v6, Lq2/f;->J:Ljava/lang/CharSequence;

    if-eqz v0, :cond_16

    iget-object v0, v6, Lq2/f;->k0:Landroid/graphics/PointF;

    invoke-virtual {v0, v7, v7}, Landroid/graphics/PointF;->set(FF)V

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, v6, Lq2/f;->J:Ljava/lang/CharSequence;

    if-eqz v2, :cond_d

    iget v1, v6, Lq2/f;->Y:F

    invoke-virtual/range {p0 .. p0}, Lq2/f;->r()F

    move-result v2

    add-float/2addr v2, v1

    iget v1, v6, Lq2/f;->b0:F

    add-float/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_c

    iget v1, v15, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_4

    :cond_c
    iget v1, v15, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_4
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v6, Lq2/f;->m0:Lx2/p;

    iget-object v3, v3, Lx2/p;->a:Landroid/text/TextPaint;

    iget-object v4, v6, Lq2/f;->i0:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget-object v3, v6, Lq2/f;->i0:Landroid/graphics/Paint$FontMetrics;

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v4, v3

    div-float v4, v4, v16

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->y:F

    :cond_d
    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v2, v6, Lq2/f;->J:Ljava/lang/CharSequence;

    if-eqz v2, :cond_f

    iget v2, v6, Lq2/f;->Y:F

    invoke-virtual/range {p0 .. p0}, Lq2/f;->r()F

    move-result v3

    add-float/2addr v3, v2

    iget v2, v6, Lq2/f;->b0:F

    add-float/2addr v3, v2

    iget v2, v6, Lq2/f;->f0:F

    invoke-virtual/range {p0 .. p0}, Lq2/f;->s()F

    move-result v4

    add-float/2addr v4, v2

    iget v2, v6, Lq2/f;->c0:F

    add-float/2addr v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_e

    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v15, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_5

    :cond_e
    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v15, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :goto_5
    iget v2, v15, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    :cond_f
    iget-object v0, v6, Lq2/f;->m0:Lx2/p;

    iget-object v2, v0, Lx2/p;->f:LA2/g;

    if-eqz v2, :cond_10

    iget-object v0, v0, Lx2/p;->a:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    iput-object v2, v0, Landroid/text/TextPaint;->drawableState:[I

    iget-object v0, v6, Lq2/f;->m0:Lx2/p;

    iget-object v2, v6, Lq2/f;->g0:Landroid/content/Context;

    iget-object v3, v0, Lx2/p;->f:LA2/g;

    iget-object v4, v0, Lx2/p;->a:Landroid/text/TextPaint;

    iget-object v0, v0, Lx2/p;->b:Lx2/n;

    invoke-virtual {v3, v2, v4, v0}, LA2/g;->d(Landroid/content/Context;Landroid/text/TextPaint;LA2/h;)V

    :cond_10
    iget-object v0, v6, Lq2/f;->m0:Lx2/p;

    iget-object v0, v0, Lx2/p;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, v6, Lq2/f;->m0:Lx2/p;

    iget-object v1, v6, Lq2/f;->J:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lx2/p;->d:Z

    if-nez v2, :cond_11

    iget v0, v0, Lx2/p;->c:F

    goto :goto_7

    :cond_11
    if-nez v1, :cond_12

    goto :goto_6

    :cond_12
    iget-object v2, v0, Lx2/p;->a:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v13, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    :goto_6
    iput v7, v0, Lx2/p;->c:F

    iput-boolean v13, v0, Lx2/p;->d:Z

    move v0, v7

    :goto_7
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-le v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_8

    :cond_13
    move v0, v13

    :goto_8
    if-eqz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v2, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_9

    :cond_14
    move v1, v13

    :goto_9
    iget-object v2, v6, Lq2/f;->J:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    iget-object v3, v6, Lq2/f;->E0:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_15

    iget-object v3, v6, Lq2/f;->m0:Lx2/p;

    iget-object v3, v3, Lx2/p;->a:Landroid/text/TextPaint;

    iget-object v4, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, v6, Lq2/f;->E0:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_15
    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iget-object v2, v6, Lq2/f;->k0:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, v6, Lq2/f;->m0:Lx2/p;

    iget-object v4, v4, Lx2/p;->a:Landroid/text/TextPaint;

    move-object/from16 v7, p1

    move v5, v11

    move v11, v3

    move v3, v12

    move v12, v2

    move v2, v13

    move-object v13, v4

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_17

    invoke-virtual {v14, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_a

    :cond_16
    move v5, v11

    move v3, v12

    move v2, v13

    :cond_17
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lq2/f;->E()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual/range {p0 .. p0}, Lq2/f;->E()Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, v6, Lq2/f;->f0:F

    iget v4, v6, Lq2/f;->e0:F

    add-float/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_18

    iget v4, v15, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, v0, Landroid/graphics/RectF;->right:F

    iget v1, v6, Lq2/f;->T:F

    sub-float/2addr v4, v1

    iput v4, v0, Landroid/graphics/RectF;->left:F

    goto :goto_b

    :cond_18
    iget v4, v15, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iput v4, v0, Landroid/graphics/RectF;->left:F

    iget v1, v6, Lq2/f;->T:F

    add-float/2addr v4, v1

    iput v4, v0, Landroid/graphics/RectF;->right:F

    :goto_b
    invoke-virtual {v15}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v4, v6, Lq2/f;->T:F

    div-float v7, v4, v16

    sub-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_19
    iget-object v0, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v6, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    iget-object v7, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, v6, Lq2/f;->j0:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v2, v2, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget v2, Lcom/google/android/material/ripple/a;->a:I

    iget-object v2, v6, Lq2/f;->R:Landroid/graphics/drawable/Drawable;

    iget-object v4, v6, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, v6, Lq2/f;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object v2, v6, Lq2/f;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1a
    iget v0, v6, Lq2/f;->v0:I

    if-ge v0, v3, :cond_1b

    invoke-virtual {v14, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1b
    :goto_c
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lq2/f;->v0:I

    return p0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lq2/f;->w0:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lq2/f;->E:F

    float-to-int p0, p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 6

    iget v0, p0, Lq2/f;->Y:F

    invoke-virtual {p0}, Lq2/f;->r()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lq2/f;->b0:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lq2/f;->m0:Lx2/p;

    iget-object v2, p0, Lq2/f;->J:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v0, Lx2/p;->d:Z

    if-nez v3, :cond_0

    iget v0, v0, Lx2/p;->c:F

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lx2/p;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    :goto_0
    iput v2, v0, Lx2/p;->c:F

    iput-boolean v3, v0, Lx2/p;->d:Z

    move v0, v2

    :goto_1
    add-float/2addr v0, v1

    iget v1, p0, Lq2/f;->c0:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lq2/f;->s()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lq2/f;->f0:F

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p0, p0, Lq2/f;->G0:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 8

    iget-boolean v0, p0, Lq2/f;->H0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, LC2/i;->getOutline(Landroid/graphics/Outline;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lq2/f;->F:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lq2/f;->getIntrinsicWidth()I

    move-result v5

    iget v0, p0, Lq2/f;->E:F

    float-to-int v6, v0

    iget v7, p0, Lq2/f;->F:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    iget p0, p0, Lq2/f;->v0:I

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final isStateful()Z
    .locals 3

    iget-object v0, p0, Lq2/f;->C:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lq2/f;->u(Landroid/content/res/ColorStateList;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lq2/f;->D:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lq2/f;->u(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lq2/f;->G:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lq2/f;->u(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lq2/f;->B0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq2/f;->C0:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lq2/f;->u(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lq2/f;->m0:Lx2/p;

    iget-object v0, v0, Lx2/p;->f:LA2/g;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, LA2/g;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lq2/f;->V:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lq2/f;->U:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lq2/f;->v(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lq2/f;->v(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lq2/f;->y0:Landroid/content/res/ColorStateList;

    invoke-static {p0}, Lq2/f;->u(Landroid/content/res/ColorStateList;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1
.end method

.method public final onLayoutDirectionChanged(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    invoke-virtual {p0}, Lq2/f;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lq2/f;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lq2/f;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final onLevelChange(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    invoke-virtual {p0}, Lq2/f;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lq2/f;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lq2/f;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public final onStateChange([I)Z
    .locals 1

    iget-boolean v0, p0, Lq2/f;->H0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, LC2/i;->onStateChange([I)Z

    :cond_0
    iget-object v0, p0, Lq2/f;->A0:[I

    invoke-virtual {p0, p1, v0}, Lq2/f;->x([I[I)Z

    move-result p0

    return p0
.end method

.method public final p(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq2/f;->A0:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object p0, p0, Lq2/f;->S:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_2
    iget-object v0, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_3

    iget-boolean v1, p0, Lq2/f;->O:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lq2/f;->M:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method public final q(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lq2/f;->D()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq2/f;->C()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    iget v0, p0, Lq2/f;->Y:F

    iget v1, p0, Lq2/f;->Z:F

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lq2/f;->t0:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v2, p0, Lq2/f;->N:F

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v2, v1

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    :goto_1
    iget-boolean v0, p0, Lq2/f;->t0:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    :goto_2
    iget v1, p0, Lq2/f;->N:F

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6

    if-eqz v0, :cond_6

    iget-object p0, p0, Lq2/f;->g0:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v1, 0x18

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p0

    if-gtz v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    :cond_5
    move v1, p0

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, v1, p1

    sub-float/2addr p0, p1

    iput p0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, v1

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    :cond_7
    return-void
.end method

.method public final r()F
    .locals 4

    invoke-virtual {p0}, Lq2/f;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lq2/f;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget v0, p0, Lq2/f;->Z:F

    iget-boolean v2, p0, Lq2/f;->t0:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget v3, p0, Lq2/f;->N:F

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v3, v1

    :cond_3
    add-float/2addr v3, v0

    iget p0, p0, Lq2/f;->a0:F

    add-float/2addr v3, p0

    return v3
.end method

.method public final s()F
    .locals 2

    invoke-virtual {p0}, Lq2/f;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lq2/f;->d0:F

    iget v1, p0, Lq2/f;->T:F

    add-float/2addr v0, v1

    iget p0, p0, Lq2/f;->e0:F

    add-float/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget v0, p0, Lq2/f;->v0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lq2/f;->v0:I

    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lq2/f;->w0:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lq2/f;->w0:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lq2/f;->y0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lq2/f;->y0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lq2/f;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    iget-object v0, p0, Lq2/f;->z0:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lq2/f;->z0:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lq2/f;->y0:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lq2/f;->x0:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    invoke-virtual {p0}, Lq2/f;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lq2/f;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lq2/f;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public final t()F
    .locals 1

    iget-boolean v0, p0, Lq2/f;->H0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->a:LC2/n;

    iget-object v0, v0, LC2/n;->e:LC2/c;

    invoke-virtual {p0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lq2/f;->F:F

    :goto_0
    return p0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 0

    iget-object p0, p0, Lq2/f;->D0:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq2/e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lq2/e;->a()V

    :cond_0
    return-void
.end method

.method public final x([I[I)Z
    .locals 8

    invoke-super {p0, p1}, LC2/i;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lq2/f;->C:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lq2/f;->n0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, LC2/i;->e(I)I

    move-result v1

    iget v3, p0, Lq2/f;->n0:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    iput v1, p0, Lq2/f;->n0:I

    move v0, v4

    :cond_1
    iget-object v3, p0, Lq2/f;->D:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget v5, p0, Lq2/f;->o0:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {p0, v3}, LC2/i;->e(I)I

    move-result v3

    iget v5, p0, Lq2/f;->o0:I

    if-eq v5, v3, :cond_3

    iput v3, p0, Lq2/f;->o0:I

    move v0, v4

    :cond_3
    invoke-static {v3, v1}, LE/a;->h(II)I

    move-result v1

    iget v3, p0, Lq2/f;->p0:I

    if-eq v3, v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    iget-object v5, p0, LC2/i;->d:LC2/h;

    iget-object v5, v5, LC2/h;->c:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    iput v1, p0, Lq2/f;->p0:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, LC2/i;->l(Landroid/content/res/ColorStateList;)V

    move v0, v4

    :cond_6
    iget-object v1, p0, Lq2/f;->G:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    iget v3, p0, Lq2/f;->q0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    iget v3, p0, Lq2/f;->q0:I

    if-eq v3, v1, :cond_8

    iput v1, p0, Lq2/f;->q0:I

    move v0, v4

    :cond_8
    iget-object v1, p0, Lq2/f;->C0:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/google/android/material/ripple/a;->a([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lq2/f;->C0:Landroid/content/res/ColorStateList;

    iget v3, p0, Lq2/f;->r0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    iget v3, p0, Lq2/f;->r0:I

    if-eq v3, v1, :cond_a

    iput v1, p0, Lq2/f;->r0:I

    iget-boolean v1, p0, Lq2/f;->B0:Z

    if-eqz v1, :cond_a

    move v0, v4

    :cond_a
    iget-object v1, p0, Lq2/f;->m0:Lx2/p;

    iget-object v1, v1, Lx2/p;->f:LA2/g;

    if-eqz v1, :cond_b

    iget-object v1, v1, LA2/g;->j:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    iget v3, p0, Lq2/f;->s0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_6
    iget v3, p0, Lq2/f;->s0:I

    if-eq v3, v1, :cond_c

    iput v1, p0, Lq2/f;->s0:I

    move v0, v4

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_8

    :cond_d
    array-length v3, v1

    move v5, v2

    :goto_7
    if-ge v5, v3, :cond_f

    aget v6, v1, v5

    const v7, 0x10100a0

    if-ne v6, v7, :cond_e

    move v1, v4

    goto :goto_9

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    move v1, v2

    :goto_9
    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lq2/f;->U:Z

    if-eqz v1, :cond_10

    move v1, v4

    goto :goto_a

    :cond_10
    move v1, v2

    :goto_a
    iget-boolean v3, p0, Lq2/f;->t0:Z

    if-eq v3, v1, :cond_12

    iget-object v3, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lq2/f;->r()F

    move-result v0

    iput-boolean v1, p0, Lq2/f;->t0:Z

    invoke-virtual {p0}, Lq2/f;->r()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    move v0, v4

    move v1, v0

    goto :goto_b

    :cond_11
    move v1, v2

    move v0, v4

    goto :goto_b

    :cond_12
    move v1, v2

    :goto_b
    iget-object v3, p0, Lq2/f;->y0:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_13

    iget v5, p0, Lq2/f;->u0:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_c

    :cond_13
    move v3, v2

    :goto_c
    iget v5, p0, Lq2/f;->u0:I

    if-eq v5, v3, :cond_16

    iput v3, p0, Lq2/f;->u0:I

    iget-object v0, p0, Lq2/f;->y0:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lq2/f;->z0:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_15

    if-nez v3, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v5, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_e

    :cond_15
    :goto_d
    const/4 v5, 0x0

    :goto_e
    iput-object v5, p0, Lq2/f;->x0:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_f

    :cond_16
    move v4, v0

    :goto_f
    iget-object v0, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lq2/f;->v(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_17
    iget-object v0, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lq2/f;->v(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_18
    iget-object v0, p0, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lq2/f;->v(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_19

    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lq2/f;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_19
    sget p1, Lcom/google/android/material/ripple/a;->a:I

    iget-object p1, p0, Lq2/f;->R:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lq2/f;->v(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lq2/f;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_1a
    if-eqz v4, :cond_1b

    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    :cond_1b
    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lq2/f;->w()V

    :cond_1c
    return v4
.end method

.method public final y(Z)V
    .locals 1

    iget-boolean v0, p0, Lq2/f;->V:Z

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lq2/f;->C()Z

    move-result v0

    iput-boolean p1, p0, Lq2/f;->V:Z

    invoke-virtual {p0}, Lq2/f;->C()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lq2/f;->p(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lq2/f;->W:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lq2/f;->F(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    invoke-virtual {p0}, Lq2/f;->w()V

    :cond_2
    return-void
.end method

.method public final z(Z)V
    .locals 1

    iget-boolean v0, p0, Lq2/f;->K:Z

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lq2/f;->D()Z

    move-result v0

    iput-boolean p1, p0, Lq2/f;->K:Z

    invoke-virtual {p0}, Lq2/f;->D()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lq2/f;->p(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lq2/f;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lq2/f;->F(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    invoke-virtual {p0}, Lq2/f;->w()V

    :cond_2
    return-void
.end method
