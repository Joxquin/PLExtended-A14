.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/v;->d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/v;->e:Z

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/v;->d:Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/v;->e:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->hideKeyboard()V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard(Z)V

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->a()V

    :goto_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    xor-int/2addr p0, v0

    const-string v1, "pref_search_show_keyboard"

    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method
