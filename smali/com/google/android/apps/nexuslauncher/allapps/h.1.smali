.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/k;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/h;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/h;->e:Lcom/google/android/apps/nexuslauncher/allapps/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/h;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/h;->e:Lcom/google/android/apps/nexuslauncher/allapps/k;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->a:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/h;->e:Lcom/google/android/apps/nexuslauncher/allapps/k;

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/k;->c(Lcom/google/android/apps/nexuslauncher/allapps/k;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
