.class public final LO1/B;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:LO1/E;


# direct methods
.method public constructor <init>(LO1/E;)V
    .locals 0

    iput-object p1, p0, LO1/B;->d:LO1/E;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, LO1/B;->d:LO1/E;

    iget-object v0, p1, LO1/E;->b:LO1/j;

    iget-object p1, p1, LO1/E;->e:LO1/D;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, LO1/B;->d:LO1/E;

    const/4 p1, 0x0

    iput-object p1, p0, LO1/E;->e:LO1/D;

    iput-object p1, p0, LO1/E;->f:Landroid/animation/Animator;

    iget-object p0, p0, LO1/E;->c:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->k:LO1/w;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->j:LO1/w;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->a()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->k:LO1/w;

    const/4 p0, 0x2

    invoke-static {v1, p0}, LO1/w;->a(LO1/w;I)V

    :goto_0
    return-void
.end method
