.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/u0;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/allapps/i2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Lcom/google/android/apps/nexuslauncher/allapps/h2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g2;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g2;->b:Lcom/google/android/apps/nexuslauncher/allapps/i2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/icons/BitmapInfo;)V
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->x:Lcom/google/android/apps/nexuslauncher/allapps/e2;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g2;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g2;->b:Lcom/google/android/apps/nexuslauncher/allapps/i2;

    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->u(Lcom/google/android/apps/nexuslauncher/allapps/i2;)V

    iget-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->r:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
