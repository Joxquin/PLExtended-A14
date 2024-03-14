.class public abstract Le/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Le/K;

.field public static final e:I

.field public static f:Ljava/lang/Boolean;

.field public static g:Z

.field public static final h:Lq/h;

.field public static final i:Ljava/lang/Object;

.field public static final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/K;

    new-instance v1, Le/L;

    invoke-direct {v1}, Le/L;-><init>()V

    invoke-direct {v0, v1}, Le/K;-><init>(Le/L;)V

    sput-object v0, Le/r;->d:Le/K;

    const/16 v0, -0x64

    sput v0, Le/r;->e:I

    const/4 v0, 0x0

    sput-object v0, Le/r;->f:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Le/r;->g:Z

    new-instance v1, Lq/h;

    invoke-direct {v1, v0}, Lq/h;-><init>(I)V

    sput-object v1, Le/r;->h:Lq/h;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/r;->i:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/r;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Le/r;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    sget v0, Le/I;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Le/I;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p0, 0x280

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "autoStoreLocales"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Le/r;->f:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppCompatDelegate"

    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Le/r;->f:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object p0, Le/r;->f:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static r(Le/r;)V
    .locals 3

    sget-object v0, Le/r;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/r;->h:Lq/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lq/g;

    invoke-direct {v2, v1}, Lq/g;-><init>(Lq/h;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lq/i;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lq/i;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/r;

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {v2}, Lq/i;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public d(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p1
.end method

.method public abstract e(I)Landroid/view/View;
.end method

.method public f()Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public g()I
    .locals 0

    const/16 p0, -0x64

    return p0
.end method

.method public abstract h()Landroid/view/MenuInflater;
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

.method public abstract l()V
.end method

.method public abstract m()V
.end method

.method public abstract n()V
.end method

.method public abstract o()V
.end method

.method public abstract p()V
.end method

.method public abstract q()V
.end method

.method public abstract s(I)Z
.end method

.method public abstract t(I)V
.end method

.method public abstract u(Landroid/view/View;)V
.end method

.method public abstract v(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public w(I)V
    .locals 0

    return-void
.end method

.method public abstract x(Ljava/lang/CharSequence;)V
.end method
