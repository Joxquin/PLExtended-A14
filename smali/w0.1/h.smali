.class public final Lw0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw0/g;

.field public static final b:Lw0/g;

.field public static final c:Lw0/g;

.field public static final d:Lw0/g;

.field public static final e:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lw0/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw0/g;-><init>(I)V

    sput-object v0, Lw0/h;->a:Lw0/g;

    new-instance v0, Lw0/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lw0/g;-><init>(I)V

    sput-object v0, Lw0/h;->b:Lw0/g;

    new-instance v0, Lw0/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lw0/g;-><init>(I)V

    sput-object v0, Lw0/h;->c:Lw0/g;

    new-instance v0, Lw0/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lw0/g;-><init>(I)V

    sput-object v0, Lw0/h;->d:Lw0/g;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lw0/h;->e:F

    return-void
.end method

.method public static a(FFFLandroid/graphics/Path;)V
    .locals 9

    sget-object v0, Lw0/h;->a:Lw0/g;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PathMeasure;

    sget-object v1, Lw0/h;->b:Lw0/g;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    sget-object v2, Lw0/h;->c:Lw0/g;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v0, p3, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p0, v4

    const/4 v6, 0x0

    if-nez v5, :cond_0

    cmpl-float v5, p1, v6

    if-nez v5, :cond_0

    invoke-static {}, Lk0/d;->a()V

    return-void

    :cond_0
    cmpg-float v5, v3, v4

    if-ltz v5, :cond_9

    sub-float v5, p1, p0

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v4, v7

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    mul-float/2addr p0, v3

    mul-float/2addr p1, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr p2, v3

    add-float/2addr v4, p2

    add-float/2addr p0, p2

    cmpl-float p1, v4, v3

    if-ltz p1, :cond_2

    cmpl-float p1, p0, v3

    if-ltz p1, :cond_2

    invoke-static {v4, v3}, Lw0/f;->c(FF)I

    move-result p1

    int-to-float v4, p1

    invoke-static {p0, v3}, Lw0/f;->c(FF)I

    move-result p0

    int-to-float p0, p0

    :cond_2
    cmpg-float p1, v4, v6

    if-gez p1, :cond_3

    invoke-static {v4, v3}, Lw0/f;->c(FF)I

    move-result p1

    int-to-float v4, p1

    :cond_3
    cmpg-float p1, p0, v6

    if-gez p1, :cond_4

    invoke-static {p0, v3}, Lw0/f;->c(FF)I

    move-result p0

    int-to-float p0, p0

    :cond_4
    cmpl-float p1, v4, p0

    if-nez p1, :cond_5

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    invoke-static {}, Lk0/d;->a()V

    return-void

    :cond_5
    if-ltz p1, :cond_6

    sub-float/2addr v4, v3

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 p1, 0x1

    invoke-virtual {v0, v4, p0, v1, p1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float p2, p0, v3

    if-lez p2, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    rem-float/2addr p0, v3

    invoke-virtual {v0, v6, p0, v2, p1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_7
    cmpg-float p0, v4, v6

    if-gez p0, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    add-float/2addr v4, v3

    invoke-virtual {v0, v4, v3, v2, p1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_8
    :goto_0
    invoke-virtual {p3, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-static {}, Lk0/d;->a()V

    return-void

    :cond_9
    :goto_1
    invoke-static {}, Lk0/d;->a()V

    return-void
.end method

.method public static b(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static c()F
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static d(Landroid/graphics/Matrix;)F
    .locals 6

    sget-object v0, Lw0/h;->d:Lw0/g;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    sget v4, Lw0/h;->e:F

    aput v4, v0, v2

    const/4 v5, 0x3

    aput v4, v0, v5

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p0, v0, v2

    aget v1, v0, v1

    sub-float/2addr p0, v1

    aget v1, v0, v5

    aget v0, v0, v3

    sub-float/2addr v1, v0

    float-to-double v2, p0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
