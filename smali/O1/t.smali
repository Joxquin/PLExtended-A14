.class public final synthetic LO1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, LO1/t;->a:I

    iput-object p1, p0, LO1/t;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, LO1/t;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, LO1/t;->b:Landroid/view/ViewGroup;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->k:LO1/w;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->i:LO1/w;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->m:Ljava/util/function/Consumer;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->j:LO1/w;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->k:LO1/w;

    if-ne p1, p0, :cond_2

    invoke-static {p1, v2}, LO1/w;->a(LO1/w;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->k:LO1/w;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->j:LO1/w;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->a()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->m:Ljava/util/function/Consumer;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->j:LO1/w;

    invoke-static {p1, v1}, LO1/w;->a(LO1/w;I)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->i:LO1/w;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->j:LO1/w;

    invoke-static {p1, v2}, LO1/w;->a(LO1/w;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->k:LO1/w;

    :cond_2
    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, LO1/t;->b:Landroid/view/ViewGroup;

    check-cast p0, LO1/w;

    check-cast p1, Landroid/util/SparseIntArray;

    iput v2, p0, LO1/w;->m:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106003b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1060042

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v3, p0, LO1/w;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, LO1/w;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, LO1/w;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget p1, p0, LO1/w;->l:I

    const/4 v0, 0x1

    if-ne p1, v2, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    iget-object p1, p0, LO1/w;->j:Landroid/widget/ProgressBar;

    iget p0, p0, LO1/w;->l:I

    if-ne p0, v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
