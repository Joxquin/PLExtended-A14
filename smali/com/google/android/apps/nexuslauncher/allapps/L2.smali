.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/L2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/u0;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/L2;->a:Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/L2;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/icons/BitmapInfo;)V
    .locals 3

    sget v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->m:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/L2;->a:Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->h:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->h:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->h:Landroid/widget/ImageView;

    const-string v0, "tall_card_image_description"

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/L2;->b:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
