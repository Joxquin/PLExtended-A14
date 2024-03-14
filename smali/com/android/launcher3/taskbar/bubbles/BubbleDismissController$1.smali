.class final Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController$1;
.super Lcom/android/wm/shell/common/magnetictarget/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroidx/dynamicanimation/animation/h;Landroidx/dynamicanimation/animation/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/common/magnetictarget/d;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroidx/dynamicanimation/animation/h;Landroidx/dynamicanimation/animation/h;)V

    return-void
.end method


# virtual methods
.method public final getHeight(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    mul-float/2addr p1, p0

    return p1
.end method

.method public final getLocationOnScreen(Ljava/lang/Object;[I)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    return-void
.end method

.method public final getWidth(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    mul-float/2addr p1, p0

    return p1
.end method
