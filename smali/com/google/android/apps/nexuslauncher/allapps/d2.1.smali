.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/d2;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d2;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d2;->d:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d2;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->e:LX1/f;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LX1/f;->startShareActivity(Landroid/graphics/Rect;)V

    return v1

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d2;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->r(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Landroid/view/View;)V

    return v1

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d2;->e:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->r(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;Landroid/view/View;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
