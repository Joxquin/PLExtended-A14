.class public Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;
.super Lcom/android/launcher3/ExtendedEditText;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/ExtendedEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/ExtendedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ExtendedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherEditText;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->keyboardStateManager()Lcom/android/launcher3/logging/KeyboardStateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->SHOW:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logging/KeyboardStateManager;->setKeyboardState(Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;)V

    :cond_1
    return-void
.end method
