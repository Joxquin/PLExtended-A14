.class final Lcom/android/launcher3/LauncherAppState$IconObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/IconProvider$IconChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->k(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "themed_icons"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->j(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/icons/LauncherIconProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {p2}, Lcom/android/launcher3/LauncherAppState;->i(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/icons/LauncherIconProvider;->setIconThemeSupported(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState$IconObserver;->verifyIconChanged()V

    :cond_0
    return-void
.end method

.method public final onSystemIconStateChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->i(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->l(Lcom/android/launcher3/LauncherAppState;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->i(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->ICON_STATE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/ConstantItem;Ljava/lang/Object;)V

    return-void
.end method

.method public final verifyIconChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->j(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/icons/LauncherIconProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIconProvider;->getSystemIconState()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->i(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->ICON_STATE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppState$IconObserver;->onSystemIconStateChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
