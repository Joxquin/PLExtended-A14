.class public final synthetic Lcom/android/systemui/shared/navigationbar/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

.field public final synthetic e:Landroid/view/SurfaceControl;

.field public final synthetic f:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/c;->d:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iput-object p2, p0, Lcom/android/systemui/shared/navigationbar/c;->e:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/systemui/shared/navigationbar/c;->f:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/c;->d:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/c;->e:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/c;->f:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->a(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    return-void
.end method
