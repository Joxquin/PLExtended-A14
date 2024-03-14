.class public final Landroidx/dynamicanimation/animation/o;
.super Landroidx/dynamicanimation/animation/m;
.source "SourceFile"


# instance fields
.field public final x:Landroidx/dynamicanimation/animation/n;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/m;-><init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V

    new-instance p1, Landroidx/dynamicanimation/animation/n;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/n;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/o;->x:Landroidx/dynamicanimation/animation/n;

    iget p0, p0, Landroidx/dynamicanimation/animation/m;->j:F

    const/high16 p2, 0x3f400000    # 0.75f

    mul-float/2addr p0, p2

    const/high16 p2, 0x427a0000    # 62.5f

    mul-float/2addr p0, p2

    iput p0, p1, Landroidx/dynamicanimation/animation/n;->b:F

    return-void
.end method


# virtual methods
.method public final g(F)V
    .locals 1

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr p1, v0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/o;->x:Landroidx/dynamicanimation/animation/n;

    iput p1, p0, Landroidx/dynamicanimation/animation/n;->b:F

    return-void
.end method

.method public final i(J)Z
    .locals 6

    iget v0, p0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v1, p0, Landroidx/dynamicanimation/animation/m;->a:F

    float-to-double v2, v1

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Landroidx/dynamicanimation/animation/o;->x:Landroidx/dynamicanimation/animation/n;

    iget v4, p2, Landroidx/dynamicanimation/animation/n;->a:F

    mul-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float p1, v4

    iget-object v2, p2, Landroidx/dynamicanimation/animation/n;->c:Landroidx/dynamicanimation/animation/i;

    iput p1, v2, Landroidx/dynamicanimation/animation/i;->b:F

    sub-float v1, p1, v1

    iget v3, p2, Landroidx/dynamicanimation/animation/n;->a:F

    div-float/2addr v1, v3

    add-float/2addr v1, v0

    iput v1, v2, Landroidx/dynamicanimation/animation/i;->a:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p2, Landroidx/dynamicanimation/animation/n;->b:F

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, v2, Landroidx/dynamicanimation/animation/i;->b:F

    :cond_1
    iget p1, v2, Landroidx/dynamicanimation/animation/i;->a:F

    iput p1, p0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v2, v2, Landroidx/dynamicanimation/animation/i;->b:F

    iput v2, p0, Landroidx/dynamicanimation/animation/m;->a:F

    iget v3, p0, Landroidx/dynamicanimation/animation/m;->h:F

    cmpg-float v4, p1, v3

    if-gez v4, :cond_2

    iput v3, p0, Landroidx/dynamicanimation/animation/m;->b:F

    return v0

    :cond_2
    iget v3, p0, Landroidx/dynamicanimation/animation/m;->g:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_3

    iput v3, p0, Landroidx/dynamicanimation/animation/m;->b:F

    return v0

    :cond_3
    if-gez p1, :cond_6

    if-lez v4, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iget p1, p2, Landroidx/dynamicanimation/animation/n;->b:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    move p0, v0

    goto :goto_1

    :cond_4
    move p0, v1

    :goto_1
    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move p0, v1

    goto :goto_3

    :cond_6
    :goto_2
    move p0, v0

    :goto_3
    if-eqz p0, :cond_7

    return v0

    :cond_7
    return v1
.end method
