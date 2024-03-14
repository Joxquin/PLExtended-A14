.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/r;->d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r;->d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    sget-object p1, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->s:[I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/x1;->b(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method
