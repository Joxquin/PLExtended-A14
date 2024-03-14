.class public final synthetic LO1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

.field public final synthetic b:LO1/w;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;LO1/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO1/p;->a:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    iput-object p2, p0, LO1/p;->b:LO1/w;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LO1/p;->a:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    iget-object p0, p0, LO1/p;->b:LO1/w;

    check-cast p1, Landroid/graphics/Bitmap;

    sget v1, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->n:I

    if-nez p1, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LO1/w;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    sget-object p1, LO1/w;->o:LO1/v;

    const/4 v0, 0x0

    const/16 v1, 0xff

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    new-instance p1, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, LO1/s;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LO1/s;-><init>(Landroid/view/ViewGroup;I)V

    sget-object v4, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, LO1/t;

    invoke-direct {v5, p0, v3}, LO1/t;-><init>(Landroid/view/ViewGroup;I)V

    invoke-direct {p1, v1, v2, v4, v5}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    new-instance v1, LO1/q;

    invoke-direct {v1, v3, p1}, LO1/q;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, LO1/w;->n:LO1/q;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
