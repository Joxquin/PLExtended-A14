.class public final synthetic Ly0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/animation/Interpolator;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/animation/Interpolator;FFI)V
    .locals 0

    iput p4, p0, Ly0/b;->a:I

    iput-object p1, p0, Ly0/b;->b:Landroid/view/animation/Interpolator;

    iput p2, p0, Ly0/b;->c:F

    iput p3, p0, Ly0/b;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget v0, p0, Ly0/b;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ly0/b;->b:Landroid/view/animation/Interpolator;

    iget v1, p0, Ly0/b;->c:F

    iget p0, p0, Ly0/b;->d:F

    invoke-static {v0, p1, v1, p0}, Ly0/e;->a(Landroid/view/animation/Interpolator;FFF)F

    move-result p0

    return p0

    :goto_0
    iget-object v0, p0, Ly0/b;->b:Landroid/view/animation/Interpolator;

    iget v1, p0, Ly0/b;->c:F

    iget p0, p0, Ly0/b;->d:F

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {p0, v1, p1, v1}, Lw/f;->a(FFFF)F

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
