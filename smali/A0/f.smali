.class public final LA0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LA0/g;


# direct methods
.method public constructor <init>(LA0/g;)V
    .locals 0

    iput-object p1, p0, LA0/f;->d:LA0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LA0/f;->d:LA0/g;

    iget-object v0, v0, LA0/g;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "view_capture_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    sget-object v0, LA0/x;->g:LA0/a;

    new-instance v1, LA0/e;

    iget-object v3, p0, LA0/f;->d:LA0/g;

    invoke-direct {v1, v3, v2}, LA0/e;-><init>(LA0/g;Z)V

    invoke-virtual {v0, v1}, LA0/a;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, LA0/f;->d:LA0/g;

    iget-object v0, v0, LA0/g;->h:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    iget-object p0, p0, LA0/f;->d:LA0/g;

    iget-object p0, p0, LA0/g;->i:Lcom/android/app/viewcapture/SettingsAwareViewCapture$mDumpCallback$1;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps;->registerDumpCallback(Landroid/window/IDumpCallback;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, LA0/f;->d:LA0/g;

    iget-object p0, p0, LA0/g;->i:Lcom/android/app/viewcapture/SettingsAwareViewCapture$mDumpCallback$1;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps;->unRegisterDumpCallback(Landroid/window/IDumpCallback;)V

    :cond_2
    :goto_0
    return-void
.end method
