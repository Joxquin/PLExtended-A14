.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/LauncherState;

.field public final synthetic b:Lcom/android/launcher3/ExtendedEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/ExtendedEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/I;->a:Lcom/android/launcher3/LauncherState;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/I;->b:Lcom/android/launcher3/ExtendedEditText;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/I;->a:Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/I;->b:Lcom/android/launcher3/ExtendedEditText;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/J;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/J;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
