.class public final Lcom/android/systemui/animation/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/systemui/animation/o;

.field public static final b:Lcom/android/systemui/animation/m;

.field public static final c:Z

.field public static final d:Lcom/android/systemui/animation/s;

.field public static final e:J

.field public static final f:Landroid/view/animation/Interpolator;

.field public static final g:Landroid/view/animation/PathInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v11, Lcom/android/systemui/animation/o;

    const-wide/16 v5, 0x96

    const-wide/16 v7, 0x96

    const-wide/16 v1, 0x1f4

    const-wide/16 v3, 0x0

    const-wide/16 v9, 0xb7

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/animation/o;-><init>(JJJJJ)V

    sput-object v11, Lcom/android/systemui/animation/f;->a:Lcom/android/systemui/animation/o;

    new-instance v0, Lcom/android/systemui/animation/m;

    sget-object v1, Ly0/e;->a:Landroid/view/animation/Interpolator;

    const-string v2, "EMPHASIZED"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v10}, Landroid/graphics/Path;->moveTo(FF)V

    const v4, 0x3df93dd9    # 0.1217f

    const v5, 0x3d3d3c36    # 0.0462f

    const v6, 0x3e19999a    # 0.15f

    const v7, 0x3eefec57    # 0.4686f

    const v8, 0x3e2ab368    # 0.1667f

    const v9, 0x3f28f5c3    # 0.66f

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v4, 0x3e3bcd36    # 0.1834f

    const v5, 0x3f6346dc    # 0.8878f

    const v6, 0x3e2ab368    # 0.1667f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sget-object v2, Ly0/e;->o:Landroid/view/animation/Interpolator;

    const-string v4, "LINEAR_OUT_SLOW_IN"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v10, v10, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/systemui/animation/m;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/android/systemui/animation/f;->b:Lcom/android/systemui/animation/m;

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v1, Lcom/android/systemui/animation/f;->c:Z

    new-instance v1, Lcom/android/systemui/animation/s;

    invoke-direct {v1, v11, v0}, Lcom/android/systemui/animation/s;-><init>(Lcom/android/systemui/animation/o;Lcom/android/systemui/animation/m;)V

    sput-object v1, Lcom/android/systemui/animation/f;->d:Lcom/android/systemui/animation/s;

    new-instance v0, Lcom/android/systemui/animation/s;

    const-wide/16 v0, 0xea

    sput-wide v0, Lcom/android/systemui/animation/f;->e:J

    sget-object v0, Ly0/e;->k:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/animation/f;->f:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v10, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/f;->g:Landroid/view/animation/PathInterpolator;

    return-void
.end method


# virtual methods
.method public final createRunner(Lcom/android/systemui/animation/d;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    .locals 0

    const-string p0, "controller"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/systemui/animation/d;->isDialogLaunch()Z

    new-instance p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    throw p0
.end method
