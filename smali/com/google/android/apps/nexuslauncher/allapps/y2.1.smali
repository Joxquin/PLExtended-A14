.class public final Lcom/google/android/apps/nexuslauncher/allapps/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/search/SearchSession$Callback;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/g3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y2;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y2;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/search/SearchSession$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/app/search/SearchSession$Callback;->onTargetsAvailable(Ljava/util/List;)V

    :cond_0
    return-void
.end method
