.class public final Lcom/google/android/apps/nexuslauncher/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;
.implements Lh2/j;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lq1/d;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# static fields
.field public static final k:Lcom/google/android/apps/nexuslauncher/i;

.field public static final l:Lcom/google/android/apps/nexuslauncher/i;


# instance fields
.field public final d:Lcom/android/launcher3/Launcher;

.field public final e:Lq1/a;

.field public final f:Lh2/h;

.field public final g:Landroid/os/Bundle;

.field public h:Lq1/c;

.field public i:Z

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/i;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/i;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/j;->k:Lcom/google/android/apps/nexuslauncher/i;

    sput-object v0, Lcom/google/android/apps/nexuslauncher/j;->l:Lcom/google/android/apps/nexuslauncher/i;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lq1/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/j;->g:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/j;->i:Z

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/j;->d:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/j;->e:Lq1/a;

    check-cast p2, Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    new-instance v2, Lh2/h;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/j;->l:Lcom/google/android/apps/nexuslauncher/i;

    invoke-virtual {v3, p2}, Lcom/google/android/apps/nexuslauncher/i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh2/f;

    sget-object v3, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p1, p0, p2, v3}, Lh2/h;-><init>(Landroid/app/Activity;Lh2/i;Lh2/f;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/util/SystemUiController;->getBaseSysuiVisibility()I

    move-result p2

    const-string v3, "system_ui_visibility"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const p2, 0x7f04004b

    invoke-static {p2, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p2

    const-string v3, "background_color_hint"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "background_secondary_color_hint"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const p2, 0x7f0402c3

    invoke-static {p2, p1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(ILandroid/content/Context;)Z

    move-result p2

    const-string v3, "is_background_dark"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {p1, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget-boolean p2, p1, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/j;->j:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const-string p0, "override_bottom_inset"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Lh2/h;->f(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->d:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    and-int/lit8 p1, p1, 0x18

    const-string v0, "pref_persistent_flags"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final c(F)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-object v0, p0, Lh2/h;->d:Lh2/c;

    const-string v1, "updateMove"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lh2/c;->c(Ljava/lang/String;IF)V

    iget-object p0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onScroll(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final d(Lcom/android/launcher3/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/j;->h:Lq1/c;

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isConnected: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lh2/h;->f:Lh2/m;

    iget-boolean v0, v0, Lh2/m;->i:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "act.isBound: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lh2/h;->g:Lh2/a;

    iget-boolean v0, v0, Lh2/m;->i:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "app.isBound: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget v0, Lh2/h;->q:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "serviceVersion: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "clientVersion: 20"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lh2/h;->m:Lh2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isGoogleOverlayDefault: false"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lh2/h;->m:Lh2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "partnerOverlayProductName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lh2/h;->m:Lh2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isPartnerOverlayIconPresent: false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lh2/h;->j:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivityState: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lh2/h;->l:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mServiceStatus: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lh2/h;->m:Lh2/f;

    iget v0, v0, Lh2/f;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentServiceConnectionOptions: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lh2/h;->d:Lh2/c;

    invoke-virtual {v0, p1, p2}, Lh2/c;->d(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lh2/h;->e:Lh2/c;

    invoke-virtual {p0, p1, p2}, Lh2/c;->d(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final e()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-object v0, p0, Lh2/h;->d:Lh2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "showOverlay"

    invoke-virtual {v0, v3, v1, v2}, Lh2/c;->c(Ljava/lang/String;IF)V

    iget-object p0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-object v0, p0, Lh2/h;->d:Lh2/c;

    const-string v1, "startMove"

    invoke-virtual {v0, v1}, Lh2/c;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final g(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/j;->i:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/j;->i:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/j;->e:Lq1/a;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->setLauncherOverlay(Lq1/b;)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-object v0, p0, Lh2/h;->d:Lh2/c;

    const-string v1, "reattachOverlay"

    invoke-virtual {v0, v1}, Lh2/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    sget v0, Lh2/h;->q:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lh2/h;->a()V

    :cond_0
    return-void
.end method

.method public final k(Z)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-object v0, p0, Lh2/h;->d:Lh2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const/4 v2, 0x0

    const-string v3, "hideOverlay"

    invoke-virtual {v0, v3, v1, v2}, Lh2/c;->c(Ljava/lang/String;IF)V

    iget-object p0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final l()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-object v0, p0, Lh2/h;->d:Lh2/c;

    const-string v1, "endMove"

    invoke-virtual {v0, v1}, Lh2/c;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->endScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final n(I)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez p1, :cond_1

    const/16 v0, 0x7ff

    if-gt p1, v0, :cond_1

    shl-int/lit8 v0, p1, 0x2

    or-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lh2/h;->d:Lh2/c;

    const-string v2, "hideOverlay"

    invoke-virtual {v1, v2, p1}, Lh2/c;->b(Ljava/lang/String;I)V

    iget-object p0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid duration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/j;->d:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, p0}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-object v0, p1, Lh2/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-boolean v3, p1, Lh2/h;->k:Z

    if-nez v3, :cond_0

    iget-object v3, p1, Lh2/h;->h:Lh2/d;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iput-boolean v2, p1, Lh2/h;->k:Z

    iget-object v0, p1, Lh2/h;->f:Lh2/m;

    invoke-virtual {v0}, Lh2/m;->b()V

    iget-object v0, p1, Lh2/h;->p:Lh2/g;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-object v2, v0, Lh2/g;->e:Lh2/h;

    iput-object v2, v0, Lh2/g;->f:Landroid/view/WindowManager;

    iput-object v2, v0, Lh2/g;->h:Landroid/view/Window;

    iput-object v2, p1, Lh2/h;->p:Lh2/g;

    :cond_1
    iget-object v0, p1, Lh2/h;->g:Lh2/a;

    iget-object v3, v0, Lh2/a;->k:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh2/h;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v2, v0, Lh2/a;->k:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lh2/m;->b()V

    sget-object p1, Lh2/a;->m:Lh2/a;

    if-ne p1, v0, :cond_3

    sput-object v2, Lh2/a;->m:Lh2/a;

    :cond_3
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/j;->e:Lq1/a;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-boolean p1, p0, Lh2/h;->k:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lh2/h;->j:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lh2/h;->j:I

    iget-object v0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    :try_start_0
    sget v1, Lh2/h;->q:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    iget p1, p0, Lh2/h;->j:I

    iget-object p0, p0, Lh2/h;->d:Lh2/c;

    const-string v0, "stateChanged "

    invoke-virtual {p0, v0, p1}, Lh2/c;->b(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-boolean p1, p0, Lh2/h;->k:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lh2/h;->j:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lh2/h;->j:I

    iget-object v0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    :try_start_0
    sget v1, Lh2/h;->q:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    iget p1, p0, Lh2/h;->j:I

    iget-object p0, p0, Lh2/h;->d:Lh2/c;

    const-string v0, "stateChanged "

    invoke-virtual {p0, v0, p1}, Lh2/c;->b(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-boolean p1, p0, Lh2/h;->k:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh2/h;->g:Lh2/a;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lh2/a;->l:Z

    invoke-virtual {p0}, Lh2/h;->d()V

    iget p1, p0, Lh2/h;->j:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lh2/h;->j:I

    iget-object v0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget p1, p0, Lh2/h;->j:I

    iget-object p0, p0, Lh2/h;->d:Lh2/c;

    const-string v0, "stateChanged "

    invoke-virtual {p0, v0, p1}, Lh2/c;->b(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-boolean p1, p0, Lh2/h;->k:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh2/h;->g:Lh2/a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lh2/a;->l:Z

    iget-object v0, p1, Lh2/a;->j:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lh2/m;->b()V

    :cond_1
    iget-object p1, p0, Lh2/h;->f:Lh2/m;

    invoke-virtual {p1}, Lh2/m;->b()V

    iget p1, p0, Lh2/h;->j:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lh2/h;->j:I

    iget-object v0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iget p1, p0, Lh2/h;->j:I

    iget-object p0, p0, Lh2/h;->d:Lh2/c;

    const-string v0, "stateChanged "

    invoke-virtual {p0, v0, p1}, Lh2/c;->b(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-boolean v0, p0, Lh2/h;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh2/h;->d:Lh2/c;

    const-string v1, "attachedToWindow"

    invoke-virtual {v0, v1}, Lh2/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh2/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh2/h;->g(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-boolean v0, p0, Lh2/h;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh2/h;->d:Lh2/c;

    const-string v1, "detachedFromWindow"

    invoke-virtual {v0, v1}, Lh2/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh2/h;->g(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/j;->j:Z

    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v4, p1, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eq v0, v4, :cond_3

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/j;->j:Z

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/j;->g:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    const-string v0, "override_bottom_inset"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->g:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Lh2/h;->f(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public final onOverlayScrollChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->h:Lq1/c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lq1/c;->onOverlayScrollChanged(F)V

    :cond_0
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_enable_minus_one"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    sget-object p2, Lcom/google/android/apps/nexuslauncher/j;->l:Lcom/google/android/apps/nexuslauncher/i;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/nexuslauncher/i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh2/f;

    iget-object p2, p0, Lh2/h;->m:Lh2/f;

    iget p2, p2, Lh2/f;->a:I

    iget v0, p1, Lh2/f;->a:I

    if-eq p2, v0, :cond_1

    iput-object p1, p0, Lh2/h;->m:Lh2/f;

    iget-object p1, p0, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lh2/h;->a()V

    :cond_0
    iget-object p1, p0, Lh2/h;->m:Lh2/f;

    iget p1, p1, Lh2/f;->a:I

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x1c

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "setClientOptions "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lh2/h;->d:Lh2/c;

    invoke-virtual {p0, p1}, Lh2/c;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final startSearch([BLandroid/os/Bundle;)Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/j;->f:Lh2/h;

    iget-object v0, p0, Lh2/h;->d:Lh2/c;

    const-string v1, "startSearch"

    invoke-virtual {v0, v1}, Lh2/c;->a(Ljava/lang/String;)V

    sget v0, Lh2/h;->q:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startSearch([BLandroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "DrawerOverlayClient"

    const-string p2, "Error starting session for search"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
