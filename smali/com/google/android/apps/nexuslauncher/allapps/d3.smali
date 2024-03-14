.class public final Lcom/google/android/apps/nexuslauncher/allapps/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsTransitionListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d3;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAllAppsTransitionEnd(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d3;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->H:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->H:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->updateState()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->p()V

    return-void
.end method

.method public final onAllAppsTransitionStart(Z)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d3;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->H:Z

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->mState:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->H:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-boolean v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->H:Z

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->updateState()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->p()V

    return-void
.end method
