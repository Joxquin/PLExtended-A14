.class public final Lcom/google/android/apps/nexuslauncher/r;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/u;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/r;->a:Lcom/google/android/apps/nexuslauncher/u;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/r;->a:Lcom/google/android/apps/nexuslauncher/u;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/u;->d(I)V

    return-void
.end method
