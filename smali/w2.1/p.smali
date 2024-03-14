.class public Lw2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:[I

.field public static final q:LU/a;

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:[I

.field public static final w:[I

.field public static final x:[I

.field public static final y:[I

.field public static final z:[I


# instance fields
.field public a:Z

.field public final b:Lx2/l;

.field public c:Landroid/animation/Animator;

.field public d:Lj2/g;

.field public e:Lj2/g;

.field public f:F

.field public g:F

.field public h:I

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/ArrayList;

.field public final l:Lw2/g;

.field public final m:Lw2/e;

.field public final n:Landroid/graphics/Rect;

.field public final o:Landroid/graphics/Matrix;

.field public p:Lw2/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lj2/a;->c:LU/a;

    sput-object v0, Lw2/p;->q:LU/a;

    const v0, 0x7f0403fe

    sput v0, Lw2/p;->r:I

    const v0, 0x7f04040e

    sput v0, Lw2/p;->s:I

    const v0, 0x7f040401

    sput v0, Lw2/p;->t:I

    const v0, 0x7f04040c

    sput v0, Lw2/p;->u:I

    const v0, 0x10100a7

    const v1, 0x101009e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lw2/p;->v:[I

    const v0, 0x1010367

    const v2, 0x101009c

    filled-new-array {v0, v2, v1}, [I

    move-result-object v3

    sput-object v3, Lw2/p;->w:[I

    filled-new-array {v2, v1}, [I

    move-result-object v2

    sput-object v2, Lw2/p;->x:[I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lw2/p;->y:[I

    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lw2/p;->z:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lw2/p;->A:[I

    return-void
.end method

.method public constructor <init>(Lw2/g;Lw2/e;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw2/p;->a:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lw2/p;->g:F

    const/4 v1, 0x0

    iput v1, p0, Lw2/p;->h:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lw2/p;->n:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lw2/p;->o:Landroid/graphics/Matrix;

    iput-object p1, p0, Lw2/p;->l:Lw2/g;

    iput-object p2, p0, Lw2/p;->m:Lw2/e;

    new-instance p2, Lx2/l;

    invoke-direct {p2}, Lx2/l;-><init>()V

    iput-object p2, p0, Lw2/p;->b:Lx2/l;

    new-instance v2, Lw2/m;

    move-object v3, p0

    check-cast v3, Lw2/q;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lw2/m;-><init>(Lw2/q;I)V

    invoke-static {v2}, Lw2/p;->c(Lw2/m;)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v4, Lw2/p;->v:[I

    invoke-virtual {p2, v4, v2}, Lx2/l;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v2, Lw2/m;

    invoke-direct {v2, v3, v0}, Lw2/m;-><init>(Lw2/q;I)V

    invoke-static {v2}, Lw2/p;->c(Lw2/m;)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v4, Lw2/p;->w:[I

    invoke-virtual {p2, v4, v2}, Lx2/l;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v2, Lw2/m;

    invoke-direct {v2, v3, v0}, Lw2/m;-><init>(Lw2/q;I)V

    invoke-static {v2}, Lw2/p;->c(Lw2/m;)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v4, Lw2/p;->x:[I

    invoke-virtual {p2, v4, v2}, Lx2/l;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v2, Lw2/m;

    invoke-direct {v2, v3, v0}, Lw2/m;-><init>(Lw2/q;I)V

    invoke-static {v2}, Lw2/p;->c(Lw2/m;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Lw2/p;->y:[I

    invoke-virtual {p2, v2, v0}, Lx2/l;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v0, Lw2/m;

    const/4 v2, 0x3

    invoke-direct {v0, v3, v2}, Lw2/m;-><init>(Lw2/q;I)V

    invoke-static {v0}, Lw2/p;->c(Lw2/m;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Lw2/p;->z:[I

    invoke-virtual {p2, v2, v0}, Lx2/l;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v0, Lw2/m;

    invoke-direct {v0, v3, v1}, Lw2/m;-><init>(Lw2/q;I)V

    invoke-static {v0}, Lw2/p;->c(Lw2/m;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lw2/p;->A:[I

    invoke-virtual {p2, v1, v0}, Lx2/l;->a([ILandroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Lw2/p;->f:F

    return-void
.end method

.method public static c(Lw2/m;)Landroid/animation/ValueAnimator;
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Lw2/p;->q:LU/a;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(Lj2/g;FFF)Landroid/animation/AnimatorSet;
    .locals 5

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    iget-object p2, p0, Lw2/p;->l:Lw2/g;

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "opacity"

    invoke-virtual {p1, v2}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v1, [F

    aput p3, v2, v3

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "scale"

    invoke-virtual {p1, v2}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object v4

    invoke-virtual {v4, v0}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    aput p3, v1, v3

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p1, v2}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object v0

    invoke-virtual {v0, p3}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lw2/p;->o:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    new-instance v0, Lj2/f;

    invoke-direct {v0}, Lj2/f;-><init>()V

    new-instance v1, Lw2/j;

    invoke-direct {v1, p0}, Lw2/j;-><init>(Lw2/p;)V

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0, p3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    filled-new-array {p0}, [Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p2, v0, v1, p0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p2, "iconScale"

    invoke-virtual {p1, p2}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p0, p4}, Lj2/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p0
.end method

.method public final b(FFFII)Landroid/animation/AnimatorSet;
    .locals 16

    move-object/from16 v1, p0

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x2

    new-array v0, v12, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    iget-object v14, v1, Lw2/p;->l:Lw2/g;

    invoke-virtual {v14}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v2

    invoke-virtual {v14}, Landroid/widget/ImageButton;->getScaleX()F

    move-result v4

    invoke-virtual {v14}, Landroid/widget/ImageButton;->getScaleY()F

    move-result v6

    iget v7, v1, Lw2/p;->g:F

    new-instance v9, Landroid/graphics/Matrix;

    iget-object v0, v1, Lw2/p;->o:Landroid/graphics/Matrix;

    invoke-direct {v9, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v15, Lw2/k;

    move-object v0, v15

    move/from16 v3, p1

    move/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lw2/k;-><init>(Lw2/p;FFFFFFFLandroid/graphics/Matrix;)V

    invoke-virtual {v13, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v11}, Lj2/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    invoke-virtual {v14}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v14}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move/from16 v2, p4

    invoke-static {v2, v0}, LA2/c;->a(ILandroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    :cond_0
    int-to-long v0, v1

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v14}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lj2/a;->b:LU/b;

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v5, p5

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v1, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    iget-object v1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "cubic-bezier"

    invoke-static {v1, v5}, Ly2/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "path"

    if-nez v6, :cond_3

    invoke-static {v1, v8}, Ly2/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v4

    :goto_1
    if-eqz v6, :cond_7

    invoke-static {v1, v5}, Ly2/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-static {v0, v7}, Ly2/a;->a([Ljava/lang/String;I)F

    move-result v1

    invoke-static {v0, v4}, Ly2/a;->a([Ljava/lang/String;I)F

    move-result v2

    invoke-static {v0, v12}, Ly2/a;->a([Ljava/lang/String;I)F

    move-result v4

    invoke-static {v0, v3}, Ly2/a;->a([Ljava/lang/String;I)F

    move-result v0

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v1, v2, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v1, v3

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v1, v8}, Ly2/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LE/e;->c(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid motion easing type: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    :goto_2
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v10

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public e()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public f([I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final g()V
    .locals 1

    iget-object p0, p0, Lw2/p;->k:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/n;

    invoke-interface {v0}, Lw2/n;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lw2/p;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lw2/p;->d(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    const-string v0, "Didn\'t initialize content background"

    invoke-static {p0, v0}, LL/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p0
.end method
