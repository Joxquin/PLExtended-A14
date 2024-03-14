.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/c2;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/c2;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->x:Lcom/google/android/apps/nexuslauncher/allapps/e2;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/i2;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/i2;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/i2;->x()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
