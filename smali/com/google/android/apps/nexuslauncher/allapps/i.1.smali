.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/k;

.field public final synthetic e:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

.field public final synthetic f:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/k;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/i;->d:Lcom/google/android/apps/nexuslauncher/allapps/k;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/i;->e:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/i;->f:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/i;->d:Lcom/google/android/apps/nexuslauncher/allapps/k;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/i;->e:Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/i;->f:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    invoke-static {p1, v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/k;->b(Lcom/google/android/apps/nexuslauncher/allapps/k;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V

    return-void
.end method
