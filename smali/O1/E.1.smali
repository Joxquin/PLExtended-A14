.class public final LO1/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Landroid/view/animation/Interpolator;


# instance fields
.field public final a:LO1/l;

.field public final b:LO1/j;

.field public final c:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

.field public d:Z

.field public e:LO1/D;

.field public f:Landroid/animation/Animator;

.field public g:Lcom/android/launcher3/icons/cache/HandlerRunnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, LO1/E;->h:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(LO1/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO1/E;->a:LO1/l;

    iget-object v0, p1, LO1/l;->m:LO1/j;

    iput-object v0, p0, LO1/E;->b:LO1/j;

    iget-object p1, p1, LO1/l;->k:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    iput-object p1, p0, LO1/E;->c:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    new-instance v0, LO1/x;

    invoke-direct {v0, p0}, LO1/x;-><init>(LO1/E;)V

    iput-object v0, p1, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->l:LO1/x;

    return-void
.end method
