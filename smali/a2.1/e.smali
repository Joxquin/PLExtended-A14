.class public final synthetic La2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/e;->a:Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, La2/e;->a:Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;

    check-cast p1, Landroid/content/Intent;

    sget p1, Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;->g:I

    invoke-virtual {p0}, Landroidx/fragment/app/K;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;->f:Z

    :cond_1
    :goto_0
    return-void
.end method
