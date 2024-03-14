.class public final Landroidx/dynamicanimation/animation/h;
.super Landroidx/dynamicanimation/animation/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Landroidx/dynamicanimation/animation/h;->a:I

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/l;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)F
    .locals 0

    iget p0, p0, Landroidx/dynamicanimation/animation/h;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p0

    return p0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    return p0

    :pswitch_5
    sget-object p0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/D;->f(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0

    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0

    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p0

    int-to-float p0, p0

    return p0

    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p0

    int-to-float p0, p0

    return p0

    :pswitch_a
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/D;->g(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_c
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p0

    return p0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/View;F)V
    .locals 0

    iget p0, p0, Landroidx/dynamicanimation/animation/h;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    return-void

    :pswitch_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    return-void

    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void

    :pswitch_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    :pswitch_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    return-void

    :pswitch_5
    sget-object p0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, p2}, Landroidx/core/view/D;->n(Landroid/view/View;F)V

    return-void

    :pswitch_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :pswitch_7
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :pswitch_8
    float-to-int p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setScrollY(I)V

    return-void

    :pswitch_9
    float-to-int p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setScrollX(I)V

    return-void

    :pswitch_a
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    :pswitch_b
    sget-object p0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, p2}, Landroidx/core/view/D;->o(Landroid/view/View;F)V

    return-void

    :pswitch_c
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    return-void

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 1

    iget v0, p0, Landroidx/dynamicanimation/animation/h;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :goto_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/h;->a(Landroid/view/View;)F

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Landroidx/dynamicanimation/animation/h;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_4
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_5
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_6
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_7
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_8
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_9
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_a
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_b
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_c
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :goto_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/h;->b(Landroid/view/View;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
