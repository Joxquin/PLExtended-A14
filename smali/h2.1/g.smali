.class public final Lh2/g;
.super Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final d:Landroid/os/Handler;

.field public e:Lh2/h;

.field public f:Landroid/view/WindowManager;

.field public g:I

.field public h:Landroid/view/Window;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh2/g;->i:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lh2/g;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lh2/h;)V
    .locals 2

    iput-object p1, p0, Lh2/g;->e:Lh2/h;

    iget-object v0, p1, Lh2/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lh2/g;->f:Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object p1, p1, Lh2/h;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lh2/g;->g:I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lh2/g;->h:Landroid/view/Window;

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget-object v0, p0, Lh2/g;->e:Lh2/h;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_8

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    return v4

    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "stateChanged"

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lh2/h;->e:Lh2/c;

    invoke-virtual {v0, v3, p1}, Lh2/c;->b(Ljava/lang/String;I)V

    iget-object p0, p0, Lh2/g;->e:Lh2/h;

    iget-object p1, p0, Lh2/h;->b:Lh2/i;

    instance-of v0, p1, Lh2/k;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lh2/k;

    const-string v3, "minus_one_thumbnail_image_960_540"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "minus_one_product_name"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0}, Lh2/k;->a()V

    :cond_2
    const-string v3, "overlay_animation_complete"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lh2/k;->j()V

    :cond_3
    const-string v3, "google_overlay_icon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    invoke-interface {v0}, Lh2/k;->i()V

    :cond_4
    const-string v3, "initiate_overlay_switch"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Lh2/k;->m()V

    :cond_5
    const-string v0, "service_status"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_6

    invoke-virtual {p0, v0}, Lh2/h;->c(I)V

    :cond_6
    instance-of p0, p1, Lh2/j;

    if-eqz p0, :cond_7

    check-cast p1, Lh2/j;

    invoke-interface {p1, v0}, Lh2/j;->b(I)V

    :cond_7
    return v1

    :cond_8
    iget-object v0, p0, Lh2/g;->h:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lh2/g;->g:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_9
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget-object p1, p0, Lh2/g;->f:Landroid/view/WindowManager;

    iget-object p0, p0, Lh2/g;->h:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_a
    iget v0, v0, Lh2/h;->l:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lh2/g;->e:Lh2/h;

    iget-object v0, v0, Lh2/h;->b:Lh2/i;

    invoke-interface {v0, p1}, Lh2/i;->onOverlayScrollChanged(F)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_b

    iget-object p0, p0, Lh2/g;->e:Lh2/h;

    iget-object p0, p0, Lh2/h;->e:Lh2/c;

    const-string p1, "onScroll 0, overlay closed"

    invoke-virtual {p0, p1}, Lh2/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_c

    iget-object p0, p0, Lh2/g;->e:Lh2/h;

    iget-object p0, p0, Lh2/h;->e:Lh2/c;

    const-string p1, "onScroll 1, overlay opened"

    invoke-virtual {p0, p1}, Lh2/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    iget-object p0, p0, Lh2/g;->e:Lh2/h;

    iget-object p0, p0, Lh2/h;->e:Lh2/c;

    const-string v0, "onScroll"

    invoke-virtual {p0, v0, v1, p1}, Lh2/c;->c(Ljava/lang/String;IF)V

    :cond_d
    :goto_1
    return v1
.end method
