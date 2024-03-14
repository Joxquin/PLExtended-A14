.class public final Lcom/google/android/apps/nexuslauncher/allapps/a;
.super Landroidx/recyclerview/widget/q0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/d;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->a:Lcom/google/android/apps/nexuslauncher/allapps/d;

    invoke-direct {p0}, Landroidx/recyclerview/widget/q0;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->a:Lcom/google/android/apps/nexuslauncher/allapps/d;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/allapps/d;->b(Lcom/google/android/apps/nexuslauncher/allapps/d;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object p2

    if-eqz p2, :cond_3

    if-lez p3, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/ExtendedEditText;->saveFocusedStateAndUpdateToUnfocusedState()V

    invoke-virtual {p2}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    :cond_0
    if-gez p3, :cond_3

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->m:Z

    if-nez p0, :cond_1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard(Z)V

    :cond_2
    invoke-virtual {p2}, Lcom/android/launcher3/ExtendedEditText;->restoreToFocusedState()V

    :cond_3
    return-void
.end method
