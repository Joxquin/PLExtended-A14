.class public final LO1/u;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;)V
    .locals 0

    iput-object p1, p0, LO1/u;->a:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, LO1/u;->a:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    iget v5, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->f:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
