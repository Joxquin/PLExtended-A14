.class public final Ly0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ly0/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget p0, p0, Ly0/d;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sub-float/2addr p1, v0

    mul-float p0, p1, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    return p0

    :pswitch_1
    const p0, 0x3eb33333    # 0.35f

    add-float/2addr p1, p0

    div-float/2addr p0, p1

    sub-float/2addr v0, p0

    const p0, 0x3f3da130

    div-float/2addr v0, p0

    return v0

    :pswitch_2
    sget-object p0, Ly0/e;->E:Landroid/view/animation/Interpolator;

    sget-object v1, Ly0/e;->H:Ly0/d;

    sub-float p1, v0, p1

    invoke-virtual {v1, p1}, Ly0/d;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v0, p1

    check-cast p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :goto_0
    sub-float/2addr p1, v0

    mul-float p0, p1, p1

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
