.class public final LC2/l;
.super LC2/d;
.source "SourceFile"


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LC2/d;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, LC2/l;->a:F

    return-void
.end method


# virtual methods
.method public final a(FFLC2/x;)V
    .locals 9

    mul-float p0, p2, p1

    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, p0, v0, v1}, LC2/x;->e(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p2, p0

    mul-float v6, p2, p1

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v8, 0x42b40000    # 90.0f

    move-object v2, p3

    move v5, v6

    invoke-virtual/range {v2 .. v8}, LC2/x;->a(FFFFFF)V

    return-void
.end method
