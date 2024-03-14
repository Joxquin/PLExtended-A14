.class public LC2/i;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements LC2/y;


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Landroid/graphics/Paint;


# instance fields
.field public d:LC2/h;

.field public final e:[LC2/w;

.field public final f:[LC2/w;

.field public final g:Ljava/util/BitSet;

.field public h:Z

.field public final i:Landroid/graphics/Matrix;

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Landroid/graphics/RectF;

.field public final m:Landroid/graphics/RectF;

.field public final n:Landroid/graphics/Region;

.field public final o:Landroid/graphics/Region;

.field public p:LC2/n;

.field public final q:Landroid/graphics/Paint;

.field public final r:Landroid/graphics/Paint;

.field public final s:LB2/a;

.field public final t:LC2/g;

.field public final u:LC2/p;

.field public v:Landroid/graphics/PorterDuffColorFilter;

.field public w:Landroid/graphics/PorterDuffColorFilter;

.field public x:I

.field public final y:Landroid/graphics/RectF;

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, LC2/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LC2/i;->A:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, LC2/i;->B:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LC2/n;

    invoke-direct {v0}, LC2/n;-><init>()V

    invoke-direct {p0, v0}, LC2/i;-><init>(LC2/n;)V

    return-void
.end method

.method public constructor <init>(LC2/h;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [LC2/w;

    .line 5
    iput-object v1, p0, LC2/i;->e:[LC2/w;

    new-array v0, v0, [LC2/w;

    .line 6
    iput-object v0, p0, LC2/i;->f:[LC2/w;

    .line 7
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, LC2/i;->g:Ljava/util/BitSet;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LC2/i;->i:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LC2/i;->j:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LC2/i;->k:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LC2/i;->l:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LC2/i;->m:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, LC2/i;->n:Landroid/graphics/Region;

    .line 14
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, LC2/i;->o:Landroid/graphics/Region;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LC2/i;->q:Landroid/graphics/Paint;

    .line 16
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, LC2/i;->r:Landroid/graphics/Paint;

    .line 17
    new-instance v3, LB2/a;

    invoke-direct {v3}, LB2/a;-><init>()V

    iput-object v3, p0, LC2/i;->s:LB2/a;

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 19
    sget-object v3, LC2/o;->a:LC2/p;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v3, LC2/p;

    invoke-direct {v3}, LC2/p;-><init>()V

    :goto_0
    iput-object v3, p0, LC2/i;->u:LC2/p;

    .line 21
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, LC2/i;->y:Landroid/graphics/RectF;

    .line 22
    iput-boolean v1, p0, LC2/i;->z:Z

    .line 23
    iput-object p1, p0, LC2/i;->d:LC2/h;

    .line 24
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-virtual {p0}, LC2/i;->n()Z

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, LC2/i;->m([I)Z

    .line 28
    new-instance p1, LC2/g;

    invoke-direct {p1, p0}, LC2/g;-><init>(LC2/i;)V

    iput-object p1, p0, LC2/i;->t:LC2/g;

    return-void
.end method

.method public constructor <init>(LC2/n;)V
    .locals 1

    .line 3
    new-instance v0, LC2/h;

    invoke-direct {v0, p1}, LC2/h;-><init>(LC2/n;)V

    invoke-direct {p0, v0}, LC2/i;-><init>(LC2/h;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, LC2/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)LC2/m;

    move-result-object p1

    invoke-virtual {p1}, LC2/m;->a()LC2/n;

    move-result-object p1

    invoke-direct {p0, p1}, LC2/i;-><init>(LC2/n;)V

    return-void
.end method


# virtual methods
.method public final b(LC2/n;)V
    .locals 1

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iput-object p1, v0, LC2/h;->a:LC2/n;

    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    return-void
.end method

.method public final c(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, LC2/i;->u:LC2/p;

    iget-object v1, p0, LC2/i;->d:LC2/h;

    iget-object v2, v1, LC2/h;->a:LC2/n;

    iget v3, v1, LC2/h;->j:F

    iget-object v4, p0, LC2/i;->t:LC2/g;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, LC2/p;->a(LC2/n;FLandroid/graphics/RectF;LC2/g;Landroid/graphics/Path;)V

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget v0, v0, LC2/h;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, LC2/i;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, LC2/i;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, LC2/i;->d:LC2/h;

    iget v1, v1, LC2/h;->i:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, LC2/i;->i:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p0, p0, LC2/i;->y:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public final d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, LC2/i;->e(I)I

    move-result p1

    :cond_1
    iput p1, p0, LC2/i;->x:I

    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, LC2/i;->e(I)I

    move-result p2

    iput p2, p0, LC2/i;->x:I

    if-eq p2, p1, :cond_3

    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, LC2/i;->q:Landroid/graphics/Paint;

    iget-object v1, v6, LC2/i;->v:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v6, LC2/i;->q:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    iget-object v0, v6, LC2/i;->q:Landroid/graphics/Paint;

    iget-object v1, v6, LC2/i;->d:LC2/h;

    iget v1, v1, LC2/h;->l:I

    ushr-int/lit8 v2, v1, 0x7

    add-int/2addr v1, v2

    mul-int/2addr v1, v8

    ushr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v6, LC2/i;->r:Landroid/graphics/Paint;

    iget-object v1, v6, LC2/i;->w:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v6, LC2/i;->r:Landroid/graphics/Paint;

    iget-object v1, v6, LC2/i;->d:LC2/h;

    iget v1, v1, LC2/h;->k:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v6, LC2/i;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    iget-object v0, v6, LC2/i;->r:Landroid/graphics/Paint;

    iget-object v1, v6, LC2/i;->d:LC2/h;

    iget v1, v1, LC2/h;->l:I

    ushr-int/lit8 v2, v1, 0x7

    add-int/2addr v1, v2

    mul-int/2addr v1, v9

    ushr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, v6, LC2/i;->h:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v6, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->u:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, v6, LC2/i;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_1

    move v0, v11

    goto :goto_0

    :cond_1
    move v0, v12

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    iget-object v0, v6, LC2/i;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v1

    goto :goto_1

    :cond_2
    move v0, v10

    :goto_1
    neg-float v0, v0

    iget-object v2, v6, LC2/i;->d:LC2/h;

    iget-object v2, v2, LC2/h;->a:LC2/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LC2/m;

    invoke-direct {v3, v2}, LC2/m;-><init>(LC2/n;)V

    iget-object v4, v2, LC2/n;->e:LC2/c;

    instance-of v5, v4, LC2/k;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance v5, LC2/b;

    invoke-direct {v5, v0, v4}, LC2/b;-><init>(FLC2/c;)V

    move-object v4, v5

    :goto_2
    iput-object v4, v3, LC2/m;->e:LC2/c;

    iget-object v4, v2, LC2/n;->f:LC2/c;

    instance-of v5, v4, LC2/k;

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    new-instance v5, LC2/b;

    invoke-direct {v5, v0, v4}, LC2/b;-><init>(FLC2/c;)V

    move-object v4, v5

    :goto_3
    iput-object v4, v3, LC2/m;->f:LC2/c;

    iget-object v4, v2, LC2/n;->h:LC2/c;

    instance-of v5, v4, LC2/k;

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    new-instance v5, LC2/b;

    invoke-direct {v5, v0, v4}, LC2/b;-><init>(FLC2/c;)V

    move-object v4, v5

    :goto_4
    iput-object v4, v3, LC2/m;->h:LC2/c;

    iget-object v2, v2, LC2/n;->g:LC2/c;

    instance-of v4, v2, LC2/k;

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    new-instance v4, LC2/b;

    invoke-direct {v4, v0, v2}, LC2/b;-><init>(FLC2/c;)V

    move-object v2, v4

    :goto_5
    iput-object v2, v3, LC2/m;->g:LC2/c;

    new-instance v14, LC2/n;

    invoke-direct {v14, v3}, LC2/n;-><init>(LC2/m;)V

    iput-object v14, v6, LC2/i;->p:LC2/n;

    iget-object v13, v6, LC2/i;->u:LC2/p;

    iget-object v0, v6, LC2/i;->d:LC2/h;

    iget v15, v0, LC2/h;->j:F

    iget-object v0, v6, LC2/i;->m:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, v6, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->u:Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v2, :cond_7

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v2, :cond_8

    :cond_7
    iget-object v0, v6, LC2/i;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_8

    move v0, v11

    goto :goto_6

    :cond_8
    move v0, v12

    :goto_6
    if-eqz v0, :cond_9

    iget-object v0, v6, LC2/i;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v1

    goto :goto_7

    :cond_9
    move v0, v10

    :goto_7
    iget-object v1, v6, LC2/i;->m:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, v6, LC2/i;->m:Landroid/graphics/RectF;

    iget-object v1, v6, LC2/i;->k:Landroid/graphics/Path;

    const/16 v17, 0x0

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, LC2/p;->a(LC2/n;FLandroid/graphics/RectF;LC2/g;Landroid/graphics/Path;)V

    invoke-virtual/range {p0 .. p0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, v6, LC2/i;->j:Landroid/graphics/Path;

    invoke-virtual {v6, v0, v1}, LC2/i;->c(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iput-boolean v12, v6, LC2/i;->h:Z

    :cond_a
    iget-object v0, v6, LC2/i;->d:LC2/h;

    iget v1, v0, LC2/h;->p:I

    const/4 v2, 0x2

    if-eq v1, v11, :cond_c

    iget v3, v0, LC2/h;->q:I

    if-lez v3, :cond_c

    if-eq v1, v2, :cond_b

    iget-object v0, v0, LC2/h;->a:LC2/n;

    invoke-virtual/range {p0 .. p0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, LC2/n;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v6, LC2/i;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    goto :goto_8

    :cond_b
    move v0, v11

    goto :goto_9

    :cond_c
    :goto_8
    move v0, v12

    :goto_9
    if-nez v0, :cond_d

    goto/16 :goto_a

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, v6, LC2/i;->d:LC2/h;

    iget v1, v0, LC2/h;->r:I

    int-to-double v3, v1

    iget v0, v0, LC2/h;->s:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iget-object v1, v6, LC2/i;->d:LC2/h;

    iget v3, v1, LC2/h;->r:I

    int-to-double v3, v3

    iget v1, v1, LC2/h;->s:I

    int-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v3

    double-to-int v1, v13

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, v6, LC2/i;->z:Z

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p1}, LC2/i;->f(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    :cond_e
    iget-object v0, v6, LC2/i;->y:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, v6, LC2/i;->y:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    if-ltz v0, :cond_15

    if-ltz v1, :cond_15

    iget-object v3, v6, LC2/i;->y:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v6, LC2/i;->d:LC2/h;

    iget v4, v4, LC2/h;->q:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    iget-object v3, v6, LC2/i;->y:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    iget-object v5, v6, LC2/i;->d:LC2/h;

    iget v5, v5, LC2/h;->q:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v6, LC2/i;->d:LC2/h;

    iget v5, v5, LC2/h;->q:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v6, LC2/i;->d:LC2/h;

    iget v5, v5, LC2/h;->q:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v1, v4

    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, v3}, LC2/i;->f(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_a
    iget-object v0, v6, LC2/i;->d:LC2/h;

    iget-object v1, v0, LC2/h;->u:Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v1, v2, :cond_10

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v1, v2, :cond_f

    goto :goto_b

    :cond_f
    move v1, v12

    goto :goto_c

    :cond_10
    :goto_b
    move v1, v11

    :goto_c
    if-eqz v1, :cond_11

    iget-object v2, v6, LC2/i;->q:Landroid/graphics/Paint;

    iget-object v3, v6, LC2/i;->j:Landroid/graphics/Path;

    iget-object v4, v0, LC2/h;->a:LC2/n;

    invoke-virtual/range {p0 .. p0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, LC2/i;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LC2/n;Landroid/graphics/RectF;)V

    :cond_11
    iget-object v0, v6, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->u:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_12

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_13

    :cond_12
    iget-object v0, v6, LC2/i;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_13

    goto :goto_d

    :cond_13
    move v11, v12

    :goto_d
    if-eqz v11, :cond_14

    invoke-virtual/range {p0 .. p1}, LC2/i;->h(Landroid/graphics/Canvas;)V

    :cond_14
    iget-object v0, v6, LC2/i;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v6, LC2/i;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(I)I
    .locals 2

    iget-object p0, p0, LC2/i;->d:LC2/h;

    iget v0, p0, LC2/h;->n:F

    iget v1, p0, LC2/h;->o:F

    add-float/2addr v0, v1

    iget v1, p0, LC2/h;->m:F

    add-float/2addr v0, v1

    iget-object p0, p0, LC2/h;->b:Lu2/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, p1}, Lu2/a;->a(FI)I

    move-result p1

    :cond_0
    return p1
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, LC2/i;->g:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, LC2/i;->A:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget v0, v0, LC2/h;->r:I

    if-eqz v0, :cond_1

    iget-object v0, p0, LC2/i;->j:Landroid/graphics/Path;

    iget-object v1, p0, LC2/i;->s:LB2/a;

    iget-object v1, v1, LB2/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LC2/i;->e:[LC2/w;

    aget-object v1, v1, v0

    iget-object v2, p0, LC2/i;->s:LB2/a;

    iget-object v3, p0, LC2/i;->d:LC2/h;

    iget v3, v3, LC2/h;->q:I

    sget-object v4, LC2/w;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v2, v3, p1}, LC2/w;->a(Landroid/graphics/Matrix;LB2/a;ILandroid/graphics/Canvas;)V

    iget-object v1, p0, LC2/i;->f:[LC2/w;

    aget-object v1, v1, v0

    iget-object v2, p0, LC2/i;->s:LB2/a;

    iget-object v3, p0, LC2/i;->d:LC2/h;

    iget v3, v3, LC2/h;->q:I

    invoke-virtual {v1, v4, v2, v3, p1}, LC2/w;->a(Landroid/graphics/Matrix;LB2/a;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, LC2/i;->z:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget v1, v0, LC2/h;->r:I

    int-to-double v1, v1

    iget v0, v0, LC2/h;->s:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v0, v3

    iget-object v1, p0, LC2/i;->d:LC2/h;

    iget v2, v1, LC2/h;->r:I

    int-to-double v2, v2

    iget v1, v1, LC2/h;->s:I

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, LC2/i;->j:Landroid/graphics/Path;

    sget-object v2, LC2/i;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float p0, v0

    int-to-float v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LC2/n;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4, p5}, LC2/n;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p4, LC2/n;->f:LC2/c;

    invoke-interface {p3, p5}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p0, p0, LC2/i;->d:LC2/h;

    iget p0, p0, LC2/h;->j:F

    mul-float/2addr p3, p0

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, LC2/i;->d:LC2/h;

    iget p0, p0, LC2/h;->l:I

    return p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, LC2/i;->d:LC2/h;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget v1, v0, LC2/h;->p:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, LC2/h;->a:LC2/n;

    invoke-virtual {p0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, LC2/n;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->a:LC2/n;

    iget-object v0, v0, LC2/n;->e:LC2/c;

    invoke-virtual {p0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    iget-object v1, p0, LC2/i;->d:LC2/h;

    iget v1, v1, LC2/h;->j:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_1
    invoke-virtual {p0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, LC2/i;->j:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, LC2/i;->c(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, LC2/i;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    :try_start_0
    iget-object p0, p0, LC2/i;->j:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->h:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, LC2/i;->n:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, LC2/i;->j:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, LC2/i;->c(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, LC2/i;->o:Landroid/graphics/Region;

    iget-object v1, p0, LC2/i;->j:Landroid/graphics/Path;

    iget-object v2, p0, LC2/i;->n:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, LC2/i;->n:Landroid/graphics/Region;

    iget-object v1, p0, LC2/i;->o:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object p0, p0, LC2/i;->n:Landroid/graphics/Region;

    return-object p0
.end method

.method public h(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, LC2/i;->r:Landroid/graphics/Paint;

    iget-object v3, p0, LC2/i;->k:Landroid/graphics/Path;

    iget-object v4, p0, LC2/i;->p:LC2/n;

    iget-object v0, p0, LC2/i;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, LC2/i;->i()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->u:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    const/4 v5, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, LC2/i;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, LC2/i;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    :cond_2
    iget-object v0, p0, LC2/i;->m:Landroid/graphics/RectF;

    invoke-virtual {v0, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v5, p0, LC2/i;->m:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, LC2/i;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LC2/n;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final i()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, LC2/i;->l:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, LC2/i;->l:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LC2/i;->h:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object p0, p0, LC2/i;->d:LC2/h;

    iget-object p0, p0, LC2/h;->c:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final j(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, LC2/i;->d:LC2/h;

    new-instance v1, Lu2/a;

    invoke-direct {v1, p1}, Lu2/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, LC2/h;->b:Lu2/a;

    invoke-virtual {p0}, LC2/i;->o()V

    return-void
.end method

.method public final k(F)V
    .locals 2

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget v1, v0, LC2/h;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, LC2/h;->n:F

    invoke-virtual {p0}, LC2/i;->o()V

    :cond_0
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget-object v1, v0, LC2/h;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, LC2/h;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, LC2/i;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final m([I)Z
    .locals 4

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget-object v0, v0, LC2/h;->c:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LC2/i;->q:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, LC2/i;->d:LC2/h;

    iget-object v2, v2, LC2/h;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, LC2/i;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, LC2/i;->d:LC2/h;

    iget-object v2, v2, LC2/h;->d:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, LC2/i;->r:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, LC2/i;->d:LC2/h;

    iget-object v3, v3, LC2/h;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    iget-object p0, p0, LC2/i;->r:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, LC2/h;

    iget-object v1, p0, LC2/i;->d:LC2/h;

    invoke-direct {v0, v1}, LC2/h;-><init>(LC2/h;)V

    iput-object v0, p0, LC2/i;->d:LC2/h;

    return-object p0
.end method

.method public final n()Z
    .locals 7

    iget-object v0, p0, LC2/i;->v:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, LC2/i;->w:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, LC2/i;->d:LC2/h;

    iget-object v3, v2, LC2/h;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, LC2/h;->g:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, LC2/i;->q:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, LC2/i;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, LC2/i;->v:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, LC2/i;->d:LC2/h;

    iget-object v3, v2, LC2/h;->e:Landroid/content/res/ColorStateList;

    iget-object v2, v2, LC2/h;->g:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, LC2/i;->r:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v2, v4, v6}, LC2/i;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, LC2/i;->w:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, LC2/i;->d:LC2/h;

    iget-boolean v3, v2, LC2/h;->t:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, LC2/i;->s:LB2/a;

    iget-object v2, v2, LC2/h;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v3, v2}, LB2/a;->a(I)V

    :cond_0
    iget-object v2, p0, LC2/i;->v:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, LC2/i;->w:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget v1, v0, LC2/h;->n:F

    iget v2, v0, LC2/h;->o:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, LC2/h;->q:I

    iget-object v0, p0, LC2/i;->d:LC2/h;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, LC2/h;->r:I

    invoke-virtual {p0}, LC2/i;->n()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LC2/i;->h:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    invoke-virtual {p0, p1}, LC2/i;->m([I)Z

    move-result p1

    invoke-virtual {p0}, LC2/i;->n()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, LC2/i;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget v1, v0, LC2/h;->l:I

    if-eq v1, p1, :cond_0

    iput p1, v0, LC2/h;->l:I

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p1, p0, LC2/i;->d:LC2/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LC2/i;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iput-object p1, v0, LC2/h;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, LC2/i;->n()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, LC2/i;->d:LC2/h;

    iget-object v1, v0, LC2/h;->g:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, LC2/h;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, LC2/i;->n()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
