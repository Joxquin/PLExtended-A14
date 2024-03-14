.class public final synthetic Lcom/android/quickstep/util/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/j;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/util/RectFSpringAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/RectFSpringAnim;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/util/F;->a:I

    iput-object p1, p0, Lcom/android/quickstep/util/F;->b:Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/m;ZFF)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/util/F;->a:I

    iget-object p0, p0, Lcom/android/quickstep/util/F;->b:Lcom/android/quickstep/util/RectFSpringAnim;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/RectFSpringAnim;->b(Lcom/android/quickstep/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/m;ZFF)V

    return-void

    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/RectFSpringAnim;->c(Lcom/android/quickstep/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/m;ZFF)V

    return-void

    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/RectFSpringAnim;->d(Lcom/android/quickstep/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/m;ZFF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
