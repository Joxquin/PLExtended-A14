.class public final Lj2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/animation/TimeInterpolator;

.field public static final b:LU/b;

.field public static final c:LU/a;

.field public static final d:LU/c;

.field public static final e:Landroid/animation/TimeInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lj2/a;->a:Landroid/animation/TimeInterpolator;

    new-instance v0, LU/b;

    invoke-direct {v0}, LU/b;-><init>()V

    sput-object v0, Lj2/a;->b:LU/b;

    new-instance v0, LU/a;

    invoke-direct {v0}, LU/a;-><init>()V

    sput-object v0, Lj2/a;->c:LU/a;

    new-instance v0, LU/c;

    invoke-direct {v0}, LU/c;-><init>()V

    sput-object v0, Lj2/a;->d:LU/c;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lj2/a;->e:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static a(FFFFF)F
    .locals 1

    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p4, p3

    if-lez v0, :cond_1

    return p1

    :cond_1
    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    invoke-static {p1, p0, p4, p0}, Lw/f;->a(FFFF)F

    move-result p0

    return p0
.end method
