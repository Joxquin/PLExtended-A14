.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/K2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/K2;->a:Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/K2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/K2;->a:Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/K2;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->k:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
