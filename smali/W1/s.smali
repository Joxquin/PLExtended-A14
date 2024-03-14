.class public final synthetic LW1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;I)V
    .locals 0

    iput p2, p0, LW1/s;->d:I

    iput-object p1, p0, LW1/s;->e:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, LW1/s;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LW1/s;->e:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    sget v0, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->q:I

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->i(Landroid/view/View;)V

    return-void

    :goto_0
    iget-object p0, p0, LW1/s;->e:Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;

    sget p1, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->q:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SearchDelegateView;->g()Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->f:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-static {p0, p1}, LW1/n;->a(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;)V

    invoke-static {p0}, LW1/m;->a(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
