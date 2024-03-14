.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/f2;->a:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/f2;->b:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/f2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/f2;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/f2;->b:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/f2;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const-string v2, "bitmap_url"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    move-object p0, v0

    :goto_0
    return-object p0

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/f2;->b:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/f2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/i2;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->x:Lcom/google/android/apps/nexuslauncher/allapps/e2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/i2;->x()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    iget p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->s:I

    int-to-float p0, p0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr v0, p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p0, v3

    cmpg-float v3, p0, v0

    if-gez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, p0, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v2, v1, v0, v3, p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    :cond_1
    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, p0, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v0, v1, p0, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    :goto_2
    new-instance p0, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
