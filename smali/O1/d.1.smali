.class public final synthetic LO1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:LO1/l;


# direct methods
.method public synthetic constructor <init>(LO1/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO1/d;->a:LO1/l;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, LO1/d;->a:LO1/l;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LO1/l;->m:LO1/j;

    iget-object v0, p0, LO1/l;->p:LO1/e;

    iget-object p0, p0, LO1/l;->k:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->i:LO1/w;

    iget-object p0, p0, LO1/w;->i:LO1/m;

    iget-object p0, p0, LO1/m;->g:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    const/16 p0, 0x4e2

    goto :goto_0

    :cond_0
    const/16 p0, 0x2ee

    :goto_0
    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x80

    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    const p1, 0x7f1301f4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object p0, p0, LO1/l;->o:LO1/E;

    iget-boolean p1, p0, LO1/E;->d:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, LO1/E;->d:Z

    iget-object p1, p0, LO1/E;->e:LO1/D;

    if-eqz p1, :cond_3

    iget-object v0, p0, LO1/E;->b:LO1/j;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, LO1/E;->e:LO1/D;

    :cond_3
    :goto_1
    return-void
.end method
