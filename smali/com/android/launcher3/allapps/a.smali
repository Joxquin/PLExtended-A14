.class public final synthetic Lcom/android/launcher3/allapps/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/DeviceProfile;


# direct methods
.method public synthetic constructor <init>(ILcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/allapps/a;->a:I

    iput-object p2, p0, Lcom/android/launcher3/allapps/a;->b:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/a;->a:I

    iget-object p0, p0, Lcom/android/launcher3/allapps/a;->b:Lcom/android/launcher3/DeviceProfile;

    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v1, p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    iput p0, v1, Landroid/graphics/Rect;->right:I

    iput p0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->applyPadding()V

    return-void
.end method
