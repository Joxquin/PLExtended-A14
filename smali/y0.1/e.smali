.class public final Ly0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Landroid/view/animation/Interpolator;

.field public static final B:Landroid/view/animation/Interpolator;

.field public static final C:Landroid/view/animation/Interpolator;

.field public static final D:Landroid/view/animation/Interpolator;

.field public static final E:Landroid/view/animation/Interpolator;

.field public static final F:Landroid/view/animation/Interpolator;

.field public static final G:Ly0/d;

.field public static final H:Ly0/d;

.field public static final I:Ly0/d;

.field public static final J:Ly0/d;

.field public static final a:Landroid/view/animation/Interpolator;

.field public static final b:Landroid/view/animation/Interpolator;

.field public static final c:Landroid/view/animation/Interpolator;

.field public static final d:Landroid/view/animation/Interpolator;

.field public static final e:Ly0/a;

.field public static final f:Ly0/a;

.field public static final g:Landroid/view/animation/Interpolator;

.field public static final h:Landroid/view/animation/Interpolator;

.field public static final i:Landroid/view/animation/Interpolator;

.field public static final j:Landroid/view/animation/Interpolator;

.field public static final k:Landroid/view/animation/Interpolator;

.field public static final l:Landroid/view/animation/Interpolator;

.field public static final m:Landroid/view/animation/Interpolator;

.field public static final n:Landroid/view/animation/Interpolator;

.field public static final o:Landroid/view/animation/Interpolator;

.field public static final p:Landroid/view/animation/Interpolator;

.field public static final q:Landroid/view/animation/Interpolator;

.field public static final r:Landroid/view/animation/Interpolator;

.field public static final s:Landroid/view/animation/Interpolator;

.field public static final t:Landroid/view/animation/Interpolator;

.field public static final u:Landroid/view/animation/Interpolator;

.field public static final v:Landroid/view/animation/Interpolator;

.field public static final w:Landroid/view/animation/Interpolator;

.field public static final x:Landroid/view/animation/Interpolator;

.field public static final y:Landroid/view/animation/Interpolator;

.field public static final z:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3d4ccccd    # 0.05f

    const/4 v2, 0x0

    const v3, 0x3e088872

    const v4, 0x3d75c28f    # 0.06f

    const v5, 0x3e2aaa7e

    const v6, 0x3ecccccd    # 0.4f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v1, 0x3e55553f    # 0.208333f

    const v2, 0x3f51eb85    # 0.82f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v0, Ly0/e;->a:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ly0/e;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3f333333    # 0.7f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ly0/e;->c:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const v10, 0x3d4ccccd    # 0.05f

    const/4 v11, 0x0

    const v12, 0x3e088872

    const v13, 0x3da3d70a    # 0.08f

    const v14, 0x3e2aaa7e

    const v15, 0x3ecccccd    # 0.4f

    move-object v9, v0

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v10, 0x3e666666    # 0.225f

    const v11, 0x3f70a3d7    # 0.94f

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v3, Ly0/e;->d:Landroid/view/animation/Interpolator;

    new-instance v0, Ly0/a;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ly0/a;-><init>(I)V

    sput-object v0, Ly0/e;->e:Ly0/a;

    new-instance v0, Ly0/a;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Ly0/a;-><init>(I)V

    sput-object v0, Ly0/e;->f:Ly0/a;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-direct {v0, v9}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Ly0/e;->g:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v10, 0x3f99999a    # 1.2f

    invoke-direct {v0, v10}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Ly0/e;->h:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v10, 0x3fd9999a    # 1.7f

    invoke-direct {v0, v10}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Ly0/e;->i:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v11, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v11, v8, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ly0/e;->j:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v8, v8, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ly0/e;->k:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v12, v8, v11, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ly0/e;->l:Landroid/view/animation/Interpolator;

    new-instance v13, Landroid/view/animation/PathInterpolator;

    invoke-direct {v13, v12, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v13, Landroid/view/animation/PathInterpolator;

    invoke-direct {v13, v8, v8, v11, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v14, Ly0/e;->m:Landroid/view/animation/Interpolator;

    sput-object v0, Ly0/e;->n:Landroid/view/animation/Interpolator;

    sput-object v13, Ly0/e;->o:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v13, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v8, v13, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v11, v8, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ly0/e;->p:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v13, v8, v12, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ly0/e;->q:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v8, v8, v11, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ly0/e;->r:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v12, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ly0/e;->s:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v8, v8, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ly0/e;->t:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v12, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v8, v8, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Ly0/e;->u:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Ly0/e;->v:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-direct {v0, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Ly0/e;->w:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v14, 0x40000000    # 2.0f

    invoke-direct {v0, v14}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Ly0/e;->x:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Ly0/e;->y:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Ly0/e;->z:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Ly0/e;->A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Ly0/e;->B:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Ly0/e;->C:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40200000    # 2.5f

    invoke-direct {v0, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Ly0/e;->D:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40400000    # 3.0f

    invoke-direct {v0, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Ly0/e;->E:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v12, v8, v13, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v9, 0x3fb33333    # 1.4f

    invoke-direct {v0, v12, v8, v11, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v9, 0x3f8ccccd    # 1.1f

    invoke-direct {v0, v12, v8, v11, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v8, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v12, v8, v11, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v8, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ly0/e;->F:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v8, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Ly0/d;

    invoke-direct {v0, v3}, Ly0/d;-><init>(I)V

    sput-object v0, Ly0/e;->G:Ly0/d;

    new-instance v0, Ly0/d;

    invoke-direct {v0, v7}, Ly0/d;-><init>(I)V

    sput-object v0, Ly0/e;->H:Ly0/d;

    new-instance v0, Ly0/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0/d;-><init>(I)V

    sput-object v0, Ly0/e;->I:Ly0/d;

    new-instance v0, Ly0/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0/d;-><init>(I)V

    sput-object v0, Ly0/e;->J:Ly0/d;

    return-void
.end method

.method public static a(Landroid/view/animation/Interpolator;FFF)F
    .locals 3

    cmpg-float v0, p3, p2

    if-ltz v0, :cond_4

    cmpl-float v0, p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_1

    cmpl-float v0, p1, p3

    if-nez v0, :cond_1

    cmpl-float p0, p1, v2

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    cmpg-float v0, p1, p2

    if-gez v0, :cond_2

    return v2

    :cond_2
    cmpl-float v0, p1, p3

    if-lez v0, :cond_3

    return v1

    :cond_3
    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "upperBound (%f) must be greater than lowerBound (%f)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(FFLandroid/view/animation/Interpolator;)Ly0/b;
    .locals 2

    cmpg-float v0, p1, p0

    if-ltz v0, :cond_0

    new-instance v0, Ly0/b;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, p1, v1}, Ly0/b;-><init>(Landroid/view/animation/Interpolator;FFI)V

    return-object v0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "upperBound (%f) must be greater than lowerBound (%f)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static c(F)Ly0/d;
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    sget-object p0, Ly0/e;->I:Ly0/d;

    goto :goto_0

    :cond_0
    sget-object p0, Ly0/e;->J:Ly0/d;

    :goto_0
    return-object p0
.end method
