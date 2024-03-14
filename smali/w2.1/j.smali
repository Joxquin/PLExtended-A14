.class public final Lw2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:Landroid/graphics/Matrix;

.field public final synthetic d:Lw2/p;


# direct methods
.method public constructor <init>(Lw2/p;)V
    .locals 1

    iput-object p1, p0, Lw2/j;->d:Lw2/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9

    new-array v0, p1, [F

    iput-object v0, p0, Lw2/j;->a:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lw2/j;->b:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lw2/j;->c:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    iget-object v0, p0, Lw2/j;->d:Lw2/p;

    iput p1, v0, Lw2/p;->g:F

    iget-object v0, p0, Lw2/j;->a:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Lw2/j;->b:[F

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0x9

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lw2/j;->b:[F

    aget v0, p3, p2

    iget-object v1, p0, Lw2/j;->a:[F

    aget v1, v1, p2

    invoke-static {v0, v1, p1, v1}, Lw/f;->a(FFFF)F

    move-result v0

    aput v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw2/j;->c:Landroid/graphics/Matrix;

    iget-object p2, p0, Lw2/j;->b:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object p0, p0, Lw2/j;->c:Landroid/graphics/Matrix;

    return-object p0
.end method
