.class public final synthetic LV1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

.field public final synthetic e:Landroid/widget/Button;

.field public final synthetic f:Lcom/android/launcher3/icons/FastBitmapDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;Landroid/widget/Button;Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV1/p;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    iput-object p2, p0, LV1/p;->e:Landroid/widget/Button;

    iput-object p3, p0, LV1/p;->f:Lcom/android/launcher3/icons/FastBitmapDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LV1/p;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    iget-object v1, p0, LV1/p;->e:Landroid/widget/Button;

    iget-object p0, p0, LV1/p;->f:Lcom/android/launcher3/icons/FastBitmapDrawable;

    sget v2, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->k:I

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->h:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0, v0, v0}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
