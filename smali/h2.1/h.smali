.class public final Lh2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static q:I = -0x1


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lh2/i;

.field public final c:Landroid/os/Handler;

.field public final d:Lh2/c;

.field public final e:Lh2/c;

.field public final f:Lh2/m;

.field public final g:Lh2/a;

.field public final h:Lh2/d;

.field public i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field public j:I

.field public k:Z

.field public l:I

.field public m:Lh2/f;

.field public n:Landroid/os/Bundle;

.field public o:Landroid/view/WindowManager$LayoutParams;

.field public p:Lh2/g;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lh2/i;Lh2/f;Landroid/os/Looper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh2/c;

    const-string v1, "Client"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lh2/c;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lh2/h;->d:Lh2/c;

    new-instance v1, Lh2/c;

    const-string v2, "Service"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lh2/c;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lh2/h;->e:Lh2/c;

    new-instance v1, Lh2/d;

    invoke-direct {v1, p0}, Lh2/d;-><init>(Lh2/h;)V

    iput-object v1, p0, Lh2/h;->h:Lh2/d;

    const/4 v2, 0x0

    iput v2, p0, Lh2/h;->j:I

    iput-boolean v2, p0, Lh2/h;->k:Z

    iput v2, p0, Lh2/h;->l:I

    iput-object p1, p0, Lh2/h;->a:Landroid/app/Activity;

    iput-object p2, p0, Lh2/h;->b:Lh2/i;

    iput-object p3, p0, Lh2/h;->m:Lh2/f;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lh2/h;->c:Landroid/os/Handler;

    new-instance p3, Lh2/m;

    iget-object p4, p0, Lh2/h;->m:Lh2/f;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p4, 0x41

    invoke-direct {p3, p1, p4, p2}, Lh2/m;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object p3, p0, Lh2/h;->f:Lh2/m;

    iget-object p3, p0, Lh2/h;->m:Lh2/f;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lh2/a;->m:Lh2/a;

    const-string p4, "com.google.android.googlequicksearchbox"

    if-eqz p3, :cond_0

    iget-object v3, p3, Lh2/m;->h:Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lh2/m;->b()V

    const/4 p3, 0x0

    sput-object p3, Lh2/a;->m:Lh2/a;

    :cond_0
    sget-object p3, Lh2/a;->m:Lh2/a;

    if-nez p3, :cond_1

    new-instance p3, Lh2/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p3, v3, p2}, Lh2/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object p3, Lh2/a;->m:Lh2/a;

    :cond_1
    sget-object p2, Lh2/a;->m:Lh2/a;

    iput-object p2, p0, Lh2/h;->g:Lh2/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p2, Lh2/a;->k:Ljava/lang/ref/WeakReference;

    iget-object p2, p2, Lh2/a;->j:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iput-object p2, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "package"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p3, p0, Lh2/h;->m:Lh2/f;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p4, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget p2, Lh2/h;->q:I

    const/4 p3, 0x1

    if-ge p2, p3, :cond_2

    invoke-virtual {p0, p1}, Lh2/h;->e(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p0}, Lh2/h;->d()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lh2/h;->k:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "attachedToWindow"

    invoke-virtual {v0, p2}, Lh2/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh2/h;->g(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "app://"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cv"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.WINDOW_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lh2/h;->p:Lh2/g;

    if-nez v0, :cond_0

    new-instance v0, Lh2/g;

    invoke-direct {v0}, Lh2/g;-><init>()V

    iput-object v0, p0, Lh2/h;->p:Lh2/g;

    :cond_0
    iget-object v0, p0, Lh2/h;->p:Lh2/g;

    invoke-virtual {v0, p0}, Lh2/g;->a(Lh2/h;)V

    sget v0, Lh2/h;->q:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lh2/h;->p:Lh2/g;

    iget-object v3, p0, Lh2/h;->m:Lh2/f;

    iget v3, v3, Lh2/f;->a:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lh2/g;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "layout_params"

    iget-object v2, p0, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "configuration"

    iget-object v2, p0, Lh2/h;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "client_options"

    iget-object v2, p0, Lh2/h;->m:Lh2/f;

    iget v2, v2, Lh2/f;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lh2/h;->m:Lh2/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lh2/h;->n:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    iget-object v1, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v2, p0, Lh2/h;->p:Lh2/g;

    invoke-interface {v1, v0, v2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached2(Landroid/os/Bundle;Lh2/g;)V

    :goto_0
    sget v0, Lh2/h;->q:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    iget v0, p0, Lh2/h;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object p0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget p0, p0, Lh2/h;->j:I

    invoke-interface {v0, p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method public final c(I)V
    .locals 6

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lh2/h;->l:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-ne v0, v4, :cond_4

    if-eq v5, v1, :cond_5

    :cond_4
    iget-object v1, p0, Lh2/h;->b:Lh2/i;

    invoke-interface {v1, v0}, Lh2/i;->g(Z)V

    :cond_5
    iput p1, p0, Lh2/h;->l:I

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lh2/h;->m:Lh2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lh2/h;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lh2/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lh2/e;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lh2/h;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lh2/e;->run()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lh2/h;->m:Lh2/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "com.google.android.googlequicksearchbox"

    invoke-static {p1, p0}, Lh2/h;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/16 p1, 0x80

    invoke-virtual {v0, p0, p1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "service.api.version"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lh2/h;->q:I

    goto :goto_1

    :cond_1
    :goto_0
    sput p1, Lh2/h;->q:I

    :goto_1
    return-void
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "setPrivateOptions : "

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lh2/h;->d:Lh2/c;

    invoke-virtual {v1, v0}, Lh2/c;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lh2/h;->n:Landroid/os/Bundle;

    iget-object p1, p0, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    sget p1, Lh2/h;->q:I

    const/4 v0, 0x7

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lh2/h;->a()V

    :cond_2
    return-void
.end method

.method public final g(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lh2/h;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lh2/h;->a()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lh2/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowDetached(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lh2/h;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    :cond_2
    :goto_0
    return-void
.end method
