.class public final Lcom/android/wm/shell/common/magnetictarget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/wm/shell/common/magnetictarget/c;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/magnetictarget/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/b;->d:Lcom/android/wm/shell/common/magnetictarget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/common/magnetictarget/b;->d:Lcom/android/wm/shell/common/magnetictarget/c;

    iget-object v1, v0, Lcom/android/wm/shell/common/magnetictarget/c;->a:Landroid/view/View;

    iget-object v0, v0, Lcom/android/wm/shell/common/magnetictarget/c;->d:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/magnetictarget/b;->d:Lcom/android/wm/shell/common/magnetictarget/c;

    iget-object v1, v0, Lcom/android/wm/shell/common/magnetictarget/c;->c:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/c;->d:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v0, v0, Lcom/android/wm/shell/common/magnetictarget/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/wm/shell/common/magnetictarget/b;->d:Lcom/android/wm/shell/common/magnetictarget/c;

    iget-object v2, v2, Lcom/android/wm/shell/common/magnetictarget/c;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/wm/shell/common/magnetictarget/b;->d:Lcom/android/wm/shell/common/magnetictarget/c;

    iget-object v4, v2, Lcom/android/wm/shell/common/magnetictarget/c;->d:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    iget-object v2, v2, Lcom/android/wm/shell/common/magnetictarget/c;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/b;->d:Lcom/android/wm/shell/common/magnetictarget/c;

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/c;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    sub-float/2addr v2, p0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
